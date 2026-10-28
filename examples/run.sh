#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_task_graph info
PYTHONPATH=src python -m gbt_task_graph check --payload '{}'
PYTHONPATH=src python -m gbt_task_graph run   --payload '{}'
