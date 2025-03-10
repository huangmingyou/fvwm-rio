syntax on
set re=0 
set background=dark
map rp :%y* \| %y+ <CR>
set hls
autocmd VimLeave * call system("xsel -ib", getreg('+'))
autocmd VimLeave * call system("xsel -ip", getreg('*'))

set fileencodings=ucs-bom,utf-8,gbk,cp936,iso-8859-1
