{-# LANGUAGE OverloadedStrings #-}

module Shared.Main.View where

import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes

view :: Html -> Html
view children = do
  link ! rel "stylesheet" ! href "/static/main.css"
  main children ! class_ "main"
