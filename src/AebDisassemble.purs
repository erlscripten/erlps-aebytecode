module Aeb.Disassemble(erlps__pp__1, erlps__format__2,
                       erlps__format_address__1) where
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


erlps__pp__1 :: ErlangFun
erlps__pp__1 [binary_0] =
  let   
    arg_2 =
      (BIF.erlang__make_fun__3
         [(ErlangAtom "io"), (ErlangAtom "format"),
          (ErlangInt (DBI.fromInt 2))])
  in let listing_6 = (erlps__format__2 [binary_0, arg_2])
  in let arg_7 = (make_string "~s~n")
  in
    (BIF.do_remote_fun_call "Erlang.Io" "erlps__format__2"
       [arg_7, (ErlangCons listing_6 ErlangEmptyList)])
erlps__pp__1 [arg_11] = (EXC.function_clause unit)
erlps__pp__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__format__2 :: ErlangFun
erlps__format__2 [binary_0, errformatfun_1] =
  let
    arg_3 =
      (BIF.do_remote_fun_call "Binary" "erlps__bin_to_list__1"
         [binary_0])
  in
    (erlps__pp__4
       [(ErlangInt (DBI.fromInt 0)), arg_3, ErlangEmptyList,
        errformatfun_1])
erlps__format__2 [arg_7, arg_8] = (EXC.function_clause unit)
erlps__format__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__pp__4 :: ErlangFun
erlps__pp__4 [address_0, (ErlangCons op_1 ops_2), assembly_3,
              errformatfun_4]
  =
  case op_1 of
    x_6 | ((weakGeq x_6 (ErlangInt (DBI.fromInt 0))) &&
             (weakLeq x_6 (ErlangInt (DBI.fromInt 11)))) ->
      let   
        arg_8 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_11 =
          (erlps__pp_instruction__3 [address_0, arg_8, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_11, assembly_3, errformatfun_4])
    x_17 | ((weakGeq x_17 (ErlangInt (DBI.fromInt 16))) &&
              (weakLeq x_17 (ErlangInt (DBI.fromInt 26)))) ->
      let   
        arg_19 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_22 =
          (erlps__pp_instruction__3 [address_0, arg_19, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_22, assembly_3, errformatfun_4])
    x_28 | ((weakGeq x_28 (ErlangInt (DBI.fromInt 32))) &&
              (weakLeq x_28 (ErlangInt (DBI.fromInt 32)))) ->
      let   
        arg_30 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_33 =
          (erlps__pp_instruction__3 [address_0, arg_30, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_33, assembly_3, errformatfun_4])
    x_39 | ((weakGeq x_39 (ErlangInt (DBI.fromInt 48))) &&
              (weakLeq x_39 (ErlangInt (DBI.fromInt 60)))) ->
      let   
        arg_41 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_44 =
          (erlps__pp_instruction__3 [address_0, arg_41, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_44, assembly_3, errformatfun_4])
    x_50 | ((weakGeq x_50 (ErlangInt (DBI.fromInt 64))) &&
              (weakLeq x_50 (ErlangInt (DBI.fromInt 69)))) ->
      let   
        arg_52 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_55 =
          (erlps__pp_instruction__3 [address_0, arg_52, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_55, assembly_3, errformatfun_4])
    x_61 | ((weakGeq x_61 (ErlangInt (DBI.fromInt 80))) &&
              (weakLeq x_61 (ErlangInt (DBI.fromInt 91)))) ->
      let   
        arg_63 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_66 =
          (erlps__pp_instruction__3 [address_0, arg_63, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_66, assembly_3, errformatfun_4])
    x_72 | ((weakGeq x_72 (ErlangInt (DBI.fromInt 96))) &&
              (weakLeq x_72 (ErlangInt (DBI.fromInt 127)))) ->
      let   
        lop_73 =
          (BIF.erlang__op_minus [x_72, (ErlangInt (DBI.fromInt 96))])
      in let
        bytes_77 =
          (BIF.erlang__op_plus [lop_73, (ErlangInt (DBI.fromInt 1))])
      in let
        match_expr_82 =
          (BIF.do_remote_fun_call "Lists" "erlps__split__2"
             [bytes_77, ops_2])
      in
        case match_expr_82 of
          (ErlangTuple [arglist_80, nextops_81]) ->
            let    arg_84 = (erlps__arglist_to_arg__1 [arglist_80])
            in let
              arg_86 =
                (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
                   [op_1])
            in let
              tup_el_91 =
                (BIF.erlang__op_mult [(ErlangInt (DBI.fromInt 8)), bytes_77])
            in let head_89 = (ErlangTuple [arg_84, tup_el_91])
            in let
              instr_95 =
                (erlps__pp_instruction__3
                   [address_0, arg_86, (ErlangCons head_89 ErlangEmptyList)])
            in let arg_96 = (BIF.erlang__op_plus [address_0, bytes_77])
            in
              (erlps__next__5
                 [arg_96, nextops_81, instr_95, assembly_3, errformatfun_4])
          _ -> (EXC.badmatch match_expr_82)
    x_103 | ((weakGeq x_103 (ErlangInt (DBI.fromInt 128))) &&
               (weakLeq x_103 (ErlangInt (DBI.fromInt 164)))) ->
      let   
        arg_105 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_108 =
          (erlps__pp_instruction__3 [address_0, arg_105, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_108, assembly_3, errformatfun_4])
    x_114 | ((weakGeq x_114 (ErlangInt (DBI.fromInt 240))) &&
               (weakLeq x_114 (ErlangInt (DBI.fromInt 244)))) ->
      let   
        arg_116 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_119 =
          (erlps__pp_instruction__3 [address_0, arg_116, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_119, assembly_3, errformatfun_4])
    x_125 | ((weakGeq x_125 (ErlangInt (DBI.fromInt 254))) &&
               (weakLeq x_125 (ErlangInt (DBI.fromInt 255)))) ->
      let   
        arg_127 =
          (BIF.do_remote_fun_call "Aeb.Opcodes" "erlps__mnemonic__1"
             [op_1])
      in let
        instr_130 =
          (erlps__pp_instruction__3 [address_0, arg_127, ErlangEmptyList])
      in
        (erlps__next__5
           [address_0, ops_2, instr_130, assembly_3, errformatfun_4])
    _ ->
      let    arg_136 = (make_string "unhandled op ~p at ~p")
      in let
        _ =
          (BIF.erlang__apply__2
             [errformatfun_4,
              (ErlangCons arg_136
                 (ErlangCons
                    (ErlangCons op_1 (ErlangCons address_0 ErlangEmptyList))
                    ErlangEmptyList))])
      in let arg_145 = (make_string "")
      in
        (erlps__next__5
           [address_0, ops_2, arg_145, assembly_3, errformatfun_4])
    something_else -> (EXC.case_clause something_else)
