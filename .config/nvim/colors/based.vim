" About: based, consistency is not something you find in vim/nvim.

highlight clear

if exists("syntax_on")
    syntax reset
endif

hi Boolean ctermfg=5
hi Comment ctermfg=8
hi Constant ctermfg=2
hi CursorLine ctermbg=0 cterm=none
hi CursorLineNr ctermbg=0 ctermfg=3 cterm=none
hi Delimiter ctermfg=7
hi Directory ctermfg=4
hi Error ctermfg=1 ctermbg=0
hi ErrorMsg ctermfg=1 ctermbg=none
hi Identifier ctermfg=7 cterm=none
hi IncSearch ctermbg=none cterm=reverse
hi LineNr ctermfg=8
hi MatchParen ctermbg=none ctermfg=8 cterm=reverse
hi ModeMsg ctermfg=7
hi MoreMsg ctermfg=2
hi NonText ctermfg=8
hi Normal ctermfg=none ctermbg=none
hi Operator ctermfg=7
hi Pmenu ctermfg=7 ctermbg=0 cterm=none
hi PmenuSbar ctermbg=0 cterm=none
hi PmenuSel ctermfg=4 ctermbg=none cterm=reverse
hi PmenuThumb ctermbg=8 cterm=none
hi PreProc ctermfg=3
hi Question ctermfg=2
hi QuickFixLine ctermbg=0
hi Search ctermbg=none ctermfg=none cterm=reverse
hi Special ctermfg=5
hi SpecialKey ctermfg=4
hi SpellBad ctermbg=none cterm=underline
hi SpellCap ctermbg=none cterm=underline
hi SpellLocal ctermbg=none cterm=underline
hi SpellRare ctermbg=none cterm=underline
hi Statement ctermfg=1
hi StatusLine ctermfg=7 ctermbg=0 cterm=none
hi StatusLineNC ctermfg=8 ctermbg=0 cterm=none
hi StorageClass ctermfg=1
hi Structure ctermfg=1
hi Todo ctermfg=3 ctermbg=none
hi Type ctermfg=4
hi Typedef ctermfg=1
hi Underlined ctermfg=6
hi VertSplit ctermfg=0 cterm=none
hi Visual ctermbg=none cterm=reverse
hi WarningMsg ctermfg=1

hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Title PreProc
hi! link diffAdded String
hi! link diffRemoved Comment
hi! link hsOperator Type
hi! link makeTarget Special
hi! link pythonBuiltin Type
hi! link pythonDecoratorName Special
hi! link pythonFunction PreProc
hi! link pythonOperator Keyword
hi! link qfFileName Special
hi! link qfLineNr Keyword
