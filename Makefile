## Downloads Node.js
## @category Node.js
getnode:
	mkdir venvnode || true && wget -c https://nodejs.org/dist/v18.13.0/node-v18.13.0-linux-x64.tar.xz -O - | tar --strip-components=1 -xJ -C venvnode

## Modifies PATH variable with Node.js bin and modules
## Usage:
##	. <(make setnode)
## @category Node.js
setnode:
	@echo export PATH="$(PATH):$(shell pwd)/venvnode/bin:$(shell pwd)/node_modules/.bin"


## Installs npm modules.
## @category Node.js
npminstall:
	npm install

## Starts development server.
## @category Cloudflare
startdev:
	cd ./cloudflare && \
	npx wrangler pages dev frontend
