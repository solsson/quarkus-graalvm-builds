
Lists the `native-image` args that Quarkus builds use,
because running native-image compile inside a maven builds uses a lot of memory
(4+ GB instead of 2+ GB).

```
native-image $(curl -sL https://github.com/solsson/quarkus-graalvm-builds/raw/master/kafka-quickstart.txt | sed 's/__APP__/my-app/g')
```
