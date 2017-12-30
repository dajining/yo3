SHELL := /bin/bash

# IMAGE
IMAGE_NAME     := $(subst $(shell git rev-parse --show-toplevel)/docker/,,$(shell pwd))
IMAGE_PATH 		 := dajining/yo3-$(IMAGE_NAME)

# VERSIONING
VERSION_FILE   := Version
VERSION        := $(shell date +%Y-%m-%d-%H%M%S)
CURRENT_VERSION	= $(shell cat $(VERSION_FILE))

# TARGETS
TARGETS := $(shell find . -type f -not -name "Makefile" -not -name $(VERSION_FILE))
TARGET_FILES := $(TARGETS) $(OTHER_TARGETS)

.DEFAULT_GOAL := help

targets: ## Target Dockerfile
	@echo $(TARGET_FILES)

build: $(VERSION_FILE) ## Build docker image

$(VERSION_FILE): $(TARGET_FILES)
	@docker build -t $(IMAGE_PATH):$(VERSION) .
	@docker tag $(IMAGE_PATH):$(VERSION) $(IMAGE_PATH):latest
	@echo $(VERSION) > $(VERSION_FILE)

push: ## Push docker image
	@docker push $(IMAGE_PATH):$(CURRENT_VERSION)
	@docker push $(IMAGE_PATH):latest

clean: ## Cleanup docker old images
	@docker images --format "{{.ID}}\t{{.CreatedAt}}\t{{.Tag}}" $(IMAGE_PATH) \
		| sort -r -k2,3 \
		| awk -F"\t" '$$3 != "latest" && NR > 3 {print $$1}' \
		| xargs -n 1 docker rmi -f

help: ## Help
	@grep -E '^[0-9a-zA-Z_/()$$-]+:.*?## .*$$' $(lastword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: help
