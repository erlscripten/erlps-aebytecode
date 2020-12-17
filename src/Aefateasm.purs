module Aefateasm(erlps__main__1) where
{-
This file has been autogenerated
DO NOT EDIT - Your changes WILL be overwritten
Use this code at your own risk - the authors are just a mischievous raccoon and a haskell devote
Erlscripten v0.0.2
-}

import Prelude
import Data.Array as DA
import Data.List as DL
import Data.Maybe as DM
import Data.Map as Map
import Data.Tuple as Tup
import Data.BigInt as DBI
import Erlang.Builtins as BIF
import Erlang.Binary as BIN
import Erlang.Helpers
import Erlang.Exception as EXC
import Erlang.Type (ErlangFun, ErlangTerm(..), weakCmp, weakEq,
                    weakNEq, weakLt, weakLeq, weakGeq, weakGt)
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import Effect.Exception (throw)
import Partial.Unsafe (unsafePartial)


erlps__usage__0 :: ErlangFun
erlps__usage__0 [] =
  let    tup_el_6 = (make_string "Fate assembler code file")
  in let
    head_1 =
      (ErlangTuple
         [(ErlangAtom "src_file"), (ErlangAtom "undefined"),
          (ErlangAtom "undefined"), (ErlangAtom "string"), tup_el_6])
  in let tup_el_11 = (make_string "verbose")
  in let tup_el_13 = (make_string "Verbose output")
  in let
    head_8 =
      (ErlangTuple
         [(ErlangAtom "verbose"), (ErlangInt (DBI.fromInt 118)),
          tup_el_11, (ErlangAtom "undefined"), tup_el_13])
  in let tup_el_18 = (make_string "help")
  in let tup_el_20 = (make_string "Show this message")
  in let
    head_15 =
      (ErlangTuple
         [(ErlangAtom "help"), (ErlangInt (DBI.fromInt 104)), tup_el_18,
          (ErlangAtom "undefined"), tup_el_20])
  in let tup_el_25 = (make_string "out")
  in let tup_el_27 = (make_string "Output file (experimental)")
  in let
    head_22 =
      (ErlangTuple
         [(ErlangAtom "outfile"), (ErlangInt (DBI.fromInt 111)),
          tup_el_25, (ErlangAtom "string"), tup_el_27])
  in let arg_29 = (make_string "aefateasm")
  in
    (BIF.do_remote_fun_call "Getopt" "erlps__usage__2"
       [(ErlangCons head_1
           (ErlangCons head_8
              (ErlangCons head_15 (ErlangCons head_22 ErlangEmptyList)))),
        arg_29])
