{-# LANGUAGE OverloadedStrings #-}

module Home.View where

import           Prelude                 hiding ( head )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( title )

import           Shared.View
import           Nav.View                      as Nav
import           Aside.View                    as Aside

render :: View
render = renderView $ do
  head $ do
    title "Odisplay server"
    link ! rel "stylesheet" ! href "/static/styles.css"
  body $ do
    Nav.view
    Aside.view
