{-# LANGUAGE OverloadedStrings #-}

module Home.View where

import           Prelude                 hiding ( head
                                                , div
                                                )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( title )

import           Shared.ViewUtils
import           Shared.Nav.View               as Nav
import           Shared.Aside.View             as Aside
import           Shared.Main.View              as Main

render :: View
render = renderView $ do
  head $ do
    title "Odisplay server"
    link ! rel "stylesheet" ! href "/static/home.css"
  body $ do
    Nav.view
    Aside.view
    Main.view $ h1 "Home"
