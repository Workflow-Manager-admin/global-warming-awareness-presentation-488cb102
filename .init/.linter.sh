#!/bin/bash
cd /home/kavia/workspace/code-generation/global-warming-awareness-presentation-488cb102/slidev_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

