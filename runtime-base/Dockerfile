FROM gcr.io/distroless/base-debian10:nonroot@sha256:78f2372169e8d9c028da3856bce864749f2bb4bbe39c69c8960a6e40498f8a88

# Quarkus quickstart dockerfiles do: COPY target/*-runner /work/application
WORKDIR /work
ENTRYPOINT ["./application", "-Dquarkus.http.host=0.0.0.0"]
