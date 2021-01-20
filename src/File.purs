module File where

import Erlang.Type
import Erlang.Exception as EXC
import Erlang.Helpers as H
import Data.Maybe as DM
import Node.Buffer
import Prelude

foreign import readFileImpl :: (Buffer -> ErlangTerm) -> ErlangTerm -> String -> ErlangTerm

erlps__read_file__1 [estr] | DM.Just str <- H.erlangListToString estr =
  readFileImpl (\buf -> ErlangTuple [ErlangAtom "ok", ErlangBinary buf])
  (ErlangTuple [ErlangAtom "error", ErlangAtom "enoent"]) str
erlps__read_file__1 [_] = EXC.badarg unit
erlps__read_file__1 args = EXC.badarity (ErlangFun 1 erlps__read_file__1) args

erlps__native_name_encoding__0 :: ErlangFun
erlps__native_name_encoding__0 [] = ErlangAtom "latin1"
erlps__native_name_encoding__0 args = EXC.badarity (ErlangFun 0 erlps__native_name_encoding__0) args
