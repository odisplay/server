module Nav.Handler where

import           Shared.View                    ( View )
import qualified Home.View                     as Home

handle :: View
handle = Home.render
