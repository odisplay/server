{-# LANGUAGE OverloadedStrings #-}

module Home.View where

import           Prelude                 hiding ( head )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( title )

import           Shared.View
import           Nav.View                      as Nav

render :: View
render = renderView $ do
  head $ do
    title "Home"
    link ! rel "stylesheet" ! href "/static/styles.css"
  body $ do
    Nav.view
