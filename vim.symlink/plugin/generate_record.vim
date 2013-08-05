" vim: ft=vim.python expandtab shiftwidth=4 softtabstop=4 tabstop=4

" Usage sample: write, once per line, record name, variable name to use
" in set methods, field name and field type. Source and call the
" GenerateRecord function. Please note that error handling is not
" implemented, is up to you to write the input correctly.
" umg_pistola
" NomeVariabile
" id
" string
" id_cammello
" string


function! GenerateRecord()
python << EOF
import vim

def flatten(l):
    return flatten_1(l, [])

def flatten_1(l, acc):
    for element in l:
        if type(element) == type([]):
            acc + (flatten_1(element, acc))
        else:
            acc.append(element)
    return acc

def get_function_header(name):
    return ["%%", "%% " + name, "%%"]

def create_set(recordName, varName, fieldName, fieldType):
    function = []
    function.append(create_set_spec(recordName, fieldName, fieldType))
    function.append(create_set_fun(recordName, varName, fieldName))

    return function

def create_set_spec(recordName, fieldName, fieldType):
    return ("-spec set_%s" % fieldName) + create_spec(recordName, fieldType)

def create_spec(recordName, fieldType):
    return "(#%s{}, %s()) -> #%s{}." % (recordName, fieldType, recordName)

def create_set_fun(recordName, varName, fieldName):
    camelizedField = underscore_to_camelcase(fieldName)
    s = []
    s.append("")
    s.append("set_%s(%s, %s) ->" % (fieldName, varName, camelizedField))
    # assuming 4 spaces to indent...
    body = "    %s#%s{%s = %s}." % (varName, recordName, fieldName, camelizedField)
    s.append(body)

    return s

def create_get(recordName, fieldName, fieldType):
    function = []
    function.append(create_get_spec(recordName, fieldName, fieldType))
    function.append(create_get_fun(recordName, fieldName))

    return function

def create_get_spec(recordName, fieldName, fieldType):
    return ("-spec get_%s" % fieldName) + create_get_spec_1(recordName, fieldType)

def create_get_spec_1(recordName, fieldType):
    return "(#%s{}) -> %s()." % (recordName, fieldType)

def create_get_fun(recordName, fieldName):
    camelizedField = underscore_to_camelcase(fieldName)
    s = []
    s.append("")
    s.append("get_%s(#%s{%s = %s}) ->" % (fieldName, recordName, fieldName, camelizedField))
    body = "    %s." % camelizedField
    s.append(body)

    return s

def create_new(recordName):
    function = [get_function_header("new")]
    function.append("")
    function.append("-spec new() -> #%s{}." % recordName)
    function.append("")
    function.append("new() ->")
    function.append("    #%s{}." % recordName)

    return function

def create_factory(recordName):
    function = [get_function_header("factory")]
    function.append("")

    spec = create_factory_spec(recordName)
    function.append(spec)
    function.append("")

    body = create_factory_body(recordName)
    function.append(body)
    function.append("    " + "#%s{" % recordName)

    doubleTab = "        "
    buffer = list(vim.current.buffer)
    for i in xrange(2, len(buffer) - 1, 2):
        fieldName = buffer[i].strip()
        line = doubleTab + "%s = %s" % (fieldName, underscore_to_camelcase(fieldName))
        endLine = "," if (i != (len(buffer) - 2)) else "}."
        line = line + endLine
        function.append(line)

    return function

def create_factory_spec(recordName):
    buffer = list(vim.current.buffer)
    spec = "-spec factory("
    for i in xrange(3, len(buffer), 2):
       fieldType = buffer[i].strip()
       nextField = "(), " if (i != (len(buffer) - 1)) else "()"
       spec = spec + fieldType + nextField

    spec = spec + ") -> #%s{}." % recordName

    return spec

def create_factory_body(recordName):
    buffer = list(vim.current.buffer)
    body = "factory("
    for i in xrange(2, len(buffer) - 1, 2):
        fieldName = buffer[i].strip()
        nextField = ", " if (i != (len(buffer) - 2)) else ""
        body = body + underscore_to_camelcase(fieldName) + nextField

    body = body + ") ->"

    return body

def underscore_to_camelcase(value):
    def camelcase():
    # it's Erlang, we want the also the first letter capitalized
    # yield str.lower
        while True:
            yield str.capitalize

    c = camelcase()

    return "".join(c.next()(x) if x else '_' for x in value.split("_"))

doubleTab = "        "
buffer = list(vim.current.buffer)
recordName = buffer[0].strip()
varName = buffer[1].strip()

firstHeader = ["-module('%s')." % recordName]
firstHeader.append("")
firstHeader.append("%% === Include files =================================================")
firstHeader.append("")
firstHeader.append("%% === Parse transforms ==============================================")
firstHeader.append("")
firstHeader.append("%% === External exports ==============================================")
firstHeader.append("")

recordDefinition = ["%% === Records ======================================================="]
recordDefinition.append("")
recordDefinition.append("-record(%s, {" % recordName)

exportDefinition = ["-export([new/0,"]
exportDefinition.append(doubleTab + "factory/%d," % ((len(buffer) - 2) / 2))

secondHeader = ["%% === Internal exports =============================================="]
secondHeader.append("")
secondHeader.append("%% === Macros ========================================================")
secondHeader.append("")

thirdHeader = ["%% === Type exports =================================================="]
thirdHeader.append("")
thirdHeader.append("%% === Types =========================================================")
thirdHeader.append("")
thirdHeader.append("%% === External functions ============================================")
thirdHeader.append("")

functionDefinition = [create_new(recordName)]
functionDefinition.append("")

factory = create_factory(recordName)
for i in factory:
    functionDefinition.append(i)
functionDefinition.append("")

for i in xrange(2, len(buffer) - 1, 2):
    fieldName = buffer[i].strip()
    fieldType = buffer[i + 1].strip()
    recordDefinition.append(doubleTab + "%s :: %s()," % (fieldName, fieldType))
    #print(get_function_header("set_" + fieldName))
    functionDefinition.append(get_function_header("set_" + fieldName))
    functionDefinition.append("")
    #print("create_set")
    # print(create_set(recordName, varName, fieldName, fieldType))
    functionDefinition.append(create_set(recordName, varName, fieldName, fieldType))
    functionDefinition.append("")
    functionDefinition.append(get_function_header("get_" + fieldName))
    functionDefinition.append("")
    functionDefinition.append(create_get(recordName, fieldName, fieldType))
    functionDefinition.append("")
    exportDefinition.append(doubleTab + "set_%s/2," % fieldName)
    exportDefinition.append(doubleTab + "get_%s/1," % fieldName)

lastRecordField = recordDefinition[len(recordDefinition) - 1]
recordDefinition[len(recordDefinition) - 1] = lastRecordField.replace(",", "") + "})."
recordDefinition.append("")
lastExport = exportDefinition[len(exportDefinition) - 1]
exportDefinition[len(exportDefinition) - 1] = lastExport.replace(",", "") + "])."
exportDefinition.append("")

del(vim.current.buffer[:])
flatRecords = flatten(recordDefinition)
flatFunctions = flatten(functionDefinition)
print(flatFunctions)

vim.current.buffer.append(firstHeader)
vim.current.buffer.append(exportDefinition)
vim.current.buffer.append(secondHeader)
vim.current.buffer.append(flatRecords)
vim.current.buffer.append(thirdHeader)
vim.current.buffer.append(flatFunctions)
del(vim.current.buffer[0])

EOF
endfunction
