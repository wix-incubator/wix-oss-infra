load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_maven_import_external")

def safe_wix_scala_maven_import_external(name, artifact, **kwargs):
  if native.existing_rule(name) == None:
        wix_scala_maven_import_external(
            name = name,
            artifact = artifact,
            **kwargs
        )


def wix_scala_maven_import_external(name, artifact, **kwargs):
  scala_maven_import_external(
              name = name,
              artifact = artifact,
              licenses = ["notice"],  # Apache 2.0
              server_urls = ["http://repo.dev.wixpress.com/artifactory/libs-snapshots"],
              **kwargs
          )