module Aeb.Fate.Ops(erlps__foo__0, erlps__return__0,
                    erlps__returnr__1, erlps__call__1, erlps__call_r__5,
                    erlps__call_t__1, erlps__call_gr__6, erlps__jump__1,
                    erlps__jumpif__2, erlps__switch__3, erlps__switch__4,
                    erlps__switch__2, erlps__call_value__1, erlps__push__1,
                    erlps__dup__0, erlps__dup__1, erlps__pop__1, erlps__inc__0,
                    erlps__inc__1, erlps__dec__0, erlps__dec__1, erlps__add__3,
                    erlps__sub__3, erlps__mul__3, erlps__divide__3,
                    erlps__modulo__3, erlps__pow__3, erlps__store__2,
                    erlps__sha3__2, erlps__sha256__2, erlps__blake2b__2,
                    erlps__lt__3, erlps__gt__3, erlps__eq__3, erlps__elt__3,
                    erlps__egt__3, erlps__neq__3, erlps__and_op__3,
                    erlps__or_op__3, erlps__not_op__2, erlps__tuple__2,
                    erlps__element_op__3, erlps__setelement__4,
                    erlps__map_empty__1, erlps__map_lookup__3,
                    erlps__map_lookup__4, erlps__map_update__4,
                    erlps__map_delete__3, erlps__map_member__3,
                    erlps__map_from_list__2, erlps__map_size___2,
                    erlps__map_to_list__2, erlps__is_nil__2, erlps__cons__3,
                    erlps__hd__2, erlps__tl__2, erlps__length__2, erlps__nil__1,
                    erlps__append__3, erlps__str_join__3, erlps__int_to_str__2,
                    erlps__addr_to_str__2, erlps__str_reverse__2,
                    erlps__str_length__2, erlps__bytes_to_int__2,
                    erlps__bytes_to_str__2, erlps__bytes_concat__3,
                    erlps__bytes_split__3, erlps__int_to_addr__2,
                    erlps__variant__4, erlps__variant_test__3,
                    erlps__variant_element__3, erlps__bits_none__0,
                    erlps__bits_none__1, erlps__bits_all__0, erlps__bits_all__1,
                    erlps__bits_all_n__2, erlps__bits_set__3,
                    erlps__bits_clear__3, erlps__bits_test__3,
                    erlps__bits_sum__2, erlps__bits_or__3, erlps__bits_and__3,
                    erlps__bits_diff__3, erlps__balance__1, erlps__origin__1,
                    erlps__caller__1, erlps__blockhash__2,
                    erlps__beneficiary__1, erlps__timestamp__1,
                    erlps__generation__1, erlps__microblock__1,
                    erlps__difficulty__1, erlps__gaslimit__1, erlps__gas__1,
                    erlps__address__1, erlps__gasprice__1, erlps__log__1,
                    erlps__log__2, erlps__log__3, erlps__log__4, erlps__log__5,
                    erlps__spend__2, erlps__oracle_register__7,
                    erlps__oracle_query__8, erlps__oracle_respond__6,
                    erlps__oracle_extend__3, erlps__oracle_get_answer__5,
                    erlps__oracle_get_question__5, erlps__oracle_query_fee__2,
                    erlps__aens_resolve__4, erlps__aens_preclaim__3,
                    erlps__aens_claim__5, erlps__aens_update__6,
                    erlps__aens_transfer__4, erlps__aens_revoke__3,
                    erlps__balance_other__2, erlps__verify_sig__4,
                    erlps__verify_sig_secp256k1__4,
                    erlps__contract_to_address__2, erlps__auth_tx_hash__1,
                    erlps__oracle_check__4, erlps__oracle_check_query__5,
                    erlps__is_oracle__2, erlps__is_contract__2,
                    erlps__is_payable__2, erlps__contract_creator__1,
                    erlps__ecverify_secp256k1__4, erlps__ecrecover_secp256k1__3,
                    erlps__address_to_contract__2, erlps__bls12_381_g1_neg__2,
                    erlps__bls12_381_g1_norm__2, erlps__bls12_381_g1_valid__2,
                    erlps__bls12_381_g1_is_zero__2, erlps__bls12_381_g1_add__3,
                    erlps__bls12_381_g1_mul__3, erlps__bls12_381_g2_neg__2,
                    erlps__bls12_381_g2_norm__2, erlps__bls12_381_g2_valid__2,
                    erlps__bls12_381_g2_is_zero__2, erlps__bls12_381_g2_add__3,
                    erlps__bls12_381_g2_mul__3, erlps__bls12_381_gt_inv__2,
                    erlps__bls12_381_gt_add__3, erlps__bls12_381_gt_mul__3,
                    erlps__bls12_381_gt_pow__3, erlps__bls12_381_gt_is_one__2,
                    erlps__bls12_381_pairing__3,
                    erlps__bls12_381_miller_loop__3,
                    erlps__bls12_381_final_exp__2,
                    erlps__bls12_381_int_to_fr__2,
                    erlps__bls12_381_int_to_fp__2,
                    erlps__bls12_381_fr_to_int__2,
                    erlps__bls12_381_fp_to_int__2, erlps__aens_lookup__2,
                    erlps__oracle_expiry__2, erlps__auth_tx__1,
                    erlps__str_to_list__2, erlps__str_from_list__2,
                    erlps__str_to_upper__2, erlps__str_to_lower__2,
                    erlps__char_to_int__2, erlps__char_from_int__2,
                    erlps__call_pgr__7, erlps__create__3, erlps__clone__4,
                    erlps__clone_g__5, erlps__bytecode_hash__2, erlps__fee__1,
                    erlps__deactivate__0, erlps__abort__1, erlps__exit__1,
                    erlps__nop__0) where
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


