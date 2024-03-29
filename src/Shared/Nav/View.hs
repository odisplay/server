{-# LANGUAGE OverloadedStrings #-}

module Shared.Nav.View where

import           Prelude                 hiding ( div
                                                , span
                                                , id
                                                )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( style
                                                , span
                                                )

view :: Html
view = do
  nav ! id "nav" ! class_ "nav" $ do
    header ! class_ "nav-logo" $ do
      img ! src "#"
    a ! class_ "nav-item active" ! href "#" $ do
      span ! class_ "nav-item-icon" $ img ! src "#"
      span ! class_ "nav-item-text" $ text "Écrans"
      span "1" ! class_ "nav-item-count"
    a ! class_ "nav-item" ! href "#" $ do
      span ! class_ "nav-item-icon" $ img ! src "#"
      span ! class_ "nav-item-text" $ text "Playlist"
    a ! class_ "nav-subitem" ! href "#" $ do
      span ! class_ "nav-item-text" $ do
        span "" ! class_ "nav-item-pill"
        text "Playlist exemple"
    a ! class_ "nav-item" ! href "#" $ do
      span ! class_ "nav-item-icon" $ img ! src "#"
      span ! class_ "nav-item-text" $ text "Planning"
    a ! class_ "nav-subitem" ! href "#" $ do
      span ! class_ "nav-item-text" $ do
        span "" ! class_ "nav-item-pill"
        text "Planning exemple"
  link ! rel "stylesheet" ! href "/static/nav.css"
  script "" ! src "/static/nav.js"
