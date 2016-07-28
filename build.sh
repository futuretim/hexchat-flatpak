#!/bin/sh

FILE=$1

APPID=`basename $FILE .json`

echo ========== Building $APPID ================
rm -rf app
flatpak-builder --ccache --require-changes --repo=repo --subject="Build of ${APPID}, `date`" ${EXPORT_ARGS-} app $FILE
