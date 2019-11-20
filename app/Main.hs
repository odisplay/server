{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Web.Scotty

import qualified Home.Handler                  as Home

main :: IO ()
main = scotty 3000 $ do
  get "/" Home.handle
  get "/static/:file" $ do
    fileName <- param "file"
    file $ "./static/" ++ fileName
