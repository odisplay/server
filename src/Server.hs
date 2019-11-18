{-# LANGUAGE OverloadedStrings #-}

module Server where

import           Web.Scotty

import           Data.Monoid                    ( mconcat )

start :: IO ()
start = scotty 3000 $ get "/:word" $ do
  beam <- param "word"
  html $ mconcat ["<h1>iiScotty, ", beam, " me up!</h1>"]
