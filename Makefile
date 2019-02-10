
.PHONY: build
build:
	bundle exec jekyll build

.PHONY: test
test:
	bundle exec rake test
