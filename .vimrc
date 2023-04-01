" Douglas Black
" Colors {{{
syntax enable           " enable syntax processing

" Remap ESC by jj
inoremap jj <Esc>`^

" set background=dark

" colorscheme badwolf
" colorscheme solarized8

" }}}
" Misc {{{
set backspace=indent,eol,start
let g:vimwiki_list = [{'path': '~/.wiki/'}]
set clipboard=unnamed
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set rnu 
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
" set fillchars+=vert:~T~C
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
set hls!
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>et :exec ":vsp /Users/dblack/notes/vim/" . strftime('%m-%d-%y') . ".md"<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call <SID>ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :GoDoc
nnoremap <leader>t :TestFile<CR>
nnoremap <leader>r :call <SID>RunFile()<CR>
nnoremap <leader>b :call <SID>BuildFile()<CR>
vnoremap <leader>y "+y
" }}}
let g:go_version_warning = 0
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" Syntastic {{{
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_ignore_files = ['.java$']
let g:syntastic_python_python_exec = 'python3'
" }}}
" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter *.py setlocal tabstop=4
    autocmd BufEnter *.md setlocal ft=markdown
    autocmd BufEnter *.go setlocal noexpandtab
    autocmd BufEnter *.avsc setlocal ft=json
augroup END
" }}}
" Testing {{{
let test#strategy = 'neovim'
let test#python#runner = 'nose'
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Vim Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go'
Plug 'janko-m/vim-test'
Plug 'keith/swift.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
Plug 'scrooloose/syntastic'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
call plug#end()
" }}}
" airline {{{
set laststatus=2
let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}
" Custom Functions {{{
function! <SID>ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunc

function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunc

function! <SID>RunFile()
    let ext = expand("%:e")
    if(ext == "go")
        :GoRun
    endif
endfunc

function! <SID>BuildFile()
    let ext = expand("%:e")
    if(ext == "go")
        :GoBuild
    endif
endfunc
" }}}
"

" vim:foldmethod=marker:foldlevel=0
set visualbell
set t_vb=
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/colors/desert.vim
behave mswin

:set showmatch
:set matchtime=2 
set nu!
set sw=4
set ts=4
set et

set guifont=������:h16:cGB2312

filetype indent on
:ab Zhushi /*********www.mdy-edu.com ������ƽ� ע�Ϳ�ʼ****************<Enter><Enter>**********www.mdy-edu.com ������ƽ� ע�ͽ���****************/

:ab Shixu always  @(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else begin<Enter>end<Enter>end
:ab Shixu2 always  @(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else begin<Enter>end<Enter>end
:ab Zuhe always  @(*)begin<Enter>end
:ab Canshu  /*********www.mdy-edu.com ������ƽ� ע�Ϳ�ʼ****************<Enter>�������壬������淶Ҫ��verilog�ڵ��õ������֣���ʹ�ò�����ʾ��<Enter>�����ź�ȫ����д<Enter>**********www.mdy-edu.com ������ƽ� ע�ͽ���****************/
:ab Module module module_name(<Enter>clk    ,<Enter>rst_n  ,<Enter>//�����ź�,����dout<Enter>dout<Enter>);<Enter><Enter>//��������<Enter>parameter      DATA_W =         8;<Enter><Enter>//�����źŶ���<Enter>input               clk    ;<Enter>input               rst_n  ;<Enter><Enter>//����źŶ���<Enter>output[DATA_W-1:0]  dout   ;<Enter><Enter>//����ź�reg����<Enter>reg   [DATA_W-1:0]  dout   ;<Enter><Enter>//�м��źŶ���<Enter>reg                 signal1;<Enter><Enter>//����߼�д��<Enter>always@(*)begin<Enter>end<Enter><Enter>//ʱ���߼�д��<Enter>always@(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else begin<Enter>end<Enter>end<Enter><Enter>endmodule
:ab Head /************************************************************************************<Enter>�������������﹤���Ҿ�����ƺ�������<Enter><Enter>����ϣ��ͨ���淶���Ͻ��Ĵ��룬ʹͬѧ�ǽӴ��������ļ��ɵ�·/FPGA���롣<Enter><Enter>�����﹤���ҳ�����ļ��Ա���������ѵ����ӭ���ɵ�·/FPGA�����߼��롣<Enter><Enter>ѧϰ����Ⱥ��97925396<Enter><Enter>*************************************************************************************/
:ab Test `timescale 1 ns/1 ns<Enter><Enter>module testbench_name();<Enter><Enter>//ʱ�Ӻ͸�λ<Enter>reg clk  ;<Enter>reg rst_n;<Enter><Enter>//uut�������ź�<Enter>reg[3:0]  din0  ;<Enter>reg       din1  ;<Enter><Enter><Enter>//uut������ź�<Enter>wire      dout0;<Enter>wire[4:0] dout1;<Enter><Enter><Enter>//ʱ�����ڣ���λΪns�����ڴ��޸�ʱ�����ڡ�<Enter>parameter CYCLE    = 20;<Enter><Enter>//��λʱ�䣬��ʱ��ʾ��λ3��ʱ�����ڵ�ʱ�䡣<Enter>parameter RST_TIME = 3 ;<Enter><Enter>//�����Ե�ģ������<Enter>module_name uut(<Enter>.clk          (clk     ), <Enter>.rst_n        (rst_n   ),<Enter>.din0         (din0    ),<Enter>.din1         (din1    ),<Enter>.dout0        (dout0   ),<Enter>.dout1        (dout1   )<Enter><Enter>);<Enter><Enter><Enter>//���ɱ���ʱ��50M<Enter>initial begin<Enter>clk = 0;<Enter>forever<Enter>#(CYCLE/2)<Enter>clk=~clk;<Enter>end<Enter><Enter>//������λ�ź�<Enter>initial begin<Enter>rst_n = 1;<Enter>#2;<Enter>rst_n = 0;<Enter>#(CYCLE*RST_TIME);<Enter>rst_n = 1;<Enter>end<Enter><Enter>//�����ź�din0��ֵ��ʽ<Enter>initial begin<Enter>#1;<Enter>//����ֵ<Enter>din0 = 0;<Enter>#(10*CYCLE);<Enter>//��ʼ��ֵ<Enter><Enter>end<Enter><Enter>//�����ź�din1��ֵ��ʽ<Enter>initial begin<Enter>#1;<Enter>//����ֵ<Enter>din1 = 0;<Enter>#(10*CYCLE);<Enter>//��ʼ��ֵ<Enter><Enter>end<Enter><Enter><Enter><Enter>endmodule

