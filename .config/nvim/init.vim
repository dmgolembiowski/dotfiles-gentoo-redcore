if has('cryptv') | set cryptmethod=blowfish | endif
let mapleader = "\<Space>"

" call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fix dianostics color
"Plug 'folke/lsp-colors.nvim'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'jam1garner/vim-code-monokai'
Plug 'vim-airline/vim-airline'
Plug 'timonv/vim-cargo'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
Plug 'ray-x/navigator.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-refactor' 

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
" Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" See hrsh7th's other plugins for more completion sources!

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'

" Fuzzy finder
" Optional
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-lua/plenary.nvim'

" Code Action stuff
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'

" Plug 'tami5/lspsaga.nvim'

" Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Syntax
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'leafOfTree/vim-svelte-plugin'
" Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'nikvdp/neomux'
Plug 'preservim/nerdtree'
Plug 'tzachar/cmp-tabnine', { 'do': '/bin/bash ./install.sh'}
Plug 'skywind3000/asyncrun.vim', {'on': ['AsyncRun', 'AsyncStop'] }
Plug 'skywind3000/vim-cppman', {'on': 'Cppman'}
Plug 'skywind3000/asynctasks.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
" Plug 'cdelledonne/vim-cmake'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc.nvim', {'branch': 'release'} | Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

set number
set cursorline
set nowrap

set incsearch
set hlsearch

" set termguicolors

" colorscheme codedark
imap jj <Esc>
imap fff <Esc>
nnoremap ;; <Esc><C-w>
inoremap ;;n <Esc><cr>:new<Esc><C-w>j
nnoremap ljlj <Esc>:vertical resize -13<Enter>
nnoremap ljlh <Esc>:vertical resize +13<Enter>

" Various settings
set number
set cursorline
set nowrap
set incsearch
set hlsearch
" set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
set listchars=nbsp:¬,extends:»,precedes:«,trail:•



" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" Jump to last edit position on opening file
" https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
hi LspDiagnosticsVirtualTextInformation guifg=Blue ctermfg=Blue
hi LspDiagnosticsVirtualTextHint guifg=Green ctermfg=Green

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" pressing _( in visual mode will surround in parens
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>

" let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '<': '>'}

" Airline config
" let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
" colorscheme aurora
" colorscheme cyberpunk
" colorscheme habamax 
highlight Normal guibg=none
highlight NonText guibg=none
au ColorScheme * hi Normal ctermbg=none guibg=none
" au ColorScheme myspecialcolors hi Normal ctermbg=none guibg=none

let g:airline_theme = "tokyonight"
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" markdown line wrapping
au BufRead,BufNewFile *.md setlocal wrap
au! BufRead,BufNewFile *.vh       setfiletype systemverilog

" coc.vim goto definition
"function! s:GoToDefinition()
"  if CocAction('jumpDefinition')
"    return v:true
"  endif
"
"  let ret = execute("silent! normal \<C-]>")
"  if ret =~ "Error" || ret =~ "错误"
"    call searchdecl(expand('<cword>'))
"  endif
"endfunction
"
"" coc.nvim
nmap <silent> gd :call <SID>GoToDefinition()<CR>
nmap <leader>rn <Plug>(coc-rename)

" Formatting
" autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
" :command Format lua vim.lsp.buf.formatting_sync(nil, 2000)

" K = show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" nvim config stuff

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c


" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration
lua <<EOF
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})
EOF

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent>ga <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent>ga :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float()

" Disable being able to focus on the floating diagnostics
lua <<EOF
vim.diagnostic.config({
float = {
    focusable = false,
    }
})
EOF

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Telescope
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

set mouse=a

nnoremap ga <Esc>:lua vim.lsp.buf.code_action()<Enter>1<Enter>

" Code hover_with_actions
lua <<EOF
--vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF

"lua <<EOF
"local saga = require 'lspsaga'

"saga.init_lsp_saga()
"EOF

"nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
"noremap  <silent> <F5>             <Esc>:RunTask<CR>
"noremap! <silent> <F5>             <Esc>:RunTask<CR>
"noremap  <silent> <Leader>x        <Esc>:RunTask<CR>

" Configuration example
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

let g:floaterm_keymap_new = '<Leader>ft'

noremap  <silent> <F12>            <Esc>:FloatermToggle<CR>
noremap! <silent> <F12>            <Esc>:FloatermToggle<CR>
tnoremap <silent> <F12>            <C-\><C-n>:FloatermToggle<CR>

" map <C-LeftMouse> <C-i>
" map <C-RightMouse> <C-o>
" map <2-LeftMouse> <C-j>
" map <RightMouse> <C-o>
" map <MiddleMouse> <C-K>
" noremap <LeftRelease> <LeftRelease>y<ESC>\

lua <<EOF
require'navigator'.setup()
EOF
