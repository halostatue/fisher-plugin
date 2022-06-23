SHELL := /usr/bin/env fish

all: fmt lint install test

fmt:
	@fish_indent --write **.fish

lint:
	@for file in **.fish; fish --no-execute $$file; end

install: install-fisher
	@fisher install . >/dev/null

init:

# Unit tests can be written however you want. There are two examples that
# follow.
test:

# The first one is based on the way that tests are run in IlanCosman/tide,
# using littlecheck.py.
test-littlecheck: install install-clownfish install-littlecheck
	@fish tests/test_setup.fish
	@python3 littlecheck.py --progress tests/**.test.fish

# The second one is based on the way tests are run with
# jorgebucaran/fishtape.
test-fishtape: install install-clownfish install-fishtape
	@fishtape tests/**.test.fish

install-littlecheck: littlecheck.py

littlecheck.py:
	@curl -sL https://raw.githubusercontent.com/ridiculousfish/littlecheck/HEAD/littlecheck/littlecheck.py \
		-o littlecheck.py

install-fisher:
	@type -q fisher || begin; curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher; end

install-clownfish:
	@type -q mock || fisher install IlanCosman/clownfish

install-fishtape:
	@type -q fishtape ||fisher install jorgebucaran/fishtape

.PHONY: \
	all \
	fmt \
	install \
	install-clownfish \
	install-fisher \
	install-fishtape \
	install-littlecheck \
	lint \
	test \
	test-fishtape \
	test-littlecheck

## START init
.PHONY: \
	init \
	has-init-variables

init: has-init-variables
	@sed -i '' \
		-e 's!halostatue/fisher-plugin!'$$NAME'!g' \
		-e 's!OWNER/REPONAME!'$$NAME'!g' \
		-e 's!Austin Ziegler!'$$AUTHOR'!g' \
		-e '/^> |^>$$/d' \
		-e 's/2022-06-22/'(date +%Y-%m-%d)'/' \
		-e 's/2022/'(date +%Y)'/' \
		*.md
	@printf '# Contributors\n\n- %s\n' $$AUTHOR > CONTRIBUTORS.md
	@sed -i '' -e 's/ponyo_/'(string replace -a -r '[^[:alpha:]]' _ $$NAME)'_/' conf.d/ponyo.fish
	@git mv conf.d/ponyo.fish conf.d/(string replace -a -r '[^[:alpha:]]' _ $$NAME).fish
	@git rm -f */.keep
	@mkdir -p functions conf.d completions tests
	@sed -i '' -e '/^## START init$$/,/## END init$$/d' GNUmakefile

has-init-variables:
	@set -q NAME || begin; echo 'Missing $$NAME variable' && false; end
	@set -q AUTHOR || begin; echo 'Missing $$AUTHOR variable' && false; end

## END init
