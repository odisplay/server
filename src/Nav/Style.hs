{-# LANGUAGE OverloadedStrings #-}

module Nav.Style where

import           Clay

style :: Css
style = "nav" ? do
  backgroundColor "#20222d"
  width $ px 250
