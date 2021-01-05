module File where

import Erlang.Type
import Erlang.Exception as EXC
import Erlang.Helpers as H
import Data.Maybe as DM
import Prelude

foreign import readFileImpl
  :: (String -> ErlangTerm) -> ErlangTerm -> String -> ErlangTerm

erlps__read_file__1 [estr] | DM.Just str <- H.erlangListToString estr =
  readFileImpl H.make_string (ErlangTuple [ErlangAtom "error", ErlangAtom "enoent"]) str
erlps__read_file__1 [_] = EXC.badarg unit
erlps__read_file__1 args = EXC.badarity (ErlangFun 1 erlps__read_file__1) args
