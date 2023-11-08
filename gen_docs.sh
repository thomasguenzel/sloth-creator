#!/bin/zsh

PATH_TO_DOCS_DIR=../docs
HOSTING_BASE="sloth-creator"
TARGET_NAME="SlothCreator"
TARGET_URL_NAME="slothcreator"

cd SlothCreator

swift package --allow-writing-to-directory $PATH_TO_DOCS_DIR \
    generate-documentation --target $TARGET_NAME \
    --disable-indexing \
    --transform-for-static-hosting \
    --hosting-base-path $HOSTING_BASE \
    --output-path $PATH_TO_DOCS_DIR

echo "<script>window.location.href += \"/documentation/${TARGET_URL_NAME}\"</script>" > ${PATH_TO_DOCS_DIR}/index.html
