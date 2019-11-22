{-# LANGUAGE OverloadedStrings #-}

module Shared.Aside.View where

import           Prelude                 hiding ( div
                                                , span
                                                )
import           Text.Blaze.Html5        hiding ( style )
import           Text.Blaze.Html5.Attributes
                                         hiding ( style
                                                , span
                                                )

view :: Html
view = aside ! class_ "aside" $ do
  div ! class_ "aside-burger" $ a ! href "#" $ img ! src "#"
  a ! class_ "aside-account" ! href "#" $ do
    div ! class_ "aside-account-icon" $ img ! src "#"
    div "Mon compte" ! class_ "aside-account-label"
  div ! class_ "aside-info" $ do
    div "" ! class_ "aside-info-arrow"
    div ! class_ "aside-info-label" $ do
      text "Il vous reste "
      strong "14"
      text " jours d'évaluation - "
      strong "Passer au premium"
  div ""
  a ! class_ "aside-nav-item" ! href "#" $ do
    img ! src "#"
    div $ text "Besoin d'aide"
  a ! class_ "aside-nav-item" ! href "#" $ do
    img ! src "#"
    div $ text "Se déconnecter"
  a ! class_ "aside-nav-item" ! href "#" $ img ! src "#"
