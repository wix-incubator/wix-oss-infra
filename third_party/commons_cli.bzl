load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "commons_cli_commons_cli",
        artifact = "commons-cli:commons-cli:1.4",
        artifact_sha256 = "fd3c7c9545a9cdb2051d1f9155c4f76b1e4ac5a57304404a6eedb578ffba7328",
        srcjar_sha256 = "59fd9d6ca09ade4f27bddd274fb842ea48fd92118a755d0a64cf60413cd1c3fc",
    )
