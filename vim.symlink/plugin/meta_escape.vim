if exists("did_meta_escape") | finish | endif
let did_meta_escape = 1

if has("gui_running") | finish | endif

" Based on vim tip 1272 [http://vim.wikia.com/wiki/VimTip1272]
"
" Maps numbers (0-9) and lowercase letter meta-char key combos which produce
" escape-char keysyms to map to vim <M-[char]> mappings. Utilizes vimtip 1272
" to minimize chance of manually inputing the combo (by hitting escape then a
" char in quick sucession).

" To use just place this file in your ~/.vim/plugins/ directory.

" Note that using this is only necessary if you are using a terminal emulator
" that sends escape-char for the alt/meta key. Many (all) of the rxvt
" derivitives do this by default. Xterm can do this if the eightBitInput is
" false or metaSendsEscape is true (along with a couple other ways). Not sure
" about kterm, gnome-terminal or some of the others do it. To check just hit
" <C-v> <M-a> and if it produces 'a' then this will help you. If it instead
" produces 'á' then you don't need this script.

let s:keys = map(range(97, 122), "nr2char(v:val)") " a-z
let s:keys += map(range(48, 57), "nr2char(v:val)")  " 0-9

" Note that you can add other characters here. There are some to avoid
" however. Capitol 'O' causes problems with the arrow keys. The '['
" character just doesn't work. There are probably others, you'll just have
" to do some testing.
    
" Try to get the best dead keycodes per terminal type
if &term == 'xterm'
    " 58 keycodes
    " xterm sends shift-fkeys for shift-fkeys
    let s:key_codes = map(range(13,37), '"<S-F".v:val.">"')
                \+ map(range(13,37), '"<F".v:val.">"')
" uncomment if you need more
"                \+ map(range(1,4), '"<xF".v:val.">"')
"                \+ map(range(1,4), '"<S-xF".v:val.">"')
else
    " 62 keycodes
    " rxvtish terms send f11-20 for shift-fkeys
    let s:key_codes = map(range(1,37), '"<S-F".v:val.">"')
" uncomment if you need more
"                \+ map(range(21,37), '"<F".v:val.">"')
"                \+ map(range(1,4), '"<xF".v:val.">"')
"                \+ map(range(1,4), '"<S-xF".v:val.">"')
endif

"" additional possible vim keycodes to use
"" weird misc keys. work with shift and control
"let s:misc = ['xHome', 'zHome', 'xEnd', 'zEnd'] 
"" work with shift
"let s:odd = ['Help', 'Undo']
"" keypad keys - usable here with laptop keyboards and like
"let s:keypad = ['kHome', 'kEnd' ]
"            \+ ['kInsert', 'kDel', 'kPageUp', 'kPageDown']
"            \+ ['kPlus', 'kMinus', 'kDivide', 'kMultiply']
"            \+ ['kEnter', 'kPoint']
"            \+ map(range(0,9), '"k".v:val')
"let s:key_codes += map(range(1,4), '"<xF".v:val.">"')
"            \+ map(range(1,4), '"<S-xF".v:val.">"')
"            \+ map(s:misc[:], '"<S-".v:val.">"')
"            \+ map(s:misc[:], '"<C-".v:val.">"')
"            \+ map(s:misc, '"<".v:val.">"')
"            \+ map(s:odd[:], '"<S-".v:val.">"')
"            \+ map(s:odd, '"<".v:val.">"')
"            \+ map(s:keypad, '"<".v:val.">"')

"echo len(s:keys)
"echo len(s:key_codes)

set timeout timeoutlen=1000 ttimeoutlen=32
for idx in range(len(s:keys))
    let pc = s:keys[idx]
    let kc  = s:key_codes[idx]
    exec "set ".kc."=\e".pc
    exec "map ".kc." <M-".pc.">"
    exec "map! ".kc." <M-".pc.">"
endfor


