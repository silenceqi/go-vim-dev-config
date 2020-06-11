# go-vim-dev-config
## plug install
:PlugInstall 
## config gopls
:CocConfig
```
{
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "trace.server": "verbose",
      "filetypes": ["go"]
    }   
  }
}
```

## support javascript autocompletion
:CocInstall coc-tsserver coc-json
