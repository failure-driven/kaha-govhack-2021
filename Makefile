usage:
	bin/makefile/usage

start: check-tools
	rackup

deploy:
	echo "TODO deploy to production"

# Development

check-tools:
	bin/makefile/check-tools

prettier:
	bin/makefile/prettier

