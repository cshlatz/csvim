## Required Plugins
- Airline `git clone https://github.com/vim-airline/vim-airline`
- NerdTREE `git clone https://github.com/scrooloose/nerdtree`
- YouCompleteMe `git clone https://github.com/valloric/youcompleteme`

## YouCompleteMe config
### Javascript
YouCompleteMe completion for javascript uses the typescript engine.
```
cd ~/.vim/bundle/youcompleteme && python3 install.py --ts-completer
```

At the base of a project:
```
touch jsconfig.json
```
```
{
    "compilerOptions": {
        "checkJs": true
    }
}
```
