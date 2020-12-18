ERLANG_PROJECT=aebytecode

.PHONY: $(ERLANG_PROJECT) transpile test clean libs

transpile: $(ERLANG_PROJECT) libs
	./erlscripten -p $(ERLANG_PROJECT) -o . --skip-tests --omit aebytecode/_build/default/lib/enacl --omit aebytecode/_build/default/lib/eblake2
	spago build

test: $(ERLANG_PROJECT) libs
	./erlscripten -p $(ERLANG_PROJECT) -o . --omit aebytecode/_build/default/lib/enacl --omit aebytecode/_build/default/lib/aeserialization --omit aebytecode/_build/default/lib/eblake2 --omit aebytecode/_build/default/lib/base58 -S "10:aeb_fate_pp:format_op" -S "5:aeb_fate_asm_scan:yystate" -S "10:aeb_asm_scan:yystate" -S "5:aeb_fate_asm:to_bytecode" -S "11:aeb_opcodes:m_to_op" -S "6:aeb_fate_maps:allocate_store_maps" -S "10:aeb_fate_maps:unfold_store_maps" -S "10:aeb_fate_maps:refcount" -S "10:aeb_opcodes:opcode" -S "10:aeb_opcodes:mnemonic" -S "5:aeb_fate_encoding:serialize" -S "5:aeb_fate_encoding:serialize_type" -S "5:aeb_fate_encoding:deserialize_type" -S "5:aeb_fate_encoding:deserialize2"
	spago test

$(ERLANG_PROJECT):
	cd $(ERLANG_PROJECT); ../rebar3 compile; ../rebar3 eunit

libs: eblake2

eblake2:
	ln eblake2/* src/ -f

clean:
	rm src/* -f
	rm test/Aeb* -f