erlps__return__0 :: ErlangFun
erlps__return__0 [] = ErlangAtom "RETURN"
erlps__return__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__returnr__1 :: ErlangFun
erlps__returnr__1 [arg0_0] =
  ErlangTuple [ErlangAtom "RETURNR", arg0_0]
erlps__returnr__1 [arg_3] = EXC.function_clause unit
erlps__returnr__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call__1 :: ErlangFun
erlps__call__1 [arg0_0] = ErlangTuple [ErlangAtom "CALL", arg0_0]
erlps__call__1 [arg_3] = EXC.function_clause unit
erlps__call__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call_r__5 :: ErlangFun
erlps__call_r__5 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4] =
  let tup_el_7 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in
    ErlangTuple
      [ErlangAtom "CALL_R", arg0_0, tup_el_7, arg2_2, arg3_3, arg4_4]
erlps__call_r__5 [arg_13, arg_14, arg_15, arg_16, arg_17] =
  EXC.function_clause unit
erlps__call_r__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call_t__1 :: ErlangFun
erlps__call_t__1 [arg0_0] =
  ErlangTuple [ErlangAtom "CALL_T", arg0_0]
erlps__call_t__1 [arg_3] = EXC.function_clause unit
erlps__call_t__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call_gr__6 :: ErlangFun
erlps__call_gr__6 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4,
                   arg5_5]
  =
  let tup_el_8 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in
    ErlangTuple
      [ErlangAtom "CALL_GR", arg0_0, tup_el_8, arg2_2, arg3_3, arg4_4,
       arg5_5]
erlps__call_gr__6 [arg_15, arg_16, arg_17, arg_18, arg_19,
                   arg_20]
  =
  EXC.function_clause unit