erlps__usage__0 args =
  (EXC.badarity
     (ErlangFun 0 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__main__1 :: ErlangFun
erlps__main__1 [args_0] =
  let    tup_el_8 = (make_string "Fate assembler code file")
  in let
    head_3 =
      (ErlangTuple
         [(ErlangAtom "src_file"), (ErlangAtom "undefined"),
          (ErlangAtom "undefined"), (ErlangAtom "string"), tup_el_8])
  in let tup_el_13 = (make_string "verbose")
  in let tup_el_15 = (make_string "Verbose output")
  in let
    head_10 =
      (ErlangTuple
         [(ErlangAtom "verbose"), (ErlangInt (DBI.fromInt 118)),
          tup_el_13, (ErlangAtom "undefined"), tup_el_15])
  in let tup_el_20 = (make_string "help")
  in let tup_el_22 = (make_string "Show this message")
  in let
    head_17 =
      (ErlangTuple
         [(ErlangAtom "help"), (ErlangInt (DBI.fromInt 104)), tup_el_20,
          (ErlangAtom "undefined"), tup_el_22])
  in let tup_el_27 = (make_string "out")
  in let tup_el_29 = (make_string "Output file (experimental)")
  in let
    head_24 =
      (ErlangTuple
         [(ErlangAtom "outfile"), (ErlangInt (DBI.fromInt 111)),
          tup_el_27, (ErlangAtom "string"), tup_el_29])
  in let
    case_1 =
      (BIF.do_remote_fun_call "Getopt" "erlps__parse__2"
         [(ErlangCons head_3
             (ErlangCons head_10
                (ErlangCons head_17 (ErlangCons head_24 ErlangEmptyList)))),
          args_0])
  in
    case case_1 of
      (ErlangTuple [(ErlangAtom "ok"),
                    (ErlangTuple [opts_32, (ErlangEmptyList)])]) ->
        let
          case_33 =
            (BIF.do_remote_fun_call "Proplists" "erlps__get_value__3"
               [(ErlangAtom "help"), opts_32, (ErlangAtom "false")])
        in
          case case_33 of
            (ErlangAtom "false") -> (erlps__assemble__1 [opts_32])
            (ErlangAtom "true") -> (erlps__usage__0 [])
            something_else -> (EXC.case_clause something_else)
      (ErlangTuple [(ErlangAtom "ok"),
                    (ErlangTuple [_, nonopts_38])]) ->
        let    arg_39 = (make_string "Can\'t understand ~p\n\n")
        in let
          _ =
            (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__2"
               [arg_39, (ErlangCons nonopts_38 ErlangEmptyList)])
        in (erlps__usage__0 [])
      (ErlangTuple [(ErlangAtom "error"),
                    (ErlangTuple [reason_43, data_44])]) ->
        let    arg_45 = (make_string "Error: ~s ~p\n\n")
        in let
          _ =
            (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__2"
               [arg_45,
                (ErlangCons reason_43 (ErlangCons data_44 ErlangEmptyList))])
        in (erlps__usage__0 [])
      something_else -> (EXC.case_clause something_else)
erlps__main__1 [arg_51] = (EXC.function_clause unit)
erlps__main__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__assemble__1 :: ErlangFun
erlps__assemble__1 [opts_0] =
  let
    case_1 =
      (BIF.do_remote_fun_call "Proplists" "erlps__get_value__3"
         [(ErlangAtom "src_file"), opts_0, (ErlangAtom "undefined")])
  in
    case case_1 of
      (ErlangAtom "undefined") ->
        let    arg_5 = (make_string "Error: no input source file\n\n")
        in let
          _ =
            (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__1" [arg_5])
        in (erlps__usage__0 [])
      file_6 -> (erlps__assemble__2 [file_6, opts_0])
      something_else -> (EXC.case_clause something_else)
erlps__assemble__1 [arg_9] = (EXC.function_clause unit)
erlps__assemble__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__assemble__2 :: ErlangFun
erlps__assemble__2 [file_0, opts_1] =
  let   
    verbose_5 =
      (BIF.do_remote_fun_call "Proplists" "erlps__get_value__3"
         [(ErlangAtom "verbose"), opts_1, (ErlangAtom "false")])
  in let
    case_6 =
      (BIF.do_remote_fun_call "Proplists" "erlps__get_value__3"
         [(ErlangAtom "outfile"), opts_1, (ErlangAtom "undefined")])
  in
    case case_6 of
      (ErlangAtom "undefined") ->
        let   
          asm_11 =
            (BIF.do_remote_fun_call "Aeb.Fate.Asm" "erlps__read_file__1"
               [file_0])
        in let
          match_expr_16 =
            (BIF.do_remote_fun_call "Aeb.Fate.Asm"
               "erlps__asm_to_bytecode__2" [asm_11, opts_1])
        in
          case match_expr_16 of
            (ErlangTuple [env_14, bc_15]) ->
              let   
                _ =
                  case verbose_5 of
                    (ErlangAtom "true") ->
                      let arg_18 = (make_string "Env: ~0p~n")
                      in
                        (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__2"
                           [arg_18, (ErlangCons env_14 ErlangEmptyList)])
                    (ErlangAtom "false") -> (ErlangAtom "ok")
                    something_else -> (EXC.case_clause something_else)
              in let arg_22 = (make_string "Code: ~0p~n")
              in
                (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__2"
                   [arg_22, (ErlangCons bc_15 ErlangEmptyList)])
            _ -> (EXC.badmatch match_expr_16)
      outfile_26 ->
        (BIF.do_remote_fun_call "Aeb.Fate.Asm" "erlps__assemble_file__3"
           [file_0, outfile_26, opts_1])
      something_else -> (EXC.case_clause something_else)
erlps__assemble__2 [arg_30, arg_31] = (EXC.function_clause unit)
erlps__assemble__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)