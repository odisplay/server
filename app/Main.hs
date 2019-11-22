{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Web.Scotty
import           Data.Maybe
import           System.Environment
import           Text.Read                      ( readMaybe )

import qualified Home.Handler                  as Home

main :: IO ()
main = do
  port <- getPort
  scotty port $ do
    get "/" Home.handle
    get "/static/:file" $ do
      fileName <- param "file"
      file $ "./static/" ++ fileName

getPort :: IO Int
getPort = do
  port <- fromMaybe "3000" <$> lookupEnv "PORT"
  return $ fromMaybe 3000 (readMaybe port :: Maybe Int)