erlps__call_gr__6 args =
  EXC.badarity (ErlangFun 6 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__jump__1 :: ErlangFun
erlps__jump__1 [arg0_0] =
  let tup_el_2 = ErlangTuple [ErlangAtom "immediate", arg0_0]
  in ErlangTuple [ErlangAtom "JUMP", tup_el_2]
erlps__jump__1 [arg_5] = EXC.function_clause unit
erlps__jump__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__jumpif__2 :: ErlangFun
erlps__jumpif__2 [arg0_0, arg1_1] =
  let tup_el_4 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in ErlangTuple [ErlangAtom "JUMPIF", arg0_0, tup_el_4]
erlps__jumpif__2 [arg_7, arg_8] = EXC.function_clause unit
erlps__jumpif__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__switch__3 :: ErlangFun
erlps__switch__3 [arg0_0, arg1_1, arg2_2] =
  let    tup_el_5 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in let tup_el_8 = ErlangTuple [ErlangAtom "immediate", arg2_2]
  in
    ErlangTuple [ErlangAtom "SWITCH_V2", arg0_0, tup_el_5, tup_el_8]
erlps__switch__3 [arg_11, arg_12, arg_13] =
  EXC.function_clause unit
erlps__switch__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__switch__4 :: ErlangFun
erlps__switch__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  let    tup_el_6 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in let tup_el_9 = ErlangTuple [ErlangAtom "immediate", arg2_2]
  in let tup_el_12 = ErlangTuple [ErlangAtom "immediate", arg3_3]
  in
    ErlangTuple
      [ErlangAtom "SWITCH_V3", arg0_0, tup_el_6, tup_el_9, tup_el_12]
erlps__switch__4 [arg_15, arg_16, arg_17, arg_18] =
  EXC.function_clause unit
erlps__switch__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__switch__2 :: ErlangFun
erlps__switch__2 [arg0_0, arg1_1] =
  let tup_el_4 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in ErlangTuple [ErlangAtom "SWITCH_VN", arg0_0, tup_el_4]
erlps__switch__2 [arg_7, arg_8] = EXC.function_clause unit
erlps__switch__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call_value__1 :: ErlangFun
erlps__call_value__1 [arg0_0] =
  ErlangTuple [ErlangAtom "CALL_VALUE", arg0_0]
erlps__call_value__1 [arg_3] = EXC.function_clause unit
erlps__call_value__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__push__1 :: ErlangFun
erlps__push__1 [arg0_0] = ErlangTuple [ErlangAtom "PUSH", arg0_0]
erlps__push__1 [arg_3] = EXC.function_clause unit
erlps__push__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__dup__0 :: ErlangFun
erlps__dup__0 [] = ErlangAtom "DUPA"
erlps__dup__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__dup__1 :: ErlangFun
erlps__dup__1 [arg0_0] = ErlangTuple [ErlangAtom "DUP", arg0_0]
erlps__dup__1 [arg_3] = EXC.function_clause unit
erlps__dup__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__pop__1 :: ErlangFun
erlps__pop__1 [arg0_0] = ErlangTuple [ErlangAtom "POP", arg0_0]
erlps__pop__1 [arg_3] = EXC.function_clause unit
erlps__pop__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__inc__0 :: ErlangFun
erlps__inc__0 [] = ErlangAtom "INCA"
erlps__inc__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__inc__1 :: ErlangFun
erlps__inc__1 [arg0_0] = ErlangTuple [ErlangAtom "INC", arg0_0]
erlps__inc__1 [arg_3] = EXC.function_clause unit
erlps__inc__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__dec__0 :: ErlangFun
erlps__dec__0 [] = ErlangAtom "DECA"
erlps__dec__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__dec__1 :: ErlangFun
erlps__dec__1 [arg0_0] = ErlangTuple [ErlangAtom "DEC", arg0_0]
erlps__dec__1 [arg_3] = EXC.function_clause unit
erlps__dec__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__add__3 :: ErlangFun
erlps__add__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "ADD", arg0_0, arg1_1, arg2_2]
erlps__add__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__add__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__sub__3 :: ErlangFun
erlps__sub__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "SUB", arg0_0, arg1_1, arg2_2]
erlps__sub__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__sub__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__mul__3 :: ErlangFun
erlps__mul__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "MUL", arg0_0, arg1_1, arg2_2]
erlps__mul__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__mul__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__divide__3 :: ErlangFun
erlps__divide__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "DIV", arg0_0, arg1_1, arg2_2]
erlps__divide__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__divide__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__modulo__3 :: ErlangFun
erlps__modulo__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "MOD", arg0_0, arg1_1, arg2_2]
erlps__modulo__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__modulo__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__pow__3 :: ErlangFun
erlps__pow__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "POW", arg0_0, arg1_1, arg2_2]
erlps__pow__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__pow__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__store__2 :: ErlangFun
erlps__store__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STORE", arg0_0, arg1_1]
erlps__store__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__store__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__sha3__2 :: ErlangFun
erlps__sha3__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "SHA3", arg0_0, arg1_1]
erlps__sha3__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__sha3__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__sha256__2 :: ErlangFun
erlps__sha256__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "SHA256", arg0_0, arg1_1]
erlps__sha256__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__sha256__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__blake2b__2 :: ErlangFun
erlps__blake2b__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLAKE2B", arg0_0, arg1_1]
erlps__blake2b__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__blake2b__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__lt__3 :: ErlangFun
erlps__lt__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "LT", arg0_0, arg1_1, arg2_2]
erlps__lt__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__lt__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__gt__3 :: ErlangFun
erlps__gt__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "GT", arg0_0, arg1_1, arg2_2]
erlps__gt__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__gt__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__eq__3 :: ErlangFun
erlps__eq__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "EQ", arg0_0, arg1_1, arg2_2]
erlps__eq__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__eq__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__elt__3 :: ErlangFun
erlps__elt__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "ELT", arg0_0, arg1_1, arg2_2]
erlps__elt__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__elt__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__egt__3 :: ErlangFun
erlps__egt__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "EGT", arg0_0, arg1_1, arg2_2]
erlps__egt__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__egt__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__neq__3 :: ErlangFun
erlps__neq__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "NEQ", arg0_0, arg1_1, arg2_2]
erlps__neq__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__neq__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__and_op__3 :: ErlangFun
erlps__and_op__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "AND", arg0_0, arg1_1, arg2_2]
erlps__and_op__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__and_op__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__or_op__3 :: ErlangFun
erlps__or_op__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "OR", arg0_0, arg1_1, arg2_2]
erlps__or_op__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__or_op__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__not_op__2 :: ErlangFun
erlps__not_op__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "NOT", arg0_0, arg1_1]
erlps__not_op__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__not_op__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__tuple__2 :: ErlangFun
erlps__tuple__2 [arg0_0, arg1_1] =
  let tup_el_4 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in ErlangTuple [ErlangAtom "TUPLE", arg0_0, tup_el_4]
erlps__tuple__2 [arg_7, arg_8] = EXC.function_clause unit
erlps__tuple__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__element_op__3 :: ErlangFun
erlps__element_op__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "ELEMENT", arg0_0, arg1_1, arg2_2]
erlps__element_op__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__element_op__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__setelement__4 :: ErlangFun
erlps__setelement__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "SETELEMENT", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__setelement__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__setelement__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_empty__1 :: ErlangFun
erlps__map_empty__1 [arg0_0] =
  ErlangTuple [ErlangAtom "MAP_EMPTY", arg0_0]
