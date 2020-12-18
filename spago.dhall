{ name = "aebytecode-purs"
, dependencies =
  [ "arraybuffer"
  , "b64"
  , "base58"
  , "bigints"
  , "console"
  , "effect"
  , "integers"
  , "lists"
  , "node-buffer"
  , "numbers"
  , "psci-support"
  , "purescript-erlps-core"
  , "purescript-erlps-stdlib"
  , "purescript-erlps-aeserialization"
  , "rationals"
  , "b64"
  , "spec"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
