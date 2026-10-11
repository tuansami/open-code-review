#!/bin/bash

# SPDX-License-Identifier: Apache-2.0
# Copyright 2026 alibaba/open-code-review Contributors

# Cloud sessions start from a fresh container, so the ocr CLI the review
# skills depend on has to be reinstalled each time.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v ocr >/dev/null 2>&1; then
  npm install -g @alibaba-group/open-code-review >/dev/null 2>&1
fi
