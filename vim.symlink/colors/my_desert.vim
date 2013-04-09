hi SpecialKey      cterm=NONE term=bold ctermfg=113 guifg=yellowgreen
hi NonText         cterm=NONE term=bold cterm=bold ctermfg=152 ctermbg=239 gui=bold guifg=LightBlue guibg=grey30
hi Directory       cterm=NONE term=bold ctermfg=51 guifg=Cyan
hi ErrorMsg        cterm=NONE term=standout ctermfg=231 ctermbg=196 guifg=White guibg=Red
hi IncSearch       cterm=NONE term=reverse cterm=reverse ctermfg=222 ctermbg=66 gui=reverse guifg=slategrey guibg=khaki
hi Search          cterm=NONE term=reverse ctermfg=237 ctermbg=215 guifg=#3a3a3a guibg=#ffaf5f
hi MoreMsg         cterm=NONE term=bold cterm=bold ctermfg=29 gui=bold guifg=SeaGreen
hi ModeMsg         cterm=NONE term=bold cterm=bold ctermfg=178 gui=bold guifg=goldenrod
hi LineNr          cterm=NONE term=underline ctermfg=221 guifg=#ffd75f guibg=grey20
hi CursorLineNr    cterm=NONE term=bold cterm=bold ctermfg=226 gui=bold guifg=Yellow
hi Question        cterm=NONE term=standout cterm=bold ctermfg=48 gui=bold guifg=springgreen
hi StatusLine      cterm=NONE term=bold cterm=bold ctermfg=242 ctermbg=221 gui=bold guifg=#6C6C6C guibg=#ffd75f
hi StatusLineNC    cterm=NONE ctermfg=221 ctermbg=242 guibg=#6C6C6C guifg=#ffd75f 
hi VertSplit       cterm=NONE term=reverse ctermfg=244 ctermbg=145 guifg=grey50 guibg=#c2bfa5
hi Title           cterm=NONE term=bold cterm=bold ctermfg=167 gui=bold guifg=indianred
hi Visual          cterm=NONE term=reverse ctermfg=16 ctermbg=251 guifg=#000000 guibg=#c4c4c4
hi VisualNOS       cterm=NONE term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg      cterm=NONE term=standout ctermfg=209 guifg=salmon
hi WildMenu        cterm=NONE term=standout ctermfg=16 ctermbg=226 guifg=Black guibg=Yellow
hi Folded          cterm=NONE term=standout ctermfg=220 ctermbg=239 guifg=gold guibg=grey30
hi FoldColumn      cterm=NONE term=standout ctermfg=180 ctermbg=239 guifg=tan guibg=grey30
hi DiffAdd         cterm=NONE ctermbg=222 ctermfg=240
hi DiffChange      cterm=NONE ctermbg=242 ctermfg=white
hi DiffDelete      cterm=NONE ctermbg=203 ctermfg=white 
hi DiffText        cterm=NONE ctermbg=242 ctermfg=222
hi SignColumn      cterm=NONE term=standout ctermfg=51 ctermbg=250 guifg=Cyan guibg=Grey
hi Conceal         cterm=NONE ctermfg=252 ctermbg=248 guifg=LightGrey guibg=DarkGrey
hi SpellBad        cterm=NONE term=reverse cterm=undercurl gui=undercurl guisp=Red
hi SpellCap        cterm=NONE term=reverse cterm=undercurl gui=undercurl guisp=Blue
hi SpellRare       cterm=NONE term=reverse cterm=undercurl gui=undercurl guisp=Magenta
hi SpellLocal      cterm=NONE term=underline cterm=undercurl gui=undercurl guisp=Cyan
hi Pmenu           cterm=NONE term=reverse ctermfg=221 ctermbg=242 guibg=#6C6C6C guifg=#ffd75f 
hi PmenuSel        cterm=NONE term=reverse ctermfg=242 ctermbg=221 gui=bold guifg=#6C6C6C guibg=#ffd75f
hi PmenuSbar       cterm=NONE ctermbg=7 gui=reverse guifg=#eee8d5 guibg=#839496
hi PmenuThumb      cterm=NONE ctermbg=15 gui=reverse guifg=#839496 guibg=#002b36
hi TabLine         cterm=NONE term=underline cterm=underline ctermfg=221 ctermbg=242 gui=underline guibg=#6C6C6C 
hi TabLineSel      cterm=NONE term=bold ctermfg=239 ctermbg=222 gui=bold
hi TabLineFill     cterm=NONE term=reverse ctermbg=242 gui=reverse
hi CursorColumn    cterm=NONE term=reverse ctermbg=241 guibg=Grey40
hi CursorLine      cterm=NONE term=underline ctermbg=241 guibg=Grey40
hi ColorColumn     cterm=NONE term=reverse ctermbg=88 guibg=DarkRed
hi Cursor          cterm=NONE ctermfg=222 ctermbg=167 guifg=khaki guibg=indianred
hi lCursor         cterm=NONE ctermfg=236 ctermbg=231 guifg=bg guibg=fg
hi MatchParen      cterm=NONE term=reverse ctermfg=242 ctermbg=221 guibg=#6C6C6C guifg=#ffd75f
hi Normal          cterm=NONE ctermfg=231 ctermbg=236 guifg=White guibg=grey20
hi Comment         cterm=NONE term=bold ctermfg=116 guifg=SkyBlue
hi Constant        cterm=NONE term=underline ctermfg=217 guifg=#ffafaf
hi Special         cterm=NONE term=bold ctermfg=223 guifg=navajowhite
hi Identifier      cterm=NONE term=underline ctermfg=120 guifg=palegreen
hi Statement       cterm=NONE term=bold cterm=bold ctermfg=222 gui=bold guifg=khaki
hi PreProc         cterm=NONE term=underline ctermfg=167 guifg=indianred
hi Type            cterm=NONE term=underline cterm=bold ctermfg=143 gui=bold guifg=darkkhaki
hi Underlined      cterm=NONE term=underline cterm=underline ctermfg=111 gui=underline guifg=#80a0ff
hi Ignore          cterm=NONE ctermfg=250 guifg=#bcbcbc
hi Error           cterm=NONE term=reverse ctermfg=231 ctermbg=196 guifg=White guibg=Red
hi Todo            cterm=NONE term=standout ctermfg=202 ctermbg=226 guifg=orangered guibg=yellow2
" hi String          links to Constant
" hi Character       links to Constant
" hi Number          links to Constant
" hi Boolean         links to Constant
" hi Float           links to Number
" hi Function        links to Identifier
" hi Conditional     links to Statement
" hi Repeat          links to Statement
" hi Label           links to Statement
" hi Operator        links to Statement
" hi Keyword         links to Statement
" hi Exception       links to Statement
" hi Include         links to PreProc
" hi Define          links to PreProc
" hi Macro           links to PreProc
" hi PreCondit       links to PreProc
" hi StorageClass    links to Type
" hi Structure       links to Type
" hi Typedef         links to Type
" hi Tag             links to Special
" hi SpecialChar     links to Special
" hi Delimiter       links to Special
" hi SpecialComment  links to Special
" hi Debug           links to Special
" hi BadWhitespace   cleared
" hi SyntasticErrorSign  links to Error
" hi SyntasticWarningSign  links to Todo
" hi SyntasticStyleErrorSign  links to SyntasticErrorSign
" hi SyntasticStyleWarningSign  links to SyntasticWarningSign
" hi SyntasticStyleErrorLine  links to SyntasticErrorLine
" hi SyntasticErrorLine  cleared
" hi SyntasticStyleWarningLine  links to SyntasticWarningLine
" hi SyntasticWarningLine  cleared
" hi SyntasticError  links to SpellBad
" hi SyntasticWarning  links to SpellCap
" hi erlangStringModifier  links to SpecialChar
" hi erlangModifier  links to SpecialChar
" hi erlangInteger   links to Number
" hi erlangFloat     links to Number
" hi erlangTodo      links to Todo
" hi erlangAnnotation  links to Special
" hi erlangComment   links to Comment
" hi erlangKeyword   links to Keyword
" hi erlangConditional  links to Conditional
" hi erlangBoolean   links to Boolean
" hi erlangGuard     links to Conditional
" hi erlangOperator  links to Operator
" hi erlangString    links to String
" hi erlangVariable  links to Identifier
" hi erlangAtom      links to Constant
" hi erlangRecord    links to Structure
" hi erlangTuple     links to Delimiter
" hi erlangList      links to Delimiter
" hi erlangAttribute  links to Keyword
" hi erlangInclude   links to Include
" hi erlangRecordDef  links to Keyword
" hi erlangDefine    links to Define
" hi erlangPreCondit  links to PreCondit
" hi erlangType      links to Type
" hi erlangMacro     links to Macro
" hi erlangBitType   links to Type
" hi erlangBitSize   links to Number
" hi erlangBinary    links to Keyword
" hi erlangBIF       links to Keyword
" hi erlangGBIF      links to Keyword
" hi erlangNoSpellString  links to String
" hi erlangPreProc   links to PreProc
" hi erlangDelimiter  links to Delimiter
" hi erlangBitDelimiter  links to Normal
" hi erlangHex       links to Number
" hi erlangFun       links to Keyword
" hi erlangBitVariable  links to Identifier
" hi helpHeadline    links to Statement
" hi helpSectionDelim  links to PreProc
" hi helpIgnore      links to Ignore
" hi helpExample     links to Comment
" hi helpBar         links to Ignore
" hi helpStar        links to Ignore
" hi helpHyperTextJump  links to Subtitle
" hi helpHyperTextEntry  links to String
" hi helpNormal      cleared
" hi helpVim         links to Identifier
" hi helpOption      links to Type
" hi helpCommand     links to Comment
" hi helpHeader      links to PreProc
" hi helpGraphic     cleared
" hi helpNote        links to Todo
" hi helpSpecial     links to Special
" hi helpLeadBlank   cleared
" hi helpNotVi       links to Special
" hi helpComment     links to Comment
" hi helpConstant    links to Constant
" hi helpString      links to String
" hi helpCharacter   links to Character
" hi helpNumber      links to Number
" hi helpBoolean     links to Boolean
" hi helpFloat       links to Float
" hi helpIdentifier  links to Identifier
" hi helpFunction    links to Function
" hi helpStatement   links to Statement
" hi helpConditional  links to Conditional
" hi helpRepeat      links to Repeat
" hi helpLabel       links to Label
" hi helpOperator    links to Operator
" hi helpKeyword     links to Keyword
" hi helpException   links to Exception
" hi helpPreProc     links to PreProc
" hi helpInclude     links to Include
" hi helpDefine      links to Define
" hi helpMacro       links to Macro
" hi helpPreCondit   links to PreCondit
" hi helpType        links to Type
" hi helpStorageClass  links to StorageClass
" hi helpStructure   links to Structure
" hi helpTypedef     links to Typedef
" hi helpSpecialChar  links to SpecialChar
" hi helpTag         links to Tag
" hi helpDelimiter   links to Delimiter
" hi helpSpecialComment  links to SpecialComment
" hi helpDebug       links to Debug
" hi helpUnderlined  links to Underlined
" hi helpError       links to Error
" hi helpTodo        links to Todo
" hi helpURL         links to String
" hi Subtitle        links to Identifier
" hi htmlError       links to Error
" hi htmlSpecialChar  links to Special
" hi javaScriptExpression  links to javaScript
" hi htmlString      links to String
" hi htmlValue       links to String
" hi htmlTagN        cleared
" hi htmlTagError    links to htmlError
" hi htmlEndTag      links to Identifier
" hi htmlArg         links to Type
" hi htmlEvent       links to javaScript
" hi htmlCssDefinition  links to Special
" hi htmlTag         links to Function
" hi htmlTagName     links to htmlStatement
" hi htmlSpecialTagName  links to Exception
" hi htmlCommentPart  links to Comment
" hi htmlCommentError  links to htmlError
" hi htmlComment     links to Comment
" hi htmlPreStmt     links to PreProc
" hi htmlPreError    links to Error
" hi htmlPreAttr     links to String
" hi htmlPreProc     links to PreProc
" hi htmlPreProcAttrError  links to Error
" hi htmlPreProcAttrName  links to PreProc
" hi htmlLink        links to Underlined
" hi javaScript      links to Special
" hi htmlBoldUnderline  term=bold,underline cterm=bold,underline gui=bold,underline
" hi htmlBoldItalic  term=bold,italic cterm=bold,italic gui=bold,italic
" hi htmlBold        term=bold cterm=bold gui=bold
" hi htmlBoldUnderlineItalic  term=bold,underline,italic cterm=bold,underline,italic gui=bold,underline,italic
" hi htmlBoldItalicUnderline  links to htmlBoldUnderlineItalic
" hi htmlUnderlineBold  links to htmlBoldUnderline
" hi htmlUnderlineItalic  term=underline,italic cterm=underline,italic gui=underline,italic
" hi htmlUnderline   term=underline cterm=underline gui=underline
" hi htmlUnderlineBoldItalic  links to htmlBoldUnderlineItalic
" hi htmlUnderlineItalicBold  links to htmlBoldUnderlineItalic
" hi htmlItalicBold  links to htmlBoldItalic
" hi htmlItalicUnderline  links to htmlUnderlineItalic
" hi htmlItalic      term=italic cterm=italic gui=italic
" hi htmlItalicBoldUnderline  links to htmlBoldUnderlineItalic
" hi htmlItalicUnderlineBold  links to htmlBoldUnderlineItalic
" hi htmlLeadingSpace  links to None
" hi htmlH1          links to Title
" hi htmlH2          links to htmlH1
" hi htmlH3          links to htmlH2
" hi htmlH4          links to htmlH3
" hi htmlH5          links to htmlH4
" hi htmlH6          links to htmlH5
" hi htmlTitle       links to Title
" hi cssStyle        cleared
" hi htmlHead        links to PreProc
" hi javaScriptCommentTodo  links to Todo
" hi javaScriptLineComment  links to Comment
" hi javaScriptCommentSkip  cleared
" hi javaScriptComment  links to Comment
" hi javaScriptSpecial  links to Special
" hi javaScriptStringD  links to String
" hi javaScriptStringS  links to String
" hi javaScriptSpecialCharacter  links to javaScriptSpecial
" hi javaScriptNumber  links to javaScriptValue
" hi javaScriptRegexpString  links to String
" hi javaScriptConditional  links to Conditional
" hi javaScriptRepeat  links to Repeat
" hi javaScriptBranch  links to Conditional
" hi javaScriptOperator  links to Operator
" hi javaScriptType  links to Type
" hi javaScriptStatement  links to Statement
" hi javaScriptBoolean  links to Boolean
" hi javaScriptNull  links to Keyword
" hi javaScriptIdentifier  links to Identifier
" hi javaScriptLabel  links to Label
" hi javaScriptException  links to Exception
" hi javaScriptMessage  links to Keyword
" hi javaScriptGlobal  links to Keyword
" hi javaScriptMember  links to Keyword
" hi javaScriptDeprecated  links to Exception
" hi javaScriptReserved  links to Keyword
" hi javaScriptFunction  links to Function
" hi javaScriptBraces  links to Function
" hi javaScriptParens  cleared
" hi javaScriptCharacter  links to Character
" hi javaScriptValue  cleared
" hi javaScriptError  links to Error
" hi javaScrParenError  links to javaScriptError
" hi javaScriptDebug  links to Debug
" hi javaScriptConstant  links to Label
" hi htmlCssStyleComment  links to Comment
" hi htmlScriptTag   links to htmlTag
" hi htmlEventSQ     links to htmlEvent
" hi htmlEventDQ     links to htmlEvent
" hi vbConditional   links to Conditional
" hi vbOperator      links to Operator
" hi vbBoolean       links to Boolean
" hi vbConst         links to Constant
" hi vbRepeat        links to Repeat
" hi vbEvents        links to Special
" hi vbFunction      links to Identifier
" hi vbMethods       links to PreProc
" hi vbStatement     links to Statement
" hi vbKeyword       links to Statement
" hi vbTodo          links to Todo
" hi vbTypes         links to Type
" hi vbDefine        links to Constant
" hi vbNumber        links to Number
" hi vbFloat         links to Float
" hi vbString        links to String
" hi vbComment       links to Comment
" hi vbLineNumber    links to Comment
" hi vbTypeSpecifier  links to Type
" hi vbError         links to Error
" hi vbIdentifier    links to Identifier
" hi cssTagName      links to Statement
" hi cssDeprecated   links to Error
" hi cssSelectorOp   links to Special
" hi cssSelectorOp2  links to Special
" hi cssUnicodeEscape  links to Special
" hi cssStringQ      links to String
" hi cssStringQQ     links to String
" hi cssAttributeSelector  cleared
" hi cssClassName    links to Function
" hi cssIdentifier   links to Function
" hi cssDefinition   cleared
" hi cssMediaType    links to Special
" hi cssMedia        links to Special
" hi cssMediaComma   links to Normal
" hi cssMediaBlock   cleared
" hi cssBraces       links to Function
" hi cssError        links to Error
" hi cssComment      links to Comment
" hi cssURL          links to String
" hi cssValueInteger  links to Number
" hi cssValueNumber  links to Number
" hi cssValueLength  links to Number
" hi cssValueAngle   links to Number
" hi cssValueTime    links to Number
" hi cssValueFrequency  links to Number
" hi cssFontDescriptorBlock  cleared
" hi cssFontDescriptor  links to Special
" hi cssFontProp     links to StorageClass
" hi cssFontAttr     links to Type
" hi cssCommonAttr   links to Type
" hi cssFontDescriptorProp  links to StorageClass
" hi cssFontDescriptorFunction  links to Constant
" hi cssUnicodeRange  links to Constant
" hi cssFontDescriptorAttr  links to Type
" hi cssFunctionName  links to Function
" hi cssColor        links to Constant
" hi cssImportant    links to Special
" hi cssFunction     links to Constant
" hi cssAnimationProp  links to StorageClass
" hi cssAnimationAttr  links to Type
" hi cssBackgroundProp  links to StorageClass
" hi cssBackgroundAttr  links to Type
" hi cssBorderOutlineProp  links to StorageClass
" hi cssBorderOutlineAttr  links to Type
" hi cssBoxProp      links to StorageClass
" hi cssBoxAttr      links to Type
" hi cssColorProp    links to StorageClass
" hi cssDimensionProp  links to StorageClass
" hi cssFlexibleBoxProp  links to StorageClass
" hi cssFlexibleBoxAttr  links to Type
" hi cssGeneratedContentProp  links to StorageClass
" hi cssGeneratedContentAttr  links to Type
" hi cssGridProp     links to StorageClass
" hi cssHyerlinkProp  links to StorageClass
" hi cssListProp     links to StorageClass
" hi cssListAttr     links to Type
" hi cssMarginProp   links to StorageClass
" hi cssMultiColumnProp  links to StorageClass
" hi cssPaddingProp  links to StorageClass
" hi cssPositioningProp  links to StorageClass
" hi cssPositioningAttr  links to Type
" hi cssPrintProp    links to StorageClass
" hi cssPrintAttr    links to Type
" hi cssTableProp    links to StorageClass
" hi cssTableAttr    links to Type
" hi cssTextProp     links to StorageClass
" hi cssTextAttr     links to Type
" hi cssTransformProp  links to StorageClass
" hi cssTransitionProp  links to StorageClass
" hi cssUIProp       links to StorageClass
" hi cssUIAttr       links to Type
" hi cssAuralProp    links to StorageClass
" hi cssAuralAttr    links to Type
" hi cssRenderAttr   links to Type
" hi cssRenderProp   links to StorageClass
" hi cssInclude      links to Include
" hi cssVendor       links to Comment
" hi cssBraceError   links to Error
" hi cssPseudoClassId  links to PreProc
" hi cssPseudoClass  cleared
" hi cssSpecialCharQQ  cleared
" hi cssSpecialCharQ  cleared
" hi cssContentForPagedMediaProp  links to StorageClass
" hi cssLineboxProp  links to StorageClass
" hi cssMarqueeProp  links to StorageClass
" hi cssPagedMediaProp  links to StorageClass
" hi cssRubyProp     links to StorageClass
" hi cssSpeechProp   links to StorageClass
" hi cssColorAttr    links to Type
" hi cssContentForPagedMediaAttr  links to Type
" hi cssDimensionAttr  links to Type
" hi cssGridAttr     links to Type
" hi cssHyerlinkAttr  links to Type
" hi cssLineboxAttr  links to Type
" hi cssMarginAttr   links to Type
" hi cssMarqueeAttr  links to Type
" hi cssMultiColumnAttr  links to Type
" hi cssPaddingAttr  links to Type
" hi cssPagedMediaAttr  links to Type
" hi cssRubyAttr     links to Type
" hi cssSpeechAttr   links to Type
" hi cssTransformAttr  links to Type
" hi cssTransitionAttr  links to Type
" hi cssPseudoClassLang  links to Constant
" hi cssLength       cleared
" hi cssString       cleared
" hi htmlStyleArg    links to htmlString
" hi htmlHighlight   cleared
" hi htmlHighlightSkip  cleared
" hi htmlStatement   links to Statement
" hi None            cleared
" hi htmlSpecial     links to Special
