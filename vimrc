syntax on
set background=dark
map r1 /home/hmy/bin/t1.sh <CR> <CR>
map r2 :setf groovy <CR> <CR>
map rr :w !bash <CR>
au BufNewFile,BufRead *.groovy  setf groovy 
set expandtab
set tabstop=4
