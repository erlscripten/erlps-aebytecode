module Aeb.Memory(erlps__binary_to_words__1) where
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


erlps__binary_to_words__1 :: ErlangFun
erlps__binary_to_words__1 [(ErlangBinary bin_e_0)]
  | (BIN.empty bin_e_0) =
  ErlangEmptyList
erlps__binary_to_words__1 [(ErlangBinary bin_c_0)]
  | size_1 <- ((DBI.fromInt 256))
  , (BIN.Ok n_3 bin_2) <-
      ((BIN.chop_int bin_c_0 size_1 1 BIN.Big BIN.Unsigned))
  , (ErlangInt size_4) <- ((BIN.size bin_2))
  , (BIN.Ok bin_6 bin_5) <- ((BIN.chop_bin bin_2 size_4 8))
  , (BIN.empty bin_5) =
  let tail_8 = (erlps__binary_to_words__1 [bin_6])
  in (ErlangCons n_3 tail_8)
erlps__binary_to_words__1 [bin_0] =
  let
    arg_1 =
      (ErlangBinary
         (BIN.concat
            [(BIN.format_bin bin_0 (BIN.packed_size bin_0) 8),
             (BIN.from_int (ErlangInt (DBI.fromInt 0))
                (ErlangInt (DBI.fromInt 8)) 1 BIN.Big)]))
  in (erlps__binary_to_words__1 [arg_1])
erlps__binary_to_words__1 [arg_4] = (EXC.function_clause unit)
erlps__binary_to_words__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)