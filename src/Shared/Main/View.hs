{-# LANGUAGE OverloadedStrings #-}

module Shared.Main.View where

import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes

view :: Html -> Html
view = main ! class_ "main"
