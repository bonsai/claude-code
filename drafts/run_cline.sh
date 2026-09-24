#!/bin/bash
cd ~/supervised-delegation
cline "$(cat drafts/prompts/cline.md)" 2>&1 | tail -45