erlps__map_empty__1 [arg_3] = EXC.function_clause unit
erlps__map_empty__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_lookup__3 :: ErlangFun
erlps__map_lookup__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "MAP_LOOKUP", arg0_0, arg1_1, arg2_2]
erlps__map_lookup__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__map_lookup__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_lookup__4 :: ErlangFun
erlps__map_lookup__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "MAP_LOOKUPD", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__map_lookup__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__map_lookup__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_update__4 :: ErlangFun
erlps__map_update__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "MAP_UPDATE", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__map_update__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__map_update__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_delete__3 :: ErlangFun
erlps__map_delete__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "MAP_DELETE", arg0_0, arg1_1, arg2_2]
erlps__map_delete__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__map_delete__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_member__3 :: ErlangFun
erlps__map_member__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "MAP_MEMBER", arg0_0, arg1_1, arg2_2]
erlps__map_member__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__map_member__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_from_list__2 :: ErlangFun
erlps__map_from_list__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "MAP_FROM_LIST", arg0_0, arg1_1]
erlps__map_from_list__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__map_from_list__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_size___2 :: ErlangFun
erlps__map_size___2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "MAP_SIZE", arg0_0, arg1_1]
erlps__map_size___2 [arg_5, arg_6] = EXC.function_clause unit
erlps__map_size___2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__map_to_list__2 :: ErlangFun
erlps__map_to_list__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "MAP_TO_LIST", arg0_0, arg1_1]
erlps__map_to_list__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__map_to_list__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__is_nil__2 :: ErlangFun
erlps__is_nil__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "IS_NIL", arg0_0, arg1_1]
erlps__is_nil__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__is_nil__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__cons__3 :: ErlangFun
erlps__cons__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "CONS", arg0_0, arg1_1, arg2_2]
erlps__cons__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__cons__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__hd__2 :: ErlangFun
erlps__hd__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "HD", arg0_0, arg1_1]
erlps__hd__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__hd__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__tl__2 :: ErlangFun
erlps__tl__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "TL", arg0_0, arg1_1]
erlps__tl__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__tl__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__length__2 :: ErlangFun
erlps__length__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "LENGTH", arg0_0, arg1_1]
erlps__length__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__length__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__nil__1 :: ErlangFun
erlps__nil__1 [arg0_0] = ErlangTuple [ErlangAtom "NIL", arg0_0]
erlps__nil__1 [arg_3] = EXC.function_clause unit
erlps__nil__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__append__3 :: ErlangFun
erlps__append__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "APPEND", arg0_0, arg1_1, arg2_2]
erlps__append__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__append__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_join__3 :: ErlangFun
erlps__str_join__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "STR_JOIN", arg0_0, arg1_1, arg2_2]
erlps__str_join__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__str_join__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__int_to_str__2 :: ErlangFun
erlps__int_to_str__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "INT_TO_STR", arg0_0, arg1_1]
erlps__int_to_str__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__int_to_str__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__addr_to_str__2 :: ErlangFun
erlps__addr_to_str__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "ADDR_TO_STR", arg0_0, arg1_1]
erlps__addr_to_str__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__addr_to_str__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_reverse__2 :: ErlangFun
erlps__str_reverse__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_REVERSE", arg0_0, arg1_1]
erlps__str_reverse__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_reverse__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_length__2 :: ErlangFun
erlps__str_length__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_LENGTH", arg0_0, arg1_1]
erlps__str_length__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_length__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bytes_to_int__2 :: ErlangFun
erlps__bytes_to_int__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BYTES_TO_INT", arg0_0, arg1_1]
erlps__bytes_to_int__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__bytes_to_int__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bytes_to_str__2 :: ErlangFun
erlps__bytes_to_str__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BYTES_TO_STR", arg0_0, arg1_1]
erlps__bytes_to_str__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__bytes_to_str__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bytes_concat__3 :: ErlangFun
erlps__bytes_concat__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BYTES_CONCAT", arg0_0, arg1_1, arg2_2]
erlps__bytes_concat__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bytes_concat__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bytes_split__3 :: ErlangFun
erlps__bytes_split__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BYTES_SPLIT", arg0_0, arg1_1, arg2_2]
erlps__bytes_split__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bytes_split__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__int_to_addr__2 :: ErlangFun
erlps__int_to_addr__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "INT_TO_ADDR", arg0_0, arg1_1]
erlps__int_to_addr__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__int_to_addr__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__variant__4 :: ErlangFun
erlps__variant__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "VARIANT", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__variant__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__variant__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__variant_test__3 :: ErlangFun
erlps__variant_test__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "VARIANT_TEST", arg0_0, arg1_1, arg2_2]
erlps__variant_test__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__variant_test__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__variant_element__3 :: ErlangFun
erlps__variant_element__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "VARIANT_ELEMENT", arg0_0, arg1_1, arg2_2]
erlps__variant_element__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__variant_element__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_none__0 :: ErlangFun
erlps__bits_none__0 [] = ErlangAtom "BITS_NONEA"
erlps__bits_none__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_none__1 :: ErlangFun
erlps__bits_none__1 [arg0_0] =
  ErlangTuple [ErlangAtom "BITS_NONE", arg0_0]
erlps__bits_none__1 [arg_3] = EXC.function_clause unit
erlps__bits_none__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_all__0 :: ErlangFun
erlps__bits_all__0 [] = ErlangAtom "BITS_ALLA"
erlps__bits_all__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_all__1 :: ErlangFun
erlps__bits_all__1 [arg0_0] =
  ErlangTuple [ErlangAtom "BITS_ALL", arg0_0]
erlps__bits_all__1 [arg_3] = EXC.function_clause unit
erlps__bits_all__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_all_n__2 :: ErlangFun
erlps__bits_all_n__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BITS_ALL_N", arg0_0, arg1_1]
erlps__bits_all_n__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__bits_all_n__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_set__3 :: ErlangFun
erlps__bits_set__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_SET", arg0_0, arg1_1, arg2_2]
erlps__bits_set__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_set__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_clear__3 :: ErlangFun
erlps__bits_clear__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_CLEAR", arg0_0, arg1_1, arg2_2]
erlps__bits_clear__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_clear__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_test__3 :: ErlangFun
erlps__bits_test__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_TEST", arg0_0, arg1_1, arg2_2]
erlps__bits_test__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_test__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_sum__2 :: ErlangFun
erlps__bits_sum__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BITS_SUM", arg0_0, arg1_1]
erlps__bits_sum__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__bits_sum__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_or__3 :: ErlangFun
erlps__bits_or__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_OR", arg0_0, arg1_1, arg2_2]
erlps__bits_or__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_or__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_and__3 :: ErlangFun
erlps__bits_and__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_AND", arg0_0, arg1_1, arg2_2]
erlps__bits_and__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_and__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bits_diff__3 :: ErlangFun
erlps__bits_diff__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "BITS_DIFF", arg0_0, arg1_1, arg2_2]
erlps__bits_diff__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bits_diff__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__balance__1 :: ErlangFun
erlps__balance__1 [arg0_0] =
  ErlangTuple [ErlangAtom "BALANCE", arg0_0]
