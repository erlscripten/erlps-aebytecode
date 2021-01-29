module Test.Main where

import Prelude

import Effect.Aff.AVar as AVar
import Data.Time.Duration (Milliseconds(..))
import Effect (Effect)
import Effect.Unsafe
import Effect.Ref as Ref
import Effect.Console (log)
import Effect.Class (liftEffect)
import Effect.Aff hiding (error)
import Effect.Exception(catchException)
import Test.Spec (pending, describe, it)
import Test.Spec.Assertions (shouldEqual, expectError, fail)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)
import Data.String.CodePoints as StrCP
import Data.String as Str
import Unsafe.Coerce

import Erlang.Binary as BIN
import Data.Time.Duration
import Data.Lazy
import Data.Either
import Data.Tuple as T
import Data.Array as A
import Data.Maybe as M
import Data.Traversable
import Partial.Unsafe
import Erlang.Type
import Erlang.Helpers as H
import Erlang.Exception
import Erlang.Builtins as BIF
import Data.BigInt as DBI
import Erlang.Invoke
import Erlang.TestUtil

import Aeb.Data.Test
import Aeb.Serialize.Test
import Aeb.Fate.Asm.Test
import Aebytecode.SUITE

assertOk f args = do
  r <- exec f args
  case r of
    ErlangTuple [ErlangAtom "ok", _] -> pure unit
    _ -> fail $ "Not ok: " <> show r

main :: Effect Unit
main = unsafePartial $
    launchAff_ $ runSpec [consoleReporter] do
      describe "AebDataTest" do
        it "format_integer_test" do
          testExecOk (toErl "0") erlps__format_integer_test__0 []

      describe "AebSerializeTest" do
        it "serialize_integer_test" do
          let exp = bin
                    [111,184,129,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
          testExecOk exp erlps__serialize_integer_test__0 []
        it "serialize_deserialize_test" do
          assertOk erlps__serialize_deserialize_test___0 []

      describe "AebFateAsmTest" do
        it "asm_disasm_idenity_test" do
          assertOk erlps__asm_disasm_idenity_test__0 []
        it "asm_disasm_files_test" do
          assertOk erlps__asm_disasm_files_test___0 []

      describe "AebytecodeSUITE" do
        it "roundtrip_identy" do
          assertOk erlps__roundtrip_identy__1 [nil]
