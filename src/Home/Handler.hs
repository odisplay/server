module Home.Handler where

import           Shared.ViewUtils               ( View )
import           Home.View                     as Home

handle :: View
handle = Home.render
