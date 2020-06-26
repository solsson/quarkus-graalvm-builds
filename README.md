
Lists the `native-image` args that Quarkus builds use,
because running native-image compile inside a maven builds uses a lot of memory
(4+ GB instead of 2+ GB).

```
mvn package -Pnative -Dquarkus.native.additional-build-args=--dry-run
cd target/my-app-1.0-SNAPSHOT-native-image-source-jar/
native-image $(curl -sL https://github.com/solsson/quarkus-graalvm-builds/raw/master/kafka-quickstart.txt | sed 's/__APP__-1.0-SNAPSHOT/my-app-1.0-SNAPSHOT/g')
```
