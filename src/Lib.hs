{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( someFunc
    ) where

import qualified Data.Text.Lazy.IO as TIO
import qualified Data.Text.Lazy as T


someFunc :: IO ()
someFunc = TIO.interact $ remove "-\n" . remove "-\r" . remove "-\r\n"

remove :: T.Text -> T.Text -> T.Text
remove text = T.replace text ""

