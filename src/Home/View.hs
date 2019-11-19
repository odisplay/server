{-# LANGUAGE OverloadedStrings #-}

module Home.View where

import qualified Web.Scotty                    as Scotty
import           Web.Scotty                     ( ActionM )
import qualified Text.Blaze.Html5              as Html
import           Text.Blaze.Html5               ( (!) )
import qualified Text.Blaze.Html5.Attributes   as Attr
import qualified Clay                          as Style
import           Clay                           ( Css
                                                , (?)
                                                )
import           Text.Blaze.Html.Renderer.Utf8
import           Data.Text.Lazy.Encoding

render :: ActionM ()
render = Scotty.html $ decodeUtf8 $ renderHtml $ do
  Html.head $ do
    Html.title "Home"
    Html.style $ Html.toHtml $ Style.renderWith Style.compact [] style
  Html.body $ do
    Html.div "Home" ! Attr.class_ "title"

style :: Css
style = ".title" ? do
  Style.color "#ff0000"
