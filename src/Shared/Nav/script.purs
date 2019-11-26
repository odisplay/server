module Nav.Main where

import Prelude
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console (log)
import Web.DOM.NonElementParentNode (getElementById) as DOM
import Web.DOM.Element (toEventTarget) as DOM
import Web.HTML (window) as DOM
import Web.HTML.HTMLDocument (toNonElementParentNode) as DOM
import Web.HTML.Window (document) as DOM
import Web.Event.Event (Event, EventType(..))
import Web.Event.EventTarget (addEventListener, eventListener)

coucou :: Event -> Effect Unit
coucou _ = log "coucou"

main :: Effect Unit
main = do
  window <- DOM.window
  document <- DOM.document window
  let parent = DOM.toNonElementParentNode document
  maybeNav <- DOM.getElementById "nav" parent

  case maybeNav of
    Just nav -> do
      onClick <- addEventListener (EventType "click") <$> (eventListener coucou)
      onClick true $ DOM.toEventTarget nav
      log "done"
    Nothing -> log "no"
