{-# LANGUAGE DeriveGeneric #-}

module DecodableUser
( DecodableUser(..)
) where

import qualified Data.Text as T
import qualified Data.Aeson as A

import GHC.Generics

data DecodableUser
    = User
        { name :: T.Text
        , email :: T.Text
        , username :: Maybe T.Text }
     deriving (Eq, Generic, Show)

instance A.ToJSON DecodableUser
instance A.FromJSON DecodableUser
