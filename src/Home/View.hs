{-# LANGUAGE OverloadedStrings #-}

module Home.View where

import           Web.Scotty                    as Scotty
import           Text.Blaze.Html5              as Html
import           Text.Blaze.Html5.Attributes
import           Text.Blaze.Html.Renderer.Utf8
import           Data.Text.Lazy.Encoding

render :: ActionM ()
render = Scotty.html $ decodeUtf8 $ renderHtml $ do
  Html.head $ Html.title "Home"
  Html.body $ p "Home"