:ab Ztj    //�Ķ�ʽ״̬��<Enter><Enter>//��һ�Σ�ͬ��ʱ��alwaysģ�飬��ʽ��������̬�Ĵ���Ǩ�Ƶ���̬�Ĵ���(������ģ�<Enter>always@(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>state_c <= IDLE;<Enter>end<Enter>else begin<Enter>state_c <= state_n;<Enter>end<Enter>end<Enter><Enter>//�ڶ��Σ�����߼�alwaysģ�飬����״̬ת�������ж�<Enter>always@(*)begin<Enter>case(state_c)<Enter>IDLE:begin<Enter>if(idl2s1_start)begin<Enter>state_n = S1;<Enter>end<Enter>else begin<Enter>state_n = state_c;<Enter>end<Enter>end<Enter>S1:begin<Enter>if(s12s2_start)begin<Enter>state_n = S2;<Enter>end<Enter>else begin<Enter>state_n = state_c;<Enter>end<Enter>end<Enter>S2:begin<Enter>if(s22s3_start)begin<Enter>state_n = S3;<Enter>end<Enter>else begin<Enter>state_n = state_c;<Enter>end<Enter>end<Enter>default:begin<Enter>state_n = IDLE;<Enter>end<Enter>endcase<Enter>end<Enter>//�����Σ����ת������<Enter>assign idl2s1_start  = state_c==IDLE && ;<Enter>assign s12s2_start = state_c==S1    && ;<Enter>assign s22s3_start  = state_c==S2    && ;<Enter><Enter>//���ĶΣ�ͬ��ʱ��alwaysģ�飬��ʽ�������Ĵ�����������ж�������<Enter>always  @(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>out1 <=1'b0      //��ʼ��<Enter>end<Enter>else if(state_c==S1)begin<Enter>out1 <= 1'b1;<Enter>end<Enter>else begin<Enter>out1 <= 1'b0;<Enter>end<Enter>end
:ab Jsq    always @(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>cnt <= 0;<Enter>end<Enter>else if(add_cnt)begin<Enter>if(end_cnt)<Enter>cnt <= 0;<Enter>else<Enter>cnt <= cnt + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt = ;       <Enter>assign end_cnt = add_cnt && cnt== ;   


:ab Output32 output[   31: 0]         ;
:ab Output16 output[   15: 0]         ;
:ab Output8  output[    7: 0]         ;
:ab Output4  output[    3: 0]         ;
:ab Output3  output[    2: 0]         ;
:ab Output2  output[    1: 0]         ;
:ab Output1  output                   ;

:ab Input32 input [   31: 0]         ;
:ab Input16 input [   15: 0]         ;
:ab Input8  input [    7: 0]         ;
:ab Input4  input [    3: 0]         ;
:ab Input3  input [    2: 0]         ;
:ab Input2  input [    1: 0]         ;
:ab Input1  input                    ;

:ab Wire32 wire  [   31: 0]         ;
:ab Wire16 wire  [   15: 0]         ;
:ab Wire8  wire  [    7: 0]         ;
:ab Wire4  wire  [    3: 0]         ;
:ab Wire3  wire  [    2: 0]         ;
:ab Wire2  wire  [    1: 0]         ;
:ab Wire1  wire                     ;

:ab Wire32 wire  [   31: 0]         ;
:ab Wire16 wire  [   15: 0]         ;
:ab Wire8  wire  [    7: 0]         ;
:ab Wire4  wire  [    3: 0]         ;
:ab Wire3  wire  [    2: 0]         ;
:ab Wire2  wire  [    1: 0]         ;
:ab Wire1  wire                     ;

:ab Reg32 reg   [   31: 0]         ;
:ab Reg16 reg   [   15: 0]         ;
:ab Reg8  reg   [    7: 0]         ;
:ab Reg4  reg   [    3: 0]         ;
:ab Reg3  reg   [    2: 0]         ;
:ab Reg2  reg   [    1: 0]         ;
:ab Reg1  reg                      ;

:ab Initial initial begin<Enter>#1;<Enter>end

:ab Clogb2 function integer clogb2(input integer depth);begin<Enter>if(depth==0)<Enter>clogb2=1;<Enter>else if(depth!=0)<Enter>for(clogb2=0; depth>0;clogb2=clogb2+1)<Enter>depth=depth>>1;<Enter>end<Enter>endfunction

:ab Jsq2 always @(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>cnt0 <= 0;<Enter>end<Enter>else if(add_cnt0)begin<Enter>if(end_cnt0)<Enter>cnt0 <= 0;<Enter>else<Enter>cnt0 <= cnt0 + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt0 = ;<Enter>assign end_cnt0 = add_cnt0 && cnt0== ;<Enter><Enter>always @(posedge clk or negedge rst_n)begin <Enter>if(!rst_n)begin<Enter>cnt1 <= 0;<Enter>end<Enter>else if(add_cnt1)begin<Enter>if(end_cnt1)<Enter>cnt1 <= 0;<Enter>else<Enter>cnt1 <= cnt1 + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt1 = end_cnt0;<Enter>assign end_cnt1 = add_cnt1 && cnt1== ;<Enter>


:ab Jsq3 always @(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>cnt0 <= 0;<Enter>end<Enter>else if(add_cnt0)begin<Enter>if(end_cnt0)<Enter>cnt0 <= 0;<Enter>else<Enter>cnt0 <= cnt0 + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt0 = ;<Enter>assign end_cnt0 = add_cnt0 && cnt0== ;<Enter><Enter>always @(posedge clk or negedge rst_n)begin <Enter>if(!rst_n)begin<Enter>cnt1 <= 0;<Enter>end<Enter>else if(add_cnt1)begin<Enter>if(end_cnt1)<Enter>cnt1 <= 0;<Enter>else<Enter>cnt1 <= cnt1 + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt1 = end_cnt0;<Enter>assign end_cnt1 = add_cnt1 && cnt1== ;<Enter><Enter>always @(posedge clk or negedge rst_n)begin<Enter>if(!rst_n)begin<Enter>cnt2 <= 0;<Enter>end<Enter>else if(add_cnt2)begin<Enter>if(end_cnt2)<Enter>cnt2 <= 0;<Enter>else<Enter>cnt2 <= cnt2 + 1;<Enter>end<Enter>end<Enter><Enter>assign add_cnt2 = end_cnt1;<Enter>assign end_cnt2 = add_cnt2 && cnt2== ;<Enter> 

:ab Shixu2 always  @(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>end<Enter>

:ab Shixu1 always  @(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else if()begin<Enter>end<Enter>end<Enter>
:ab Shixu3 always  @(posedge clk or negedge rst_n)begin<Enter>if(rst_n==1'b0)begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>end<Enter>

:ab Zuhe2 always  @(*)begin<Enter>if()begin<Enter>end<Enter>else begin<Enter>end<Enter>end<Enter>

:ab Zuhe3 always  @(*)begin<Enter>if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else begin<Enter>end<Enter>end<Enter>
:ab Zuhe4 always  @(*)begin<Enter>if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else if()begin<Enter>end<Enter>else begin<Enter>end<Enter>end<Enter>


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