erlps__balance__1 [arg_3] = EXC.function_clause unit
erlps__balance__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__origin__1 :: ErlangFun
erlps__origin__1 [arg0_0] =
  ErlangTuple [ErlangAtom "ORIGIN", arg0_0]
erlps__origin__1 [arg_3] = EXC.function_clause unit
erlps__origin__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__caller__1 :: ErlangFun
erlps__caller__1 [arg0_0] =
  ErlangTuple [ErlangAtom "CALLER", arg0_0]
erlps__caller__1 [arg_3] = EXC.function_clause unit
erlps__caller__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__blockhash__2 :: ErlangFun
erlps__blockhash__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLOCKHASH", arg0_0, arg1_1]
erlps__blockhash__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__blockhash__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__beneficiary__1 :: ErlangFun
erlps__beneficiary__1 [arg0_0] =
  ErlangTuple [ErlangAtom "BENEFICIARY", arg0_0]
erlps__beneficiary__1 [arg_3] = EXC.function_clause unit
erlps__beneficiary__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__timestamp__1 :: ErlangFun
erlps__timestamp__1 [arg0_0] =
  ErlangTuple [ErlangAtom "TIMESTAMP", arg0_0]
erlps__timestamp__1 [arg_3] = EXC.function_clause unit
erlps__timestamp__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__generation__1 :: ErlangFun
erlps__generation__1 [arg0_0] =
  ErlangTuple [ErlangAtom "GENERATION", arg0_0]
erlps__generation__1 [arg_3] = EXC.function_clause unit
erlps__generation__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__microblock__1 :: ErlangFun
erlps__microblock__1 [arg0_0] =
  ErlangTuple [ErlangAtom "MICROBLOCK", arg0_0]
erlps__microblock__1 [arg_3] = EXC.function_clause unit
erlps__microblock__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__difficulty__1 :: ErlangFun
erlps__difficulty__1 [arg0_0] =
  ErlangTuple [ErlangAtom "DIFFICULTY", arg0_0]
erlps__difficulty__1 [arg_3] = EXC.function_clause unit
erlps__difficulty__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__gaslimit__1 :: ErlangFun
erlps__gaslimit__1 [arg0_0] =
  ErlangTuple [ErlangAtom "GASLIMIT", arg0_0]
erlps__gaslimit__1 [arg_3] = EXC.function_clause unit
erlps__gaslimit__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__gas__1 :: ErlangFun
erlps__gas__1 [arg0_0] = ErlangTuple [ErlangAtom "GAS", arg0_0]
erlps__gas__1 [arg_3] = EXC.function_clause unit
erlps__gas__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__address__1 :: ErlangFun
erlps__address__1 [arg0_0] =
  ErlangTuple [ErlangAtom "ADDRESS", arg0_0]
erlps__address__1 [arg_3] = EXC.function_clause unit
erlps__address__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__gasprice__1 :: ErlangFun
erlps__gasprice__1 [arg0_0] =
  ErlangTuple [ErlangAtom "GASPRICE", arg0_0]
erlps__gasprice__1 [arg_3] = EXC.function_clause unit
erlps__gasprice__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__log__1 :: ErlangFun
erlps__log__1 [arg0_0] = ErlangTuple [ErlangAtom "LOG0", arg0_0]
erlps__log__1 [arg_3] = EXC.function_clause unit
erlps__log__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__log__2 :: ErlangFun
erlps__log__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "LOG1", arg0_0, arg1_1]
erlps__log__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__log__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__log__3 :: ErlangFun
erlps__log__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "LOG2", arg0_0, arg1_1, arg2_2]
erlps__log__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__log__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__log__4 :: ErlangFun
erlps__log__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple [ErlangAtom "LOG3", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__log__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__log__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__log__5 :: ErlangFun
erlps__log__5 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4] =
  ErlangTuple
    [ErlangAtom "LOG4", arg0_0, arg1_1, arg2_2, arg3_3, arg4_4]
erlps__log__5 [arg_11, arg_12, arg_13, arg_14, arg_15] =
  EXC.function_clause unit
erlps__log__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__spend__2 :: ErlangFun
erlps__spend__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "SPEND", arg0_0, arg1_1]
erlps__spend__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__spend__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_register__7 :: ErlangFun
erlps__oracle_register__7 [arg0_0, arg1_1, arg2_2, arg3_3,
                           arg4_4, arg5_5, arg6_6]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_REGISTER", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4, arg5_5, arg6_6]
erlps__oracle_register__7 [arg_15, arg_16, arg_17, arg_18,
                           arg_19, arg_20, arg_21]
  =
  EXC.function_clause unit
erlps__oracle_register__7 args =
  EXC.badarity (ErlangFun 7 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_query__8 :: ErlangFun
erlps__oracle_query__8 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4,
                        arg5_5, arg6_6, arg7_7]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_QUERY", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4, arg5_5, arg6_6, arg7_7]
erlps__oracle_query__8 [arg_17, arg_18, arg_19, arg_20, arg_21,
                        arg_22, arg_23, arg_24]
  =
  EXC.function_clause unit
