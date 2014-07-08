
" Enable pathogen to load from bundles. Stored in ~/.vim/bundle
" This allows you to easily clone a git repo:
" git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/airline

filetype off
call pathogen#infect()
call pathogen#helptags()

" Code folding for Python mostly
set foldmethod=indent
set foldlevel=99

" Window Splits, map C-w (h, j, k, l) to C-h C-j C-k C-l as well
map <c-j> <c-w> j
map <c-k> <c-w> k
map <c-h> <c-w> h
map <c-l> <c-w> l

" We already have snipmate loaded for snippets, e.g. def<tab> will stub out function for python
" add more snippets in ~/.vim/snippets
" e.g. vim ~/.vim/snippets/python.snippets
" snippet pdb
" 	import pdb; pdb.set_trace()


" Task lists. For anything marked with TODO or FIXME
map <leader>td <Plug>TaskList

" Gundo
map <leader>g :GundoToggle<CR>

syntax on
" Try to detect filetypes
filetype on
" Enable loading indentfile based on filetype
filetype plugin indent on

map <leader>n :NERDTreeToggle<CR>

" Make vim virtualenv aware, so it can do code-completion if we have that enabled
py << EOF
import os.path
import sys
import vim
if 'VIRTUALENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__='activate_this'))
EOF

