set textwidth=0 " 一行に長い文章を書いていても自動折り返しをしない
set nobackup " バックアップ取らない
set autoread " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions=lmoq " テキスト整形オプション，マルチバイト系を追加
set vb t_vb= " ビープをならさない
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set showcmd " コマンドをステータス行に表示
set showmode " 現在のモードを表示
set colorcolumn=80 "80文字のとろこに線を引く
set expandtab " Tabキーを空白に変換
set wrapscan " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch " インクリメンタルサーチ
set hlsearch " 検索文字をハイライト
set laststatus=2 " 常にステータスラインを表示
set encoding=utf-8 " デフォルトエンコーディング
set number " 行番号を表示
set cursorline

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=2
set shiftwidth=2"

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

" 括弧/クォートを補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" インサートモードでCTRL-hjklで移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 矢印を無効化
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <C-g> 1<C-g>
augroup EchoFilePath
  autocmd WinEnter * execute "normal! 1\<C-g>"
augroup END""


nnoremap <silent><C-n> :NERDTreeToggle<CR> "起動"
"===============================================
" カラー設定
"===============================================


"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
"
"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"NERDTreeを設定                  <----- 追記
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()


"-------------------------
" NEADTree Setting.
"-------------------------

execute pathogen#infect()
"===============================================
" カラー設定
"===============================================
" シンタックスハイライトを有効にする
syntax enable
" 背景色を dark にする
set background=dark

" 輝度とコントラストは、最初はデフォルトを試すのがオススメです
" 自分はコントラストだけ高くしています
" (ここではコメントアウトしています)

" コントラストを高くする
let g:solarized_contrast = "high"

" カラースキーマを Solarized にする
colorscheme solarized