erlps__oracle_query__8 args =
  EXC.badarity (ErlangFun 8 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_respond__6 :: ErlangFun
erlps__oracle_respond__6 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4,
                          arg5_5]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_RESPOND", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4, arg5_5]
erlps__oracle_respond__6 [arg_13, arg_14, arg_15, arg_16, arg_17,
                          arg_18]
  =
  EXC.function_clause unit
erlps__oracle_respond__6 args =
  EXC.badarity (ErlangFun 6 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_extend__3 :: ErlangFun
erlps__oracle_extend__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "ORACLE_EXTEND", arg0_0, arg1_1, arg2_2]
erlps__oracle_extend__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__oracle_extend__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_get_answer__5 :: ErlangFun
erlps__oracle_get_answer__5 [arg0_0, arg1_1, arg2_2, arg3_3,
                             arg4_4]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_GET_ANSWER", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4]
erlps__oracle_get_answer__5 [arg_11, arg_12, arg_13, arg_14,
                             arg_15]
  =
  EXC.function_clause unit
erlps__oracle_get_answer__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_get_question__5 :: ErlangFun
erlps__oracle_get_question__5 [arg0_0, arg1_1, arg2_2, arg3_3,
                               arg4_4]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_GET_QUESTION", arg0_0, arg1_1, arg2_2,
     arg3_3, arg4_4]
erlps__oracle_get_question__5 [arg_11, arg_12, arg_13, arg_14,
                               arg_15]
  =
  EXC.function_clause unit
erlps__oracle_get_question__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_query_fee__2 :: ErlangFun
erlps__oracle_query_fee__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "ORACLE_QUERY_FEE", arg0_0, arg1_1]
erlps__oracle_query_fee__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__oracle_query_fee__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_resolve__4 :: ErlangFun
erlps__aens_resolve__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "AENS_RESOLVE", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__aens_resolve__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__aens_resolve__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_preclaim__3 :: ErlangFun
erlps__aens_preclaim__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "AENS_PRECLAIM", arg0_0, arg1_1, arg2_2]
erlps__aens_preclaim__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__aens_preclaim__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_claim__5 :: ErlangFun
erlps__aens_claim__5 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4] =
  ErlangTuple
    [ErlangAtom "AENS_CLAIM", arg0_0, arg1_1, arg2_2, arg3_3, arg4_4]
erlps__aens_claim__5 [arg_11, arg_12, arg_13, arg_14, arg_15] =
  EXC.function_clause unit
erlps__aens_claim__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_update__6 :: ErlangFun
erlps__aens_update__6 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4,
                       arg5_5]
  =
  ErlangTuple
    [ErlangAtom "AENS_UPDATE", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4, arg5_5]
erlps__aens_update__6 [arg_13, arg_14, arg_15, arg_16, arg_17,
                       arg_18]
  =
  EXC.function_clause unit
erlps__aens_update__6 args =
  EXC.badarity (ErlangFun 6 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_transfer__4 :: ErlangFun
erlps__aens_transfer__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "AENS_TRANSFER", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__aens_transfer__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__aens_transfer__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_revoke__3 :: ErlangFun
erlps__aens_revoke__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "AENS_REVOKE", arg0_0, arg1_1, arg2_2]
erlps__aens_revoke__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__aens_revoke__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__balance_other__2 :: ErlangFun
erlps__balance_other__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BALANCE_OTHER", arg0_0, arg1_1]
erlps__balance_other__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__balance_other__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__verify_sig__4 :: ErlangFun
erlps__verify_sig__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "VERIFY_SIG", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__verify_sig__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__verify_sig__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__verify_sig_secp256k1__4 :: ErlangFun
erlps__verify_sig_secp256k1__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "VERIFY_SIG_SECP256K1", arg0_0, arg1_1, arg2_2,
     arg3_3]
erlps__verify_sig_secp256k1__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__verify_sig_secp256k1__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__contract_to_address__2 :: ErlangFun
erlps__contract_to_address__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "CONTRACT_TO_ADDRESS", arg0_0, arg1_1]
erlps__contract_to_address__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__contract_to_address__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__auth_tx_hash__1 :: ErlangFun
erlps__auth_tx_hash__1 [arg0_0] =
  ErlangTuple [ErlangAtom "AUTH_TX_HASH", arg0_0]
erlps__auth_tx_hash__1 [arg_3] = EXC.function_clause unit
erlps__auth_tx_hash__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_check__4 :: ErlangFun
erlps__oracle_check__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "ORACLE_CHECK", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__oracle_check__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__oracle_check__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_check_query__5 :: ErlangFun
erlps__oracle_check_query__5 [arg0_0, arg1_1, arg2_2, arg3_3,
                              arg4_4]
  =
  ErlangTuple
    [ErlangAtom "ORACLE_CHECK_QUERY", arg0_0, arg1_1, arg2_2, arg3_3,
     arg4_4]
erlps__oracle_check_query__5 [arg_11, arg_12, arg_13, arg_14,
                              arg_15]
  =
  EXC.function_clause unit
erlps__oracle_check_query__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__is_oracle__2 :: ErlangFun
erlps__is_oracle__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "IS_ORACLE", arg0_0, arg1_1]
erlps__is_oracle__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__is_oracle__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__is_contract__2 :: ErlangFun
erlps__is_contract__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "IS_CONTRACT", arg0_0, arg1_1]
erlps__is_contract__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__is_contract__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__is_payable__2 :: ErlangFun
erlps__is_payable__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "IS_PAYABLE", arg0_0, arg1_1]
erlps__is_payable__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__is_payable__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__contract_creator__1 :: ErlangFun
erlps__contract_creator__1 [arg0_0] =
  ErlangTuple [ErlangAtom "CREATOR", arg0_0]
