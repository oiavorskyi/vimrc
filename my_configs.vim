set background=dark
let g:airline_theme="solarized"
try
    colorscheme solarized
catch
endtry

nmap <C-l> <Plug>(easymotion-s)
nmap <Leader>j <Plug>(easymotion-j)
vmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
vmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>h <Plug>(easymotion-linebackward)
vmap <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>l <Plug>(easymotion-lineforward)
vmap <Leader>l <Plug>(easymotion-lineforward)
nnoremap K i<CR><Esc>

let g:table_mode_delimiter=";"
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="
nnoremap <Leader>rtw :s/\s\+$//e<CR>

let g:goyo_width=80
let g:limelight_conceal_ctermfg=232
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.md setlocal colorcolumn=+1
let g:vim_markdown_folding_disabled=1
hi link mkdLineBreak TabLine

vnoremap <Leader>tx !tidy -q -i -xml -wrap 80 -config ~/.tidyrc -<CR> 
let macvim_skip_colorscheme=1
set guifont=Anonymous\ Pro:h16

nmap <D-Enter> :set invfu<CR><bar>:Goyo<CR><bar>:set columns=82<CR>
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()
