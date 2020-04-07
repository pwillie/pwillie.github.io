#!/usr/bin/env make

include Makehelp.mk

###Charts
## Update a Helm chart repository index.yaml file based on a the given GitHub repository's releases
index:
	docker-compose run --rm cr cr index --config cr.yaml

## Scans a path for Helm chart packages and creates releases in the specified GitHub repo uploading the packages
upload:
	docker-compose run --rm cr cr upload --config cr.yaml