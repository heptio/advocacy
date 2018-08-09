
ifndef VERBOSE
	MAKEFLAGS += --silent
endif

TARGET = advocacy
GOTARGET = github.com/heptio/$(TARGET)
REGISTRY ?= gcr.io/heptio-prod
IMAGE = $(REGISTRY)/$(TARGET)
DIR := ${CURDIR}
DOCKER ?= docker

GIT_VERSION ?= $(shell git describe --always --dirty)
IMAGE_VERSION ?= $(shell git describe --always --dirty)
IMAGE_BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD | sed 's/\///g')
GIT_REF = $(shell git rev-parse --short=8 --verify HEAD)

FMT_PKGS=$(shell go list -f {{.Dir}} ./... | grep -v vendor | tail -n +2)

default: container push

push: ## Push to the docker registry
	$(DOCKER) push $(REGISTRY)/$(TARGET):$(GIT_REF)
	$(DOCKER) push $(REGISTRY)/$(TARGET):latest

clean: ## Clean the docker images
	rm -f $(TARGET)
	$(DOCKER) rmi $(REGISTRY)/$(TARGET) || true

container: ## Build the docker container
	$(DOCKER) build \
		-t $(REGISTRY)/$(TARGET):$(IMAGE_VERSION) \
		-t $(REGISTRY)/$(TARGET):$(IMAGE_BRANCH) \
		-t $(REGISTRY)/$(TARGET):$(GIT_REF) \
	    -t $(REGISTRY)/$(TARGET):latest \
		.

report: ## Run the report logic after a build has completed
	./scripts/report.sh

run: ## Run the controller in a container
	$(DOCKER) run $(REGISTRY)/$(TARGET):$(IMAGE_VERSION)

.PHONY: help
help:  ## Show help messages for make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

