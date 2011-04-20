" pour coffeescript
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set paste
set backspace=indent,eol,start  " backspace over everything in insert mode
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set incsearch                   " do incremental searching
"set autowrite                   " save file when changing buffer
set smartindent                 " idem

" visual searching : search for visually highlighted text
vmap // y/<C-R>"<CR>

" map F12 to switch linenumber showing
map <F12> :set number!<CR>
colorscheme elflord              " set colorscheme
if has("gui_running")
    set background=dark
    colorscheme solarized
   "colorscheme desert              " set colorscheme
endif

set mouse=a

map <S-tab> :tabnext<cr>
nmap <S-tab> :tabnext<cr>
imap <S-tab> <ESC>:tabnext<cr>i

nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>

set tags=tags;/ " This will look in the current directory for "tags", and work up the tree towards root until one is found.


" C-] - go to definition
" C-T - Jump back from the definition.
" C-W C-] - Open the definition in a horizontal split

" Add these lines in vimrc
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" C-\ - Open the definition in a new tab
" A-] - Open the definition in a vertical split

" After the tags are generated. You can use the follwoing keys to tag into and tag out of funcitons:
" Ctrl-Left_MouseClick - Go to defenition
" Ctrl-Right_MouseClick - Jump back from definition

" -----------------------------------------------------------
" {{{ 0. General setup
" -----------------------------------------------------------

" enable backspace to delete anyting (includes \n) in insert mode
set backspace=2

" On n'assura pas la compatiblité avec VI et c'est tant mieux !
set nocompatible

" ne fait pas un bip lors d'une erreur
set noerrorbells

" Fait clignoter l'écran lors d'une erreur de saisie, de commande etc...
set visualbell

" Active les plugins et les indeantaions par type de fichier
filetype plugin indent on

" Quand on tape un ), vim montre furtivement le ( correspondant.
set showmatch

" ??? use full featured format-options. see "help fo-table for help
if v:version >= 600
        set formatoptions=tcrqn2
else
        " vim 5 doesn't know r/n
        set formatoptions=tcq2
endif

" define what are comments
set com& " reset to default
set com^=sr:*\ -,mb:*\ \ ,el:*/ com^=sr://\ -,mb://\ \ ,el:///

if has("gui_running")
    " Ajoute une marge à gauche pour afficher les +/- des replis
    set foldcolumn=2
endif

set foldmethod=marker

" }}}


" -----------------------------------------------------------
" {{{ 2 Indentation
" -----------------------------------------------------------

" On garde d'une ligne à l'autre l'indentation d'un paragraphe
set autoindent

" remplace les tabulations par des espaces
set expandtab

" Nombre d'espace pour une tabulation
set shiftwidth=4

" if non-zero, number of spaces to insert for a <tab>
set softtabstop=4

" number of spaces the tab stands for
set tabstop=4

" some nice options for cindenting  by FOLKE
" set cinoptions={.5s,+.5s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

" a <tab> in an indent insets 'shiftwidth' spaces (not tabstop)
set smarttab

" smartindenting (clever autoindenting)
set si


" }}}


" -----------------------------------------------------------
" {{{ 3. Searching, Substituting
" -----------------------------------------------------------

" On ignore la casse des caractères dans les recherches de chaînes.
set ignorecase

" No ignorecase if Uppercase chars in search
set scs

" change the way backslashes are used in search patterns
set magic

" begin search at top when EOF reached
set wrapscan

" jump to matches during entering the pattern
set sm

" highlight all matches...
set hls

" ...and also during entering the pattern
set incsearch

" !!! use 'g'-flag when substituting (subst. all matches in that line, not only first)
" to turn off, use g (why is there no -g ?)
" set gdefault

" !!! turn off the fucking :s///gc toggling
"set noedcompatible

" }}}


" -----------------------------------------------------------
" {{{ 4. Highlighting, Colors, Fonts
" -----------------------------------------------------------

" Active la coloration syntaxique quand c'est possible
if &t_Co > 2 || has("gui_running")
        syntax on
endif

if has("gui_running")

        "Nombre de colonnes à afficher
"        set co=98

        "Nombre de lignes à afficher
"        set lines=41

"        " Choix d'une police
"        if has("win32")
"                set guifont=Fixedsys:h9:cANSI
"                "set guifont=Courier:h10:cANSI
"        else
"                "set gfn=-adobe-courier-medium-r-normal-*-*-140-*-*-m-*-iso8859-15
"                set guifont=Courier\ 12
                 "set gfn=Bitstream\ Vera\ Sans\ Mono\ 9
                 set guifont=Monospace\ 9
