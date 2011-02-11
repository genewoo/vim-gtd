" Vim syntax file
" Filename: gtd.vim
" Language: marked text for conversion by gtd
" Maintainer: Gene Wu
" Last change: 2011-02-09
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INFO:
"
" - This is the gtd VIM syntax file. (reference from txt2tags)
" - It's a syntax file just like those for programming languages as C
"   or Python, so you know it's handy.
" - Here are registered all the highlight for GTD marks.
" - When composing your text file, the marks will be highlighted,
"   helping you to quickly browse files.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLD:
"
" - There are some folding rules on the syntax also
" - To use fold just uncomment the line of foldmethod below
" - Or set the fold use directly on the t2t file, adding this last line:
"
"     % vim: foldmethod=syntax
"
" - There are two kinds of fold:
"
"   Automatic fold:
"     - The fold starts at any top level title
"     - The fold ends with 3 consecutive blank lines
"
"   User defined fold:
"     - The fold starts by the "% label {{{" comment
"     - The fold ends with the "% }}}" comment
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL: (as user)
"
" - Copy this file to the ~/.vim/syntax/ dir (create it if necessary)
"
" - Put in your .vimrc the following line:
"   au BufNewFile,BufRead *.plan.txt set ft=gtd
"
" If you use other extension for plan files, change the '*.t2t'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL: (as superuser)
"
" If you have access to the system configuration, edit the
" /usr/share/vim/vim*/filetype.vim file, adding the following
" lines after the 'Z-Shell script' entry (near the end):
"
"   " gtd file
"   au BufNewFile,BufRead *.plan.txt                 setf gtd
"
" And copy this file (gtd.vim) to the Vim syntax dir:
"
"   /usr/share/vim/vim*/syntax/
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"FOLD: just uncomment the following line if you like to use Vim fold
"set foldmethod=syntax


" init
syn clear
syn sync minlines=500

"TODO see if user already has foldmethod defined, if so, set foldmethod=syntax
"TODO2 learn vim language :/

"syn cluster t2tComponents  contains=t2tNumber,t2tPercent,t2tMacro,t2tImg,t2tEmail,t2tUrl,t2tUrlMark,t2tUrlMarkImg,t2tUrlLocal
"syn cluster t2tBeautifiers contains=t2tStrike,t2tUnderline,t2tItalic,t2tBold,t2tMonospace,t2tRaw

syn cluster gtd contains=gtdcontext,gtdreference,gtddone,gtdtodo,gtddelegate

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONTEXT:
"FONT BEAUTIFIERS:
syn match   gtdcontext      '@\w\+'
syn match   gtdreference    '#\w\+'
syn match   gtdtodo '^T - .*$'
syn match   gtddelegate '^D - .*$'
syn match   gtddone '^X - .*$'
"mins
syn match   gtdtime '[0-9]*.min\?s'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" color groups
" hi default link t2t_Link       PreProc
" hi default link t2t_Component  Statement
" hi default link t2t_Delim      Identifier
" hi default link t2t_Verb       Type
" hi default link t2t_Raw        String
" hi default link t2t_Tagged     Special
"
" color definitions (specific)
hi default gtdreference        term=bold        cterm=bold        gui=bold
hi default gtddelegate      term=italic      cterm=italic      gui=italic
"hi default t2tStrike      term=italic      cterm=italic      gui=italic
hi default gtdcontext   term=underline   cterm=underline   gui=underline
"hi default t2tQuote       term=reverse     cterm=reverse     gui=reverse
"hi default t2tTableAlign  term=reverse     cterm=reverse     gui=reverse
"if &background == "light"
"    hi default t2tComment     ctermfg=brown    guifg=brown
"else
"    hi default t2tComment     ctermfg=brown    guifg=bisque
"endif
"hi default link t2tCommentArea t2tComment 
"
" color definitions (using Vim defaults)
hi default link gtddone         Error
" hi default link t2tNumTitle      Error
" comment the following line to avoid having trailing whitespaces in red
" hi default link t2tBlank         Error
" hi default link t2tNumber        Number
" hi default link t2tPercent       Number
" hi default link gtddelegate      Special
hi default link gtdtodo          Todo
" hi default link t2tCommand       Special
" hi default      t2tIncluded      cterm=bold
" hi default link t2tTargets       Type
hi default link gtdtime          Special
" hi default link t2tConfigValue   NONE
" hi default link t2tConfigString  String
" hi default link t2tHeaderArea    t2t_Raw
" hi default link t2tUrlMark       t2t_Delim
" hi default link t2tUrlMarkImg    t2t_Delim
" hi default link t2tUrlLabel      t2t_Delim
" hi default link t2tTableTit      t2t_Delim
" hi default link t2tTableMark     t2t_Delim
" hi default link t2tTableBar      t2t_Delim
" hi default link t2tEmail         t2t_Link
" hi default link t2tUrl           t2t_Link
" hi default link t2tUrlLocal      t2t_Link
" hi default link t2tTitleRef      t2t_Link
" hi default link t2tMacro         t2t_Component
" hi default link t2tImg           t2t_Component
" hi default link t2tList          t2t_Component
" hi default link t2tMacro         t2t_Component
" hi default link t2tTitleMark     NONE
" hi default link t2tVerbArea      t2t_Verb
" hi default link t2tVerb1Line     t2t_Verb
" hi default link t2tMonospace     t2t_Verb
" hi default link t2tRaw           t2t_Raw
" hi default link t2tRaw1Line      t2t_Raw
" hi default link t2tRawArea       t2t_Raw
" hi default link t2tTagged        t2t_Tagged
" hi default link t2tTagged1Line   t2t_Tagged
" hi default link t2tTaggedArea    t2t_Tagged
set expandtab
set shiftwidth=2
set softtabstop=2
"
let b:current_syntax = 'gtd'
" vim:tw=0:et
