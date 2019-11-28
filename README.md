# Odisplay server

## Technology stack

- Language: [Haskell](https://www.haskell.org) (`ghc v8.6.5`)
- Tool: [Stack](https://docs.haskellstack.org/en/stable/README/) (`v2.1.13`)
- Framework: [Scotty](https://github.com/scotty-web/scotty)
- Lib:
    - [BlazeHtml](https://jaspervdj.be/blaze/)
    - [Sass](https://sass-lang.com)

## Requirements

- [Git](https://git-scm.com)
- [Haskell Tool Stack](https://docs.haskellstack.org/en/stable/README/)
- [Yarn](https://yarnpkg.com/lang/en/)
- [entr](http://eradman.com/entrproject/)

*Note: entr is used to reload server on haskell files change*

## Installation

```bash
git clone git@github.com:odisplay/server.git
yarn global add purescript psc-package
yarn install
stack build
```

*Note: the first time can take a while, since `stack` needs to download the Haskell compiler `ghc` + all related tools*

## Development

```bash
yarn start
```