"                set guioptions=gimrLtTa
"        endif
"
        " Choix d'un theme de coloration
        "colorscheme pablo
endif

" ??? how many lines to sync backwards
syn sync minlines=10000 maxlines=10000

" }}}


" -----------------------------------------------------------
" {{{ 4. Statusline, Menu
" -----------------------------------------------------------

" use tab for auto-expansion in menus
set wc=<TAB>

" show a list of all matches when tabbing a command
set wmnu

" how command line completion works
set wildmode=list:longest,list:full

" ignore some files for filename completion
set wildignore=*.o,*.r,*.so,*.sl,*.tar,*.tgz

" some filetypes got lower priority
set su=.h,.bak,~,.o,.info,.swp,.obj

" remember last 2000 typed commands
set hi=2000

" show cursor position below each window
set ruler

" shows the current status (insert, visual, ...) in statusline
set showmode

" use shortest messages
set shm=a

" show always statusline of last window
set laststatus=2

" }}}


" -----------------------------------------------------------
" {{{ 5. window handling
" -----------------------------------------------------------

if has("gui_running")
    " Le focus suit la souris
    set mousef
    " Le bouton droit affiche une popup
    set mousemodel=popup_setpos
endif

" minimal number of lines used for the current window
"set wh=1

" minimal number of lines used for any window
"set wmh=0

" make all windows the same size when adding/removing windows
"set noequalalways

"a new window is put below the current one
set splitbelow

" }}}

" -----------------------------------------------------------
" {{{ 6.Sauvegarde
" -----------------------------------------------------------

" Répertoire de sauvegarde automatique
set backupdir=~/.backup

" On active la sauvagarde
set backup

" On active le plugin de gestion de backup numéroté
"set patchmode=.bak

" On garde l'historique de 10 sauvegardes
"let savevers_max=10

" Même répertoire de sauvegarde que pour le backup classique
let savevers_dirs = &backupdir

" Le swap est mis à jour aprés 50 caractères saisies
"set updatecount=500
" Supprime l'utilisation du fichier d'échange
set updatecount=0

" change to directory of current file automatically
autocmd BufEnter * lcd %:p:h

" }}}


" -----------------------------------------------------------
" {{{ 7. UNIX Specials
" -----------------------------------------------------------

if has("unix")
    " On ajoute le path, je sais pas si ça me sert...
    if v:version >= 600
        set     path=.,/usr/include,/usr/X11R6/include,/usr/local/include
    else
        set     path=.,/usr/include,/usr/X11R6/include/,/usr/local/include
    endif

    set clipboard=autoselect
    set shell=/bin/bash
endif

" }}}


" -----------------------------------------------------------
" {{{ 8. Mapping
" -----------------------------------------------------------

" Supprime tout les blancs en debut de ligne
nmap _S :%s/^\s\+//<CR>

" Deplace la ligne courante vers le bas
nmap _j :move .+1<CR>
" Deplace la ligne courante vers le haut
nmap _k :move .-2<CR>

" Converts file format to/from unix
command Unixformat :set ff=unix
command Dosformat :set ff=dos

" On fait tourner les tampons ...
nnoremap <C-N> :bn!<CR>
nnoremap <C-P> :bp!<CR>

" Annuler aka Undo (window$'s style)
inoremap <C-Z> <C-O>u
noremap <C-Z> u

" Refaire aka Redo (window$'s style)
" Supprimer car on confit avec le scroll montant
"noremap <C-Y> <C-R>
"inoremap <C-Y> <C-O><C-R>

" Scroll vers le bas sans bouger le curseur (window$'s style)
map <C-DOWN> <C-E>
" Scroll vers le haut sans bouger le curseur (window$'s style)
map <C-UP> <C-Y>

" Tout séléctionner (window$'s style)
noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G

