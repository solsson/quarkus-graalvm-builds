
Lists the `native-image` args that Quarkus builds use,
because running native-image compile inside a maven builds uses a lot of memory
(4+ GB instead of 2+ GB).

```
mvn package -Pnative -Dquarkus.native.additional-build-args=--dry-run || echo "Failure was expected"
cd target/my-app-1.0-SNAPSHOT-native-image-source-jar/
native-image $(curl -sL https://github.com/solsson/quarkus-graalvm-builds/raw/master/rest-json-quickstart.txt | sed 's/__APP__/my-app-1.0-SNAPSHOT/g')
```
