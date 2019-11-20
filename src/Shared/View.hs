module Shared.View where

import           Data.Text.Lazy.Encoding        ( decodeUtf8 )
import qualified Web.Scotty                    as S
import qualified Text.Blaze.Html.Renderer.Utf8 as BR
import qualified Text.Blaze.Html5              as B
import qualified Clay                          as C

type View = S.ActionM ()

renderView :: Maybe C.Css -> B.Html -> View
renderView style html = case style of
  Nothing    -> renderHtml html
  Just style -> renderHtml $ do
    renderStyle style
    html
 where
  renderHtml  = S.html . decodeUtf8 . BR.renderHtml
  renderStyle = B.style . B.toHtml . C.renderWith C.compact []
