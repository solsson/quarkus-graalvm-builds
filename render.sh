#!/usr/bin/env bash
[ -z "$DEBUG" ] || set -x
set -e

EXAMPLES="
rest-json-quickstart
"

[ -d quarkus-quickstarts ] || git clone https://github.com/quarkusio/quarkus-quickstarts
cd quarkus-quickstarts

for EXAMPLE in $EXAMPLES; do
  cd $EXAMPLE
  mvn package -Pnative -Dquarkus.native.additional-build-args=--dry-run > build.log || echo "Failure was expected"
  cat build.log \
    | grep 'io.quarkus.deployment.pkg.steps.NativeImageBuildStep' \
    | grep "$(which native-image)" \
    | cut -d\  -f4- \
    | sed "s/$EXAMPLE-1.0-SNAPSHOT/__APP__/g" \
    | sed "s/ --dry-run//" \
    > ../../$EXAMPLE.txt
done

cd ..
