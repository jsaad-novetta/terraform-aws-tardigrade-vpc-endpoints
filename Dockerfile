FROM plus3it/tardigrade-ci:0.1.0

WORKDIR /ci-harness
ENTRYPOINT ["make"]

