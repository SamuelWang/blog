#!/bin/bash

# Usage information
usage() {
  echo "Usage: $0 [LANGUAGE]"
  echo "  LANGUAGE: en, zh-tw, or both (default: both)"
  echo ""
  echo "Examples:"
  echo "  $0 en      - Generate English article only"
  echo "  $0 zh-tw   - Generate Traditional Chinese article only"
  echo "  $0 both    - Generate both language articles"
  echo "  $0         - Generate both language articles (default)"
  exit 1
}

# Get language argument (default to "both")
LANGUAGE="${1:-both}"

# Validate language argument
if [[ "$LANGUAGE" != "en" && "$LANGUAGE" != "zh-tw" && "$LANGUAGE" != "both" ]]; then
  echo "Error: Invalid language '$LANGUAGE'"
  echo ""
  usage
fi

# Generate timestamp in yyyyMMddhhmmss format
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Define article directories
EN_DIR="src/data/articles/en"
ZH_TW_DIR="src/data/articles/zh-tw"

# Create empty article template with schema
create_article() {
  local file_path=$1
  
  cat > "$file_path" << 'EOF'
---
title: ""
slug: ""
author: ""
description: ""
tags: []
releaseDate: ""
updateDate: ""
---

EOF
}

# Create English article
if [[ "$LANGUAGE" == "en" || "$LANGUAGE" == "both" ]]; then
  EN_FILE="${EN_DIR}/${TIMESTAMP}.md"
  create_article "$EN_FILE"
  echo "Created: $EN_FILE"
fi

# Create Traditional Chinese article
if [[ "$LANGUAGE" == "zh-tw" || "$LANGUAGE" == "both" ]]; then
  ZH_TW_FILE="${ZH_TW_DIR}/${TIMESTAMP}.md"
  create_article "$ZH_TW_FILE"
  echo "Created: $ZH_TW_FILE"
fi

echo "Article files generated with ID: $TIMESTAMP"