erlps__contract_creator__1 [arg_3] = EXC.function_clause unit
erlps__contract_creator__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__ecverify_secp256k1__4 :: ErlangFun
erlps__ecverify_secp256k1__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple
    [ErlangAtom "ECVERIFY_SECP256K1", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__ecverify_secp256k1__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__ecverify_secp256k1__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__ecrecover_secp256k1__3 :: ErlangFun
erlps__ecrecover_secp256k1__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "ECRECOVER_SECP256K1", arg0_0, arg1_1, arg2_2]
erlps__ecrecover_secp256k1__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__ecrecover_secp256k1__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__address_to_contract__2 :: ErlangFun
erlps__address_to_contract__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "ADDRESS_TO_CONTRACT", arg0_0, arg1_1]
erlps__address_to_contract__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__address_to_contract__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_neg__2 :: ErlangFun
erlps__bls12_381_g1_neg__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G1_NEG", arg0_0, arg1_1]
erlps__bls12_381_g1_neg__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g1_neg__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_norm__2 :: ErlangFun
erlps__bls12_381_g1_norm__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G1_NORM", arg0_0, arg1_1]
erlps__bls12_381_g1_norm__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g1_norm__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_valid__2 :: ErlangFun
erlps__bls12_381_g1_valid__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G1_VALID", arg0_0, arg1_1]
erlps__bls12_381_g1_valid__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g1_valid__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_is_zero__2 :: ErlangFun
erlps__bls12_381_g1_is_zero__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G1_IS_ZERO", arg0_0, arg1_1]
erlps__bls12_381_g1_is_zero__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g1_is_zero__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_add__3 :: ErlangFun
erlps__bls12_381_g1_add__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_G1_ADD", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_g1_add__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_g1_add__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g1_mul__3 :: ErlangFun
erlps__bls12_381_g1_mul__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_G1_MUL", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_g1_mul__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_g1_mul__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_neg__2 :: ErlangFun
erlps__bls12_381_g2_neg__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G2_NEG", arg0_0, arg1_1]
erlps__bls12_381_g2_neg__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g2_neg__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_norm__2 :: ErlangFun
erlps__bls12_381_g2_norm__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G2_NORM", arg0_0, arg1_1]
erlps__bls12_381_g2_norm__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g2_norm__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_valid__2 :: ErlangFun
erlps__bls12_381_g2_valid__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G2_VALID", arg0_0, arg1_1]
erlps__bls12_381_g2_valid__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g2_valid__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_is_zero__2 :: ErlangFun
erlps__bls12_381_g2_is_zero__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_G2_IS_ZERO", arg0_0, arg1_1]
erlps__bls12_381_g2_is_zero__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_g2_is_zero__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_add__3 :: ErlangFun
erlps__bls12_381_g2_add__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_G2_ADD", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_g2_add__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_g2_add__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_g2_mul__3 :: ErlangFun
erlps__bls12_381_g2_mul__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_G2_MUL", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_g2_mul__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_g2_mul__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_gt_inv__2 :: ErlangFun
erlps__bls12_381_gt_inv__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_GT_INV", arg0_0, arg1_1]
erlps__bls12_381_gt_inv__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_gt_inv__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_gt_add__3 :: ErlangFun
erlps__bls12_381_gt_add__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_GT_ADD", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_gt_add__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_gt_add__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_gt_mul__3 :: ErlangFun
erlps__bls12_381_gt_mul__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_GT_MUL", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_gt_mul__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_gt_mul__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_gt_pow__3 :: ErlangFun
erlps__bls12_381_gt_pow__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_GT_POW", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_gt_pow__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_gt_pow__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_gt_is_one__2 :: ErlangFun
erlps__bls12_381_gt_is_one__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_GT_IS_ONE", arg0_0, arg1_1]
erlps__bls12_381_gt_is_one__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_gt_is_one__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_pairing__3 :: ErlangFun
erlps__bls12_381_pairing__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_PAIRING", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_pairing__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_pairing__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_miller_loop__3 :: ErlangFun
erlps__bls12_381_miller_loop__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple
    [ErlangAtom "BLS12_381_MILLER_LOOP", arg0_0, arg1_1, arg2_2]
erlps__bls12_381_miller_loop__3 [arg_7, arg_8, arg_9] =
  EXC.function_clause unit
erlps__bls12_381_miller_loop__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_final_exp__2 :: ErlangFun
erlps__bls12_381_final_exp__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_FINAL_EXP", arg0_0, arg1_1]
erlps__bls12_381_final_exp__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_final_exp__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_int_to_fr__2 :: ErlangFun
erlps__bls12_381_int_to_fr__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_INT_TO_FR", arg0_0, arg1_1]
erlps__bls12_381_int_to_fr__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_int_to_fr__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_int_to_fp__2 :: ErlangFun
erlps__bls12_381_int_to_fp__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_INT_TO_FP", arg0_0, arg1_1]
erlps__bls12_381_int_to_fp__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_int_to_fp__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_fr_to_int__2 :: ErlangFun
erlps__bls12_381_fr_to_int__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_FR_TO_INT", arg0_0, arg1_1]
erlps__bls12_381_fr_to_int__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_fr_to_int__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bls12_381_fp_to_int__2 :: ErlangFun
erlps__bls12_381_fp_to_int__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BLS12_381_FP_TO_INT", arg0_0, arg1_1]
erlps__bls12_381_fp_to_int__2 [arg_5, arg_6] =
  EXC.function_clause unit
