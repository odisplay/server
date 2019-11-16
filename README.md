# Odisplay server

## Technology stack

- Language: [Haskell](https://www.haskell.org) (`ghc v8.6.5`)
- Framework: [Yesod](https://www.yesodweb.com)
- Tools:
    - [Stack](https://docs.haskellstack.org/en/stable/README/) (`v2.1.13`)

## Requirements

- [Git](https://git-scm.com)
- [Haskell Tool Stack](https://docs.haskellstack.org/en/stable/README/)

## Installation

```bash
git clone git@github.com:odisplay/server.git
stack setup
stack build
```

*Note: the first time can take a while, since `stack` needs to download the Haskell compiler `ghc` + all related tools*
