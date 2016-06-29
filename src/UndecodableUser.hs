{-# LANGUAGE DeriveGeneric #-}

module UndecodableUser
( UndecodableUser(..)
) where

import qualified Data.Text as T
import qualified Data.Aeson as A

import GHC.Generics

data UndecodableUser
    = SmallUser
        { name :: T.Text
        , email :: T.Text
        , username :: Maybe T.Text }
    | BigUser
        { a :: T.Text
        , b :: T.Text
        , c :: T.Text
        , d :: T.Text }
     deriving (Eq, Generic, Show)

instance A.ToJSON UndecodableUser
instance A.FromJSON UndecodableUser