erlps__pp__4 [_, (ErlangEmptyList), assembly_0, _] =
  (BIF.do_remote_fun_call "Lists" "erlps__reverse__1" [assembly_0])
erlps__pp__4 [arg_2, arg_3, arg_4, arg_5] =
  (EXC.function_clause unit)
erlps__pp__4 args =
  (EXC.badarity
     (ErlangFun 4 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__arglist_to_arg__1 :: ErlangFun
erlps__arglist_to_arg__1 [(ErlangCons b_0 bs_1)] =
  (erlps__arglist_to_arg__2 [bs_1, b_0])
erlps__arglist_to_arg__1 [arg_4] = (EXC.function_clause unit)
erlps__arglist_to_arg__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__arglist_to_arg__2 :: ErlangFun
erlps__arglist_to_arg__2 [(ErlangCons b_0 bs_1), acc_2] =
  let   
    lop_5 =
      (BIF.erlang__op_mult [acc_2, (ErlangInt (DBI.fromInt 256))])
  in let arg_4 = (BIF.erlang__op_plus [lop_5, b_0])
  in (erlps__arglist_to_arg__2 [bs_1, arg_4])
erlps__arglist_to_arg__2 [(ErlangEmptyList), acc_0] = acc_0
erlps__arglist_to_arg__2 [arg_1, arg_2] =
  (EXC.function_clause unit)
erlps__arglist_to_arg__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__pp_instruction__3 :: ErlangFun
erlps__pp_instruction__3 [address_0, op_1, args_2] =
  let    head_3 = (erlps__format_address__1 [address_0])
  in let head_6 = (make_string "   ")
  in let arg_9 = (BIF.erlang__atom_to_list__1 [op_1])
  in let head_8 = (erlps__pad_op__1 [arg_9])
  in let head_12 = (erlps__pp_args__1 [args_2])
  in let head_15 = (make_string "\n")
  in
    (ErlangCons head_3
       (ErlangCons head_6
          (ErlangCons head_8
             (ErlangCons head_12 (ErlangCons head_15 ErlangEmptyList)))))
erlps__pp_instruction__3 [arg_17, arg_18, arg_19] =
  (EXC.function_clause unit)
erlps__pp_instruction__3 args =
  (EXC.badarity
     (ErlangFun 3 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__format_address__1 :: ErlangFun
erlps__format_address__1 [address_0] =
  let arg_1 = (make_string "0x~8.16.0B")
  in
    (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
       [arg_1, (ErlangCons address_0 ErlangEmptyList)])
erlps__format_address__1 [arg_5] = (EXC.function_clause unit)
erlps__format_address__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__pad_op__1 :: ErlangFun
erlps__pad_op__1 [op_0] =
  let    n_2 = (BIF.erlang__length__1 [op_0])
  in let
    pad_5 =
      (BIF.erlang__op_minus [(ErlangInt (DBI.fromInt 17)), n_2])
  in let
    head_8 =
      (BIF.do_remote_fun_call "Lists" "erlps__duplicate__2"
         [pad_5, (ErlangInt (DBI.fromInt 32))])
  in (ErlangCons op_0 (ErlangCons head_8 ErlangEmptyList))
erlps__pad_op__1 [arg_12] = (EXC.function_clause unit)
erlps__pad_op__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__pp_args__1 :: ErlangFun
erlps__pp_args__1 [(ErlangEmptyList)] = ErlangEmptyList
erlps__pp_args__1 [(ErlangCons (ErlangTuple [arg_0,
                                             size_1]) (ErlangEmptyList))]
  =
  case size_1 of
    (ErlangInt num_3) | ((ErlangInt num_3) ==
                           (ErlangInt (DBI.fromInt 8))) ->
      let arg_4 = (make_string "0x~2.16.0B")
      in
        (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
           [arg_4, (ErlangCons arg_0 ErlangEmptyList)])
    (ErlangInt num_8) | ((ErlangInt num_8) ==
                           (ErlangInt (DBI.fromInt 160))) ->
      let arg_9 = (make_string "0x~64.16.0B")
      in
        (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
           [arg_9, (ErlangCons arg_0 ErlangEmptyList)])
    (ErlangInt num_13) | ((ErlangInt num_13) ==
                            (ErlangInt (DBI.fromInt 232))) ->
      let arg_14 = (make_string "0x~64.16.0B")
      in
        (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
           [arg_14, (ErlangCons arg_0 ErlangEmptyList)])
    (ErlangInt num_18) | ((ErlangInt num_18) ==
                            (ErlangInt (DBI.fromInt 256))) ->
      let arg_19 = (make_string "0x~64.16.0B")
      in
        (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
           [arg_19, (ErlangCons arg_0 ErlangEmptyList)])
    _ ->
      let arg_23 = (make_string "0x~64.16.0B")
      in
        (BIF.do_remote_fun_call "Io.Lib" "erlps__format__2"
           [arg_23, (ErlangCons arg_0 ErlangEmptyList)])
    something_else -> (EXC.case_clause something_else)
erlps__pp_args__1 [(ErlangCons (ErlangTuple [arg_0,
                                             size_1]) args_2)]
  =
  let    head_5 = (ErlangTuple [arg_0, size_1])
  in let
    head_3 =
      (erlps__pp_args__1 [(ErlangCons head_5 ErlangEmptyList)])
  in let head_10 = (make_string " ")
  in let head_12 = (erlps__pp_args__1 [args_2])
  in
    (ErlangCons head_3
       (ErlangCons head_10 (ErlangCons head_12 ErlangEmptyList)))
erlps__pp_args__1 [arg_15] = (EXC.function_clause unit)
erlps__pp_args__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__next__5 :: ErlangFun
erlps__next__5 [address_0, ops_1, instr_2, assembly_3,
                errformatfun_4]
  =
  let
    arg_5 =
      (BIF.erlang__op_plus [address_0, (ErlangInt (DBI.fromInt 1))])
  in
    (erlps__pp__4
       [arg_5, ops_1, (ErlangCons instr_2 assembly_3), errformatfun_4])
erlps__next__5 [arg_13, arg_14, arg_15, arg_16, arg_17] =
  (EXC.function_clause unit)
erlps__next__5 args =
  (EXC.badarity
     (ErlangFun 5 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)