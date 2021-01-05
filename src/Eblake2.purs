module Eblake2 where

import Node.Buffer
import Erlang.Type
import Erlang.Exception as EXC
import Erlang.Helpers as H
import Data.Maybe as DM
import Prelude

foreign import blake2bImpl :: Int -> Buffer -> Buffer

erlps__blake2b__2 :: ErlangFun
erlps__blake2b__2 [ErlangInt bi, ErlangBinary buf] | DM.Just i <- H.bigIntToInt bi
  = ErlangTuple [ErlangAtom "ok", ErlangBinary (blake2bImpl i buf)]
erlps__blake2b__2 [_, _] = EXC.badarg unit
erlps__blake2b__2 args = EXC.badarity (ErlangFun 2 erlps__blake2b__2) args
