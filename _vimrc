" Last Updated: 
" dd/mm/year hh:mm:ss PM/AM
" 12/18/2012 3:59:06 PM

" set encoding
" help encoding for more info
" default value is Latin1
" also see help fileformat
" and see help fileencoding
" and see help fileencodings as well
" using "set encoding" command to get the current settings
" set encoding=utf8
" or use the following values, utf-8 is same as utf8
" this tell vim to use utf-8 as the file encode when openning a file
set encoding=utf-8

" set fileencoding to nothing when encoding is utf-8
" so that new created file via vim will have value utf-8 for encoding and nothing for fileencoding
" this solve the potential conversion error when saving the file to disk
" see http://vim.1045645.n5.nabble.com/Can-t-save-file-due-to-quot-CONVERSION-ERROR-in-line-quot-td1194429.html for details
"set fenc=
"
"but fenc will be set to latin1 if you set fenc to nothing
"it is better to set fenc=utf-8 explicitly
"to tell vim to use utf-8 when saving or updating a file to disk
set fenc=utf-8

" tell vim to detect file encoding in that order when openning a file
set fileencodings=ucs-bom,utf-8,prc,default,latin1

" Display invisible characters such as TAB and the end-of-line character
" :set list
" Disable the display the invisible characters
" :set nolist

" insert words straight from a dictionary
"
" 3 ways to set the dictionary file path
" (1) set it using hard-coded dir path, it works! 
"set dictionary=C:\Users\mzhan\.vim\dictionary\2of12inf.txt
"
" (2) set it using %USERPROFILE%, it works too!
"set dictionary=%USERPROFILE%\.vim\dictionary\2of12inf.txt
"
" (3) set it using $HOME, it works as well!
 set dictionary=$USERPROFILE\.vim\dictionary\2of12inf.txt
 set complete=.,w,k

" Turn on spell check
" set spell

" Turn off spell check
" set nospell

" Change to splitting the window vertically with the new window and
" cursor at the right (see :help explore for details)
let g:netrw_altv = 1

" set default font
" using ":set gfn?" to check the current font setting
" default one is: guifont=
set gfn=Monaco:h11:cANSI
"set gfn=Arial_monospaced_for_SAP:h11:cANSI
"set gfn=Bitstream_Vera_Sans_Mono:h11:cANSI
"set gfn=NSimSun:h12:cGB2312
if has("gui_running")
	set guifontwide=NSimSun:h12:cGB2312
endif


" Set default fileformat, first is the default one
" In vim command mode, you could use ":set fileformat=unix" and ":w" to change
" the fileformat to unix
" see Tip #145: Changing DOS style end of line to UNIX, or vise-versa on vim
" site
" To check what is the file format of the opened file, under vim command, use
" "set fileformat" to get the result
"set fileformat=dos
set fileformat=unix

" disable case sensitive search
" using command "set noic" (without quotation) to enable it
set ic

" set wrap at word
set lbr!

" set startup windows size
" using the following command to see the current lines and columns value
" ":set lines columns"
" my default is:
" lines = 25
" columns = 80
" I change it to the following:
set lines=15
set columns=80
" set columns=100

" when starting up vim, having it auto maximize the screen is annoying, but here is how to do it
" autocmd GUIEnter * :simalt ~x

" Printing with line numbers
"set printoptions=number:y------> to print with line numbers
"set printoptions=number:n------> to print with no line numbers (default)
"in command line do:---> "set printoptions=number:y" for temperary setting
set printoptions=number:y

" using abbrevation to insert time stamp 
" when typing dts and then press Ctrl+Space
iabbrev dts <C-R>=strftime("%c")<CR>
" example: 07/02/2012 4:00:51 PM

" And other time format are:

" iabbrev dts <C-R>=strftime("%y/%m/%d %H:%M")<CR>
" example: 12/02/08 15:45
"
" iabbrev mdyl <C-R>=strftime("%a %d %b %Y")<CR>
" example: Wed 08 Feb 2012

" iabbrev mdys <C-R>=strftime("%y%m%d")<CR>
" example: 120208

" iabbrev hml  <C-R>=strftime("%d/%m/%y %H:%M:%S")<CR>
" example: 08/02/12 15:49:00

" iabbrev hms  <C-R>=strftime("%H:%M:%S")<CR>
" example: 15:49:43

" Enable Kernighan & Ritchie style for C/C++ (from cvim.zip)
let g:C_BraceOnNewLine="no"

" Set the C/C++ root menu position
" If g:C_Root variable is not set, then 
" the default is set it to the top menu, and
" it equals to set "let g:C_Root='&C\/C\+\+.'
"
" If set to "", then all submenu are put into root menu
" let g:C_Root='&C\/C\+\+.'

" Load C/C++ menu or not when startup vim, 
" the default will be 'Yes' if it is not set
let g:C_LoadMenus='no'

" Switch the C/C++ 's submenu header on/off, 
" the default will be 'on' if it is not set
let g:C_MenuHeader='off'

" Map esc to shift+space
map! <S-space> <esc>

" get rid of the toolbar from gui (using :set guioptions +=T in command mode
" to get it back
set guioptions -=T

