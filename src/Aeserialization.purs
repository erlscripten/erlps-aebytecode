module Aeserialization(erlps__decode_fields__2,
                       erlps__deserialize__5, erlps__deserialize_tag_and_vsn__1,
                       erlps__encode_fields__2, erlps__serialize__4) where
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


erlps__serialize__4 :: ErlangFun
erlps__serialize__4 [tag_0, vsn_1, template_2, fields_3] =
  let   
    head_5 = (ErlangTuple [(ErlangAtom "tag"), (ErlangAtom "int")])
  in let
    head_9 = (ErlangTuple [(ErlangAtom "vsn"), (ErlangAtom "int")])
  in let head_14 = (ErlangTuple [(ErlangAtom "tag"), tag_0])
  in let head_18 = (ErlangTuple [(ErlangAtom "vsn"), vsn_1])
  in let
    list_22 =
      (erlps__encode_fields__2
         [(ErlangCons head_5 (ErlangCons head_9 template_2)),
          (ErlangCons head_14 (ErlangCons head_18 fields_3))])
  in
    (BIF.do_remote_fun_call "Aeser.Rlp" "erlps__encode__1" [list_22])
erlps__serialize__4 [arg_24, arg_25, arg_26, arg_27] =
  (EXC.function_clause unit)
erlps__serialize__4 args =
  (EXC.badarity
     (ErlangFun 4 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__deserialize__5 :: ErlangFun
erlps__deserialize__5 [type_0, tag_1, vsn_2, template0_3,
                       binary_4]
  =
  let   
    decoded_6 =
      (BIF.do_remote_fun_call "Aeser.Rlp" "erlps__decode__1"
         [binary_4])
  in let
    head_7 = (ErlangTuple [(ErlangAtom "tag"), (ErlangAtom "int")])
  in let
    head_11 = (ErlangTuple [(ErlangAtom "vsn"), (ErlangAtom "int")])
  in let
    case_16 =
      (erlps__decode_fields__2
         [(ErlangCons head_7 (ErlangCons head_11 template0_3)),
          decoded_6])
  in
    case case_16 of
      (ErlangCons (ErlangTuple [(ErlangAtom "tag"),
                                tag_19]) (ErlangCons (ErlangTuple [(ErlangAtom "vsn"),
                                                                   vsn_20]) left_21)) | (tag_19 ==
                                                                                           tag_1)
                                                                                      , (vsn_20 ==
                                                                                           vsn_2) ->
        left_21
      other_22 ->
        let
          arg_23 =
            (ErlangTuple
               [(ErlangAtom "illegal_serialization"), type_0, vsn_2, other_22,
                binary_4, decoded_6,
                (ErlangCons head_7 (ErlangCons head_11 template0_3))])
        in (BIF.erlang__error__1 [arg_23])
      something_else -> (EXC.case_clause something_else)
erlps__deserialize__5 [arg_31, arg_32, arg_33, arg_34, arg_35] =
  (EXC.function_clause unit)
erlps__deserialize__5 args =
  (EXC.badarity
     (ErlangFun 5 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__deserialize_tag_and_vsn__1 :: ErlangFun
erlps__deserialize_tag_and_vsn__1 [binary_0] =
  let
    match_expr_5 =
      (BIF.do_remote_fun_call "Aeser.Rlp" "erlps__decode__1"
         [binary_0])
  in
    case match_expr_5 of
      (ErlangCons tagbin_2 (ErlangCons vsnbin_3 fields_4)) ->
        let   
          head_6 = (ErlangTuple [(ErlangAtom "tag"), (ErlangAtom "int")])
        in let
          head_10 = (ErlangTuple [(ErlangAtom "vsn"), (ErlangAtom "int")])
        in let
          match_expr_23 =
            (erlps__decode_fields__2
               [(ErlangCons head_6 (ErlangCons head_10 ErlangEmptyList)),
                (ErlangCons tagbin_2 (ErlangCons vsnbin_3 ErlangEmptyList))])
        in
          case match_expr_23 of
            (ErlangCons (ErlangTuple [(ErlangAtom "tag"),
                                      tag_21]) (ErlangCons (ErlangTuple [(ErlangAtom "vsn"),
                                                                         vsn_22]) (ErlangEmptyList))) ->
              (ErlangTuple [tag_21, vsn_22, fields_4])
            _ -> (EXC.badmatch match_expr_23)
      _ -> (EXC.badmatch match_expr_5)
erlps__deserialize_tag_and_vsn__1 [arg_27] =
  (EXC.function_clause unit)
erlps__deserialize_tag_and_vsn__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__encode_fields__2 :: ErlangFun
erlps__encode_fields__2 [(ErlangCons (ErlangTuple [field_0,
                                                   type_1]) typesleft_2),
                         (ErlangCons (ErlangTuple [field_3,
                                                   val_4]) fieldsleft_5)]
  | (field_3 == field_0) =
  (EXC.tryOfCatch (\ _ -> (erlps__encode_field__2 [type_1, val_4]))
     (\ of_8 ->
        case of_8 of
          encoded_10 ->
            let
              tail_12 = (erlps__encode_fields__2 [typesleft_2, fieldsleft_5])
            in (ErlangCons encoded_10 tail_12)
          something_else -> (EXC.try_clause something_else))
     (\ ex_9 ->
        case ex_9 of
          (ErlangTuple [(ErlangAtom "error"),
                        (ErlangTuple [(ErlangAtom "illegal"), t_15, v_16]),
                        _]) ->
            let
              arg_17 =
                (ErlangTuple
                   [(ErlangAtom "illegal_field"), field_0, type_1, val_4, t_15,
                    v_16])
            in (BIF.erlang__error__1 [arg_17])
          ex_9 -> (EXC.raise ex_9)))
erlps__encode_fields__2 [(ErlangEmptyList), (ErlangEmptyList)] =
  ErlangEmptyList
erlps__encode_fields__2 [template_0, values_1] =
  let
    arg_2 =
      (ErlangTuple
         [(ErlangAtom "illegal_template_or_values"), template_0,
          values_1])
  in (BIF.erlang__error__1 [arg_2])
erlps__encode_fields__2 [arg_6, arg_7] =
  (EXC.function_clause unit)
erlps__encode_fields__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__decode_fields__2 :: ErlangFun
erlps__decode_fields__2 [(ErlangCons (ErlangTuple [field_0,
                                                   type_1]) typesleft_2),
                         (ErlangCons bin_3 fieldsleft_4)]
  =
  (EXC.tryOfCatch (\ _ -> (erlps__decode_field__2 [type_1, bin_3]))
     (\ of_7 ->
        case of_7 of
          decoded_9 ->
            let    head_10 = (ErlangTuple [field_0, decoded_9])
            in let
              tail_13 = (erlps__decode_fields__2 [typesleft_2, fieldsleft_4])
            in (ErlangCons head_10 tail_13)
          something_else -> (EXC.try_clause something_else))
     (\ ex_8 ->
        case ex_8 of
          (ErlangTuple [(ErlangAtom "error"),
                        (ErlangTuple [(ErlangAtom "illegal"), t_16, v_17]),
                        _]) ->
            let
              arg_18 =
                (ErlangTuple
                   [(ErlangAtom "illegal_field"), field_0, type_1, bin_3, t_16,
                    v_17])
            in (BIF.erlang__error__1 [arg_18])
          ex_8 -> (EXC.raise ex_8)))
erlps__decode_fields__2 [(ErlangEmptyList), (ErlangEmptyList)] =
  ErlangEmptyList
erlps__decode_fields__2 [template_0, values_1] =
  let
    arg_2 =
      (ErlangTuple
         [(ErlangAtom "illegal_template_or_values"), template_0,
          values_1])
  in (BIF.erlang__error__1 [arg_2])
erlps__decode_fields__2 [arg_6, arg_7] =
  (EXC.function_clause unit)
erlps__decode_fields__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__encode_field__2 :: ErlangFun
erlps__encode_field__2 [(ErlangCons type_0 (ErlangEmptyList)),
                        l_1]
  | (isEList l_1) =
  (flmap
     (\ lc_4 ->
        case lc_4 of
          x_3 ->
            let lc_ret_5 = (erlps__encode_field__2 [type_0, x_3])
            in (ErlangCons lc_ret_5 ErlangEmptyList)
          _ -> ErlangEmptyList)
     l_1)
erlps__encode_field__2 [type_0, t_1]
  | ((ErlangAtom "true") ==
       (falsifyErrors
          (\ _ ->
             let    lop_14 = (BIF.erlang__tuple_size__1 [type_0])
             in let rop_16 = (BIF.erlang__tuple_size__1 [t_1])
             in (BIF.erlang__op_exactEq [lop_14, rop_16])))) =
  let    arg_2 = (BIF.erlang__tuple_to_list__1 [type_0])
  in let arg_4 = (BIF.erlang__tuple_to_list__1 [t_1])
  in let
    zipped_6 =
      (BIF.do_remote_fun_call "Lists" "erlps__zip__2" [arg_2, arg_4])
  in
    (flmap
       (\ lc_10 ->
          case lc_10 of
            (ErlangTuple [x_8, y_9]) ->
              let lc_ret_11 = (erlps__encode_field__2 [x_8, y_9])
              in (ErlangCons lc_ret_11 ErlangEmptyList)
            _ -> ErlangEmptyList)
       zipped_6)
erlps__encode_field__2 [(ErlangAtom "int"), x_0]
  | ((isEInt x_0) && (weakGeq x_0 (ErlangInt (DBI.fromInt 0)))) =
  (BIF.binary__encode_unsigned__1 [x_0])
erlps__encode_field__2 [(ErlangAtom "binary"), x_0]
  | ((ErlangAtom "true") ==
       (falsifyErrors (\ _ -> (BIF.erlang__is_binary__1 [x_0])))) =
  x_0
erlps__encode_field__2 [(ErlangAtom "bool"), (ErlangAtom "true")]
  =
  (ErlangBinary
     (BIN.from_int (ErlangInt (DBI.fromInt 1))
        (ErlangInt (DBI.fromInt 8)) 1 BIN.Big))
erlps__encode_field__2 [(ErlangAtom "bool"),
                        (ErlangAtom "false")]
  =
  (ErlangBinary
     (BIN.from_int (ErlangInt (DBI.fromInt 0))
        (ErlangInt (DBI.fromInt 8)) 1 BIN.Big))
erlps__encode_field__2 [(ErlangAtom "id"), val_0] =
  (EXC.tryCatch
     (\ _ ->
        (BIF.do_remote_fun_call "Aeser.Id" "erlps__encode__1" [val_0]))
     (\ ex_3 ->
        case ex_3 of
          (ErlangTuple [_, _, _]) ->
            let
              arg_4 =
                (ErlangTuple [(ErlangAtom "illegal"), (ErlangAtom "id"), val_0])
            in (BIF.erlang__error__1 [arg_4])
          ex_3 -> (EXC.raise ex_3)))
erlps__encode_field__2 [type_0, val_1] =
  let arg_2 = (ErlangTuple [(ErlangAtom "illegal"), type_0, val_1])
  in (BIF.erlang__error__1 [arg_2])
erlps__encode_field__2 [arg_6, arg_7] =
  (EXC.function_clause unit)
erlps__encode_field__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__decode_field__2 :: ErlangFun
erlps__decode_field__2 [(ErlangCons type_0 (ErlangEmptyList)),
                        list_1]
  | (isEList list_1) =
  (flmap
     (\ lc_4 ->
        case lc_4 of
          x_3 ->
            let lc_ret_5 = (erlps__decode_field__2 [type_0, x_3])
            in (ErlangCons lc_ret_5 ErlangEmptyList)
          _ -> ErlangEmptyList)
     list_1)
erlps__decode_field__2 [type_0, list_1]
  | ((ErlangAtom "true") ==
       (falsifyErrors
          (\ _ ->
             let    lop_14 = (BIF.erlang__length__1 [list_1])
             in let rop_16 = (BIF.erlang__tuple_size__1 [type_0])
             in (BIF.erlang__op_exactEq [lop_14, rop_16])))) =
  let    arg_2 = (BIF.erlang__tuple_to_list__1 [type_0])
  in let
    zipped_5 =
      (BIF.do_remote_fun_call "Lists" "erlps__zip__2" [arg_2, list_1])
  in let
    arg_6 =
      (flmap
         (\ lc_10 ->
            case lc_10 of
              (ErlangTuple [x_8, y_9]) ->
                let lc_ret_11 = (erlps__decode_field__2 [x_8, y_9])
                in (ErlangCons lc_ret_11 ErlangEmptyList)
              _ -> ErlangEmptyList)
         zipped_5)
  in (BIF.erlang__list_to_tuple__1 [arg_6])
erlps__decode_field__2 [(ErlangAtom "int"),
                        b_7@(ErlangBinary bin_c_0)]
  | size_1 <- ((DBI.fromInt 8))
  , (BIN.Ok (ErlangInt num_3) bin_2) <-
      ((BIN.chop_int bin_c_0 size_1 1 BIN.Big BIN.Unsigned))
  , ((ErlangInt num_3) == (ErlangInt (DBI.fromInt 0)))
  , (ErlangInt size_4) <- ((BIN.size bin_2))
  , (BIN.Ok x_6 bin_5) <- ((BIN.chop_bin bin_2 size_4 8))
  , (BIN.empty bin_5)
  , ((ErlangAtom "true") ==
       (falsifyErrors
          (\ _ ->
             let rop_13 = (ErlangBinary (BIN.concat []))
             in (BIF.erlang__op_exactNeq [x_6, rop_13])))) =
  let
    arg_8 =
      (ErlangTuple [(ErlangAtom "illegal"), (ErlangAtom "int"), b_7])
  in (BIF.erlang__error__1 [arg_8])
erlps__decode_field__2 [(ErlangAtom "int"), x_0]
  | ((ErlangAtom "true") ==
       (falsifyErrors (\ _ -> (BIF.erlang__is_binary__1 [x_0])))) =
  (BIF.binary__decode_unsigned__1 [x_0])
erlps__decode_field__2 [(ErlangAtom "binary"), x_0]
  | ((ErlangAtom "true") ==
       (falsifyErrors (\ _ -> (BIF.erlang__is_binary__1 [x_0])))) =
  x_0
erlps__decode_field__2 [(ErlangAtom "bool"),
                        (ErlangBinary bin_c_0)]
  | size_1 <- ((DBI.fromInt 8))
  , (BIN.Ok (ErlangInt num_3) bin_2) <-
      ((BIN.chop_int bin_c_0 size_1 1 BIN.Big BIN.Unsigned))
  , ((ErlangInt num_3) == (ErlangInt (DBI.fromInt 1)))
  , (BIN.empty bin_2) =
  (ErlangAtom "true")
erlps__decode_field__2 [(ErlangAtom "bool"),
                        (ErlangBinary bin_c_0)]
  | size_1 <- ((DBI.fromInt 8))
  , (BIN.Ok (ErlangInt num_3) bin_2) <-
      ((BIN.chop_int bin_c_0 size_1 1 BIN.Big BIN.Unsigned))
  , ((ErlangInt num_3) == (ErlangInt (DBI.fromInt 0)))
  , (BIN.empty bin_2) =
  (ErlangAtom "false")
erlps__decode_field__2 [(ErlangAtom "id"), val_0] =
  (EXC.tryCatch
     (\ _ ->
        (BIF.do_remote_fun_call "Aeser.Id" "erlps__decode__1" [val_0]))
     (\ ex_3 ->
        case ex_3 of
          (ErlangTuple [_, _, _]) ->
            let
              arg_4 =
                (ErlangTuple [(ErlangAtom "illegal"), (ErlangAtom "id"), val_0])
            in (BIF.erlang__error__1 [arg_4])
          ex_3 -> (EXC.raise ex_3)))
erlps__decode_field__2 [type_0, x_1] =
  let arg_2 = (ErlangTuple [(ErlangAtom "illegal"), type_0, x_1])
  in (BIF.erlang__error__1 [arg_2])
erlps__decode_field__2 [arg_6, arg_7] =
  (EXC.function_clause unit)
erlps__decode_field__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)