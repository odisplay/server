{-# LANGUAGE OverloadedStrings #-}

module Home.Handler where

import           Web.Scotty                    as Scotty
import           Text.Blaze.Html5              as Html
import           Text.Blaze.Html5.Attributes
import           Text.Blaze.Html.Renderer.Utf8
import           Data.Text.Lazy.Encoding

import           Home.View                     as Home

handle :: ActionM ()
handle = Home.render
