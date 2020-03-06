" Turn on backup option
set backup

" Where to store backups
set backupdir=~/vim_backup/new_files//

" Make backup before overwriting the current buffer
set writebackup

" No overwrite on the original backup file
set backupcopy=yes

let filesize = getfsize(expand(@%))
" only write file if file size < 80 MB
if filesize < 80000000
  " filename format: "current directory/filename   2020-03-06   11:34:12"
  au BufWritePre * let &bex = '   ' . strftime("%F   %H:%M:%S")
endif
