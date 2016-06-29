{-# LANGUAGE OverloadedStrings #-}

module Repro
( main
) where

import DecodableUser
import UndecodableUser

import qualified Data.Aeson as A

main :: IO ()
main = do
    putStrLn $ "User 1 decodes to: " ++ show user1
    putStrLn $ "User 2 decodes to: " ++ show user2
    where
        user1 = A.eitherDecode toDecode :: Either String DecodableUser
        user2 = A.eitherDecode toDecode :: Either String UndecodableUser

        toDecode = "{\"name\":\"Abc Def\", \"email\":\"a@b.c\", \"username\":\"abc123\"}"