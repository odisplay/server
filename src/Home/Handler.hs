module Home.Handler where

import           Shared.View                    ( View )
import           Home.View                     as Home

handle :: View
handle = Home.render
