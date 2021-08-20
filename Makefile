usage:
	bin/makefile/usage

start: check-tools
	rackup

deploy:
	HEROKU_APP_NAME=kaha-govhack-2021 \
		bin/makefile/heroku-create

# Development

check-tools:
	bin/makefile/check-tools

prettier:
	bin/makefile/prettier

