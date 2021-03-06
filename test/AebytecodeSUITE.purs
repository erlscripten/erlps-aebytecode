module Aebytecode.SUITE(erlps__all__0,
                        erlps__roundtrip_identy__1) where
{-
This file has been autogenerated
DO NOT EDIT - Your changes WILL be overwritten
Use this code at your own risk - the authors are just a mischievous raccoon and a haskell devote
Erlscripten v0.2.0
-}

import Prelude
import Data.BigInt as DBI
import Data.Array as DA
import Data.Maybe as DM
import Data.Map as Map
import Data.Tuple as DT
import Erlang.Builtins as BIF
import Erlang.Binary as BIN
import Erlang.Helpers
import Erlang.Exception as EXC
import Erlang.Type
import Partial.Unsafe (unsafePartial)


erlps__all__0 :: ErlangFun
erlps__all__0 [] =
  ErlangCons (ErlangAtom "roundtrip_identy") ErlangEmptyList
erlps__all__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__roundtrip_identy__1 :: ErlangFun
erlps__roundtrip_identy__1 [_cfg_0] =
  let   
    codedir_3 =
      toErl "aebytecode/test"
  in let arg_5 = toErl "asm_code/identity.aesm"
  in let
    filename_6 =
      BIF.do_remote_fun_call "Filename" "erlps__join__2"
        [codedir_3, arg_5]
  in let
    code_9 =
      BIF.do_remote_fun_call "Aeb.Asm" "erlps__file__2"
        [filename_6, ErlangEmptyList]
  in let arg_10 = toErl "Code ~p:~n~s~n"
  in let arg_19 = toErl 2
  in let
    arg_16 =
      BIF.erlang__make_fun__3
        [ErlangAtom "io", ErlangAtom "format", arg_19]
  in let
    head_14 =
      BIF.do_remote_fun_call "Aeb.Disassemble" "erlps__format__2"
        [code_9, arg_16]
  in let
    _ =
      BIF.do_remote_fun_call "Io" "erlps__format__2"
        [arg_10,
         ErlangCons filename_6 (ErlangCons head_14 ErlangEmptyList)]
  in ErlangAtom "ok"
erlps__roundtrip_identy__1 [arg_21] = EXC.function_clause unit
erlps__roundtrip_identy__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args