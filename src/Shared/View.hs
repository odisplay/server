module Shared.View where

import           Data.Text.Lazy.Encoding        ( decodeUtf8 )
import qualified Web.Scotty                    as S
import qualified Text.Blaze.Html.Renderer.Utf8 as BR
import qualified Text.Blaze.Html5              as B

type View = S.ActionM ()

renderView :: B.Html -> View
renderView = S.html . decodeUtf8 . BR.renderHtml