" set the color scheme to Torte when vim is starting up
" color Torte
color DarkBlack

" using number of spaces to replace tab, see :help expandtab
set expandtab

" set tab indent width
set tabstop=4

" set shiftwidth
set shiftwidth=4


" show the number of lines
set nu

" using set backupdir to check current backup file (tilde file) dir settings
" using set dir to check current swp dir settings
"
" set backup file directory
" set backupdir=C:\Users\mzhan\.vim\file_backup
" set directory=C:\Users\mzhan\.vim\file_backup
"  set backupdir=$HOME\.vim\file_backup this works for win7 if $HOME is not defined in windows
"  set directory=$HOME\.vim\file_backup this works for win7 if $HOME is not defined in windows
"  the following works for xp and win7
  set backupdir=$USERPROFILE\.vim\file_backup 
" this is set swp file directory
  set directory=$USERPROFILE\.vim\file_backup
  
" It still creates the ~ file, but every time you fire up VIM it nukes all the old junk.  And if for some wierd reason you actually need the ~ file you can go back into the temp folder and rescue it before starting VIM.
" But maybe we need to put the following 3 lines after the following 2 lines.
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" 
" set backupdir=$VIMRUNTIME\\temp\\
" set directory=$VIMRUNTIME\\temp\\
" silent execute '!del "'.$VIMRUNTIME.'\temp\*~"'

" For me, to let it work on WinXP, I needed to change to:
" set backupdir=./_backup,/temp,.
" set directory=./_backup,/temp,.

"turn off backup
" set nobackup
" set nowritebackup 

" specify the tags file created by ctags.exe
":set tags=C:\mzhan\my_NetBeans_ws\nb7.0.1_ws\9001\tags_20120112
:set tags=$USERPROFILE\.vim\vim_tag_file

" Set the excuberant ctags variable in order to use TlistToggle to browser
" code
" let Tlist_Ctags_Cmd = "C:\\ctags57\\ctags.exe"
let Tlist_Ctags_Cmd = "C:\\ctags58\\ctags.exe"
let Tlist_Inc_Winwidth = 0

" set writebackup.vim script backup dir
" WriteBackup_BackupDir variable only accepts absolute path within single quoat
" or by default, it is the current dir of the file to be backuped
" see details: http://www.vim.org/scripts/script.php?script_id=1828
"
" let g:writebackup_BackupDir = "C:\Users\mzhan\.vim\file_repos" does not work!
" let g:writebackup_BackupDir = "file_repos" works for win7 HOME Premium 64bit
" 
" may or may not works for win7 pro 32bit
" let g:writebackup_BackupDir = "\.vim\\file_repos"
" let g:writebackup_BackupDir = "$HOME\\.vim\\file_repos"
" let g:WriteBackup_BackupDir = '$HOME\\.vim\\file_repos'
"
" variable name was changed from writebackup_BackupDir to
" WriteBackup_BackupDir since v1.30.011
"
" unfortunately, have to use absolute path within single quoat
" I did not find the way to use environment variable like $USERPROFILE, etc, here
"
" This works; but coupled, which is not good enough:
" let g:WriteBackup_BackupDir = 'C:\Users\mzhan.BTISYSTEMS\.vim\file_repos'
"
" This works as well; and this is what I want for the decoupling, which use
" env variable like $HOME or %USERPROFILE%;
let g:WriteBackup_BackupDir = $HOME.'\\.vim\\file_repos\'
"
" Create alias for ":WriteBackup" to ":WB"
command -bar WB :WriteBackup

"let g:vimwiki_browsers=['C:\Program Files\Mozilla Firefox\firefox.exe']
"
" hacking vimwiki_browsers feature to open a file pointed by link with gvim
" vimwiki C:\Users\mzhan\vimwiki\index.wiki file example:
" * [[file://C:\cygwin\home\mzhan\.vimrc] ]  -- my cygwin vimrc file
let g:vimwiki_browsers=['C:\Program Files (x86)\Vim\vim73\gvim.exe']

" the following is the default _vimrc file came with vim7.3

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"The following must be put here after the default _vimrc part
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"command to see all current highlight color settings
" :hi

" disable search highlight
" set nohlsearch

" enable search highlight
set hlsearch

" and set the search highlight color to LightBlue
" hi Search guibg=red
hi Search guibg=LightBlue

"Note: hi Search guibg=LightBlue is only for the GUI version of Vim
"If you're using vim in-console, try ":hi Search ctermbg=LightBlue"
"Or try ":hi Search ctermbg=LightGreen ctermfg=red term=bold cterm=bold

"change the default IncSearch highlight color to red
hi IncSearch guibg=red

"How to un-highlight-->
"if you want to get rid of the highlight for item found
"you just need to search a string , which does not exist in the file
" for example, "/zzzzzzzzzzzzzzzzzz


" Clear search highlighting by just hitting a return
" The <BS> clears the command line.
" The last <CR> to restore the standard behaviour of <CR>, which
" to go to the next line
" See more highlight search at http://vim.wkia.com/wiki/VimTip14
nnoremap <CR> :nohlsearch<CR>/<BS><CR>