" Indentation automatique (Emacs's style)
vnoremap <C-F>   =$
vnoremap <tab>   =
nnoremap <tab>   =$
nnoremap <C-tab> mzvip=`z

" Fermer fichier (tampon) (window$'s style)
map <C-F4> :bd<cr>
imap <C-F4> <C-O>:bd<cr>
cmap <c-F4> <c-c>:bd<cr>

" Sauvegarder fichier (touv's style)
noremap <c-x><c-s> w<cr>
inoremap <c-x><c-s> <C-O>:w<cr>

" Ouvrir un fichier (Emacs's style)
"noremap <c-x><c-f> :e!
"inoremap <c-x><c-f> <c-O>:e!

" have <F1> prompt for a help topic, rather than displaying the introduction
" page, and have it do this from any mode:
nnoremap <F1> :help<Space>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
map! <F1> <C-C><F1>

" Force la fermeture d'un tampon
map <F4> :bd!<cr>
imap <F4> <C-O>:bd!<cr>
cmap <F4> <c-c>:bd!<cr>

" Fermer un tag (cf. closetag.vim)
"inoremap <F5> <C-R>=GetCloseTag()<CR>
"map <F5> a<C-_><ESC>

" Supprime tout les blancs en fin de ligne
map <F6> :%s/\s\+$//<CR>

" Mets en commentaire
map <F7> <Leader>c
imap <F7> <esc><F7>

" active/désactive la navigation par tags
nnoremap <silent> <F8> :Tlist<CR>


if has("gui_running")
    " alt jumps to menu
    set winaltkeys=menu

    " clipboard to autoselect
    set guioptions+=a

    " Shift-Fleche pour selectionner un bloc
    map <S-Up> vk
    vmap <S-Up> k
    map <S-Down> vj
    vmap <S-Down> j
    map <S-Right> v
    vmap <S-Right> l
    map <S-Left> v
    vmap <S-Left> h

    if has("win32") || has("win16")
        " ...
    else
        " Couper aka Cut (generic's style)
        vmap <S-Del> "*x

        " Copier aka Copy (generic's style)
        vmap <C-Insert> "*y
        "vmap <Return> "*y"   "Return realise la copie du bloc selectionner
        "vmap <S-Return> "*y" "Shift Return aussi

        " Coller aka Insert (generic's style)
        function! NormalPaste()
            if @* != ""
                normal "*gP
            endif
        endfunction
        function! SelectPaste()
            if @* != ""
                if col(".") < col("'<")
                    normal "*gp
                else
                    normal "*gP
                endif
            endif
        endfunction

        "map <S-Insert>                          :call NormalPaste()<CR>
        "imap <S-Insert>                         x<Esc>:call NormalPaste()<CR>s
        "cmap <S-Insert> <C-R>*
        "vmap <S-Insert>                         "-x:call SelectPaste()<CR>
    endif
endif

" }}}


" -----------------------------------------------------------
" {{{ 11. Commande Automatique
" -----------------------------------------------------------
if has("autocmd")

    " {{{ 11.1 Template
    "au BufNewFile *.xsl 0r~/.vim/templates/xsl.xsl
    "au BufNewFile *.xml 0r~/.vim/templates/xml.xml
    "au BufNewFile *.html 0r~/.vim/templates/html.html
    "au BufNewFile *.c 0r~/.vim/templates/c.c
    "au BufNewFile *.php 0r~/.vim/templates/php.php
    " }}}

    " {{{ 11.2 En fonction du type de fichier
    autocmd FileType text setlocal textwidth=78 nocindent
    autocmd FileType html set formatoptions+=tl
    autocmd FileType css set smartindent noexpandtab tabstop=2 shiftwidth=2
    autocmd FileType php set expandtab tabstop=4
    autocmd FileType coffee set smartindent expandtab tabstop=2 shiftwidth=2
    "autocmd FileType c,cpp,slang set cindent
    autocmd FileType html,xml,xsl source ~/.vim/scripts/closetag.vim
    autocmd FileType py source ~/.vim/scripts/python.vim
    autocmd FileType php set dictionary=~/.vim/dictionaries/PHP.dict keywordprg=~/.vim/external/phpmanual.sh
    " }}}

    " {{{ 11.3 En fonction de l'extenstion du fichier
    autocmd BufNewFile,BufRead *.pc set ft=proc
    autocmd BufNewFile,BufRead *.phtm,*.phtml set ft=php
    " }}}
endif

"}}}


" -----------------------------------------------------------
" {{{ 12. Spécificité pour chaque language
" -----------------------------------------------------------

" {{{ 12.1 Langage C
"let c_minlines = 200
let c_comment_strings = 1
" }}}

" {{{ 12.2 Langage PHP
let php_sql_query = 1
let php_noShortTags = 1
let php_parent_error_close = 1
"let php_parent_error_open = 1
"let php_minlines=300
"let php_htmlInStrings=1
"let php_folding = 1
" }}}

" {{{ 12.3 Drupal
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
  augroup END
endif
" }}}

"}}}


" vim:fdm=marker



