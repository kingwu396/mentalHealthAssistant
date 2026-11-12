.DEFAULT_GOAL := dev

PROJECT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
FRONTEND_DIR := $(PROJECT_DIR)frontend

.PHONY: dev frontend install build

dev: frontend

frontend:
	npm --prefix "$(FRONTEND_DIR)" run dev

install:
	npm --prefix "$(FRONTEND_DIR)" install

build:
	npm --prefix "$(FRONTEND_DIR)" run build
