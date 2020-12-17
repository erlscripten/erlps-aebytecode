ERLANG_PROJECT=aebytecode

.PHONY: $(ERLANG_PROJECT) transpile test clean libs

transpile: $(ERLANG_PROJECT) libs
	./erlscripten -p $(ERLANG_PROJECT) -o . --skip-tests --omit aebytecode/_build/default/lib/enacl --omit aebytecode/_build/default/lib/eblake2
	spago build

test: $(ERLANG_PROJECT) libs
	./erlscripten -p $(ERLANG_PROJECT) -o . --omit aebytecode/_build/default/lib/enacl --omit aebytecode/_build/default/lib/eblake2  -S "10:aeb_fate_pp:format_op" -S "10:aeb_asm_scan:yystate" -S "10:aeb_fate_asm:to_bytecode"
	spago test

$(ERLANG_PROJECT):
	cd $(ERLANG_PROJECT); ../rebar3 compile; ../rebar3 eunit

libs: eblake2

eblake2:
	ln eblake2/* src/ -f

clean:
	rm src/* -f
	rm test/Aeb* -f
