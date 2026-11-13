.DEFAULT_GOAL := dev

PROJECT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
FRONTEND_DIR := $(PROJECT_DIR)frontend

.PHONY: dev frontend install build

dev: frontend

frontend:
	pnpm --dir "$(FRONTEND_DIR)" run dev

install:
	pnpm --dir "$(FRONTEND_DIR)" install

build:
	pnpm --dir "$(FRONTEND_DIR)" run build
