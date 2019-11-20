{-# LANGUAGE OverloadedStrings #-}

module Nav.View where

import           Prelude                 hiding ( div )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( style )

import           Shared.View
import           Nav.Style                      ( style )

view :: Html
view = nav $ do
  header $ do
    img ! src "#"
  div $ do
    div "Écrans"
    div "Playlist"
    div "Planning"
