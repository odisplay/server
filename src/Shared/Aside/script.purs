module Aside.Main where

import Prelude
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Web.DOM.NonElementParentNode (getElementById) as DOM
import Web.DOM.Element (Element, toEventTarget, getAttribute, setAttribute, removeAttribute) as DOM
import Web.HTML (window) as DOM
import Web.HTML.HTMLDocument (toNonElementParentNode) as DOM
import Web.HTML.Window (document) as DOM
import Web.Event.Event (Event, EventType(..))
import Web.Event.EventTarget (addEventListener, eventListener)

on :: String -> (Event -> Effect Unit) -> DOM.Element -> Effect Unit
on evt cb el = do
  listener <- eventListener cb
  addEventListener (EventType evt) listener true (DOM.toEventTarget el)
  
main :: Effect Unit
main = do
  window <- DOM.window
  document <- DOM.document window
  let parent = DOM.toNonElementParentNode document
  maybeBurger <- DOM.getElementById "burger" parent
  maybeNav <- DOM.getElementById "nav" parent

  case maybeBurger of
    Nothing -> pure unit
    Just burger -> on "click" (toggleNav maybeNav) burger

toggleNav :: Maybe DOM.Element -> Event -> Effect Unit
toggleNav maybeNav evt = case maybeNav of
  Nothing -> pure unit
  Just nav -> do
    isVisible <- DOM.getAttribute "data-visible" nav
    case isVisible of
      Nothing -> DOM.setAttribute "data-visible" "" nav
      Just _ -> DOM.removeAttribute "data-visible" nav