erlps__bls12_381_fp_to_int__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__aens_lookup__2 :: ErlangFun
erlps__aens_lookup__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "AENS_LOOKUP", arg0_0, arg1_1]
erlps__aens_lookup__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__aens_lookup__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__oracle_expiry__2 :: ErlangFun
erlps__oracle_expiry__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "ORACLE_EXPIRY", arg0_0, arg1_1]
erlps__oracle_expiry__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__oracle_expiry__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__auth_tx__1 :: ErlangFun
erlps__auth_tx__1 [arg0_0] =
  ErlangTuple [ErlangAtom "AUTH_TX", arg0_0]
erlps__auth_tx__1 [arg_3] = EXC.function_clause unit
erlps__auth_tx__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_to_list__2 :: ErlangFun
erlps__str_to_list__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_TO_LIST", arg0_0, arg1_1]
erlps__str_to_list__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_to_list__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_from_list__2 :: ErlangFun
erlps__str_from_list__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_FROM_LIST", arg0_0, arg1_1]
erlps__str_from_list__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_from_list__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_to_upper__2 :: ErlangFun
erlps__str_to_upper__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_TO_UPPER", arg0_0, arg1_1]
erlps__str_to_upper__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_to_upper__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__str_to_lower__2 :: ErlangFun
erlps__str_to_lower__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "STR_TO_LOWER", arg0_0, arg1_1]
erlps__str_to_lower__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__str_to_lower__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__char_to_int__2 :: ErlangFun
erlps__char_to_int__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "CHAR_TO_INT", arg0_0, arg1_1]
erlps__char_to_int__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__char_to_int__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__char_from_int__2 :: ErlangFun
erlps__char_from_int__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "CHAR_FROM_INT", arg0_0, arg1_1]
erlps__char_from_int__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__char_from_int__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__call_pgr__7 :: ErlangFun
erlps__call_pgr__7 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4,
                    arg5_5, arg6_6]
  =
  let tup_el_9 = ErlangTuple [ErlangAtom "immediate", arg1_1]
  in
    ErlangTuple
      [ErlangAtom "CALL_PGR", arg0_0, tup_el_9, arg2_2, arg3_3, arg4_4,
       arg5_5, arg6_6]
erlps__call_pgr__7 [arg_17, arg_18, arg_19, arg_20, arg_21,
                    arg_22, arg_23]
  =
  EXC.function_clause unit
erlps__call_pgr__7 args =
  EXC.badarity (ErlangFun 7 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__create__3 :: ErlangFun
erlps__create__3 [arg0_0, arg1_1, arg2_2] =
  ErlangTuple [ErlangAtom "CREATE", arg0_0, arg1_1, arg2_2]
erlps__create__3 [arg_7, arg_8, arg_9] = EXC.function_clause unit
erlps__create__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__clone__4 :: ErlangFun
erlps__clone__4 [arg0_0, arg1_1, arg2_2, arg3_3] =
  ErlangTuple [ErlangAtom "CLONE", arg0_0, arg1_1, arg2_2, arg3_3]
erlps__clone__4 [arg_9, arg_10, arg_11, arg_12] =
  EXC.function_clause unit
erlps__clone__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__clone_g__5 :: ErlangFun
erlps__clone_g__5 [arg0_0, arg1_1, arg2_2, arg3_3, arg4_4] =
  ErlangTuple
    [ErlangAtom "CLONE_G", arg0_0, arg1_1, arg2_2, arg3_3, arg4_4]
erlps__clone_g__5 [arg_11, arg_12, arg_13, arg_14, arg_15] =
  EXC.function_clause unit
erlps__clone_g__5 args =
  EXC.badarity (ErlangFun 5 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__bytecode_hash__2 :: ErlangFun
erlps__bytecode_hash__2 [arg0_0, arg1_1] =
  ErlangTuple [ErlangAtom "BYTECODE_HASH", arg0_0, arg1_1]
erlps__bytecode_hash__2 [arg_5, arg_6] = EXC.function_clause unit
erlps__bytecode_hash__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__fee__1 :: ErlangFun
erlps__fee__1 [arg0_0] = ErlangTuple [ErlangAtom "FEE", arg0_0]
erlps__fee__1 [arg_3] = EXC.function_clause unit
erlps__fee__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__deactivate__0 :: ErlangFun
erlps__deactivate__0 [] = ErlangAtom "DEACTIVATE"
erlps__deactivate__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__abort__1 :: ErlangFun
erlps__abort__1 [arg0_0] =
  ErlangTuple [ErlangAtom "ABORT", arg0_0]
erlps__abort__1 [arg_3] = EXC.function_clause unit
erlps__abort__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__exit__1 :: ErlangFun
erlps__exit__1 [arg0_0] = ErlangTuple [ErlangAtom "EXIT", arg0_0]
erlps__exit__1 [arg_3] = EXC.function_clause unit
erlps__exit__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__nop__0 :: ErlangFun
erlps__nop__0 [] = ErlangAtom "NOP"
erlps__nop__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__foo__0 :: ErlangFun
erlps__foo__0 [] = toErl "A temp hack."
erlps__foo__0 args =
  EXC.badarity (ErlangFun 0 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args