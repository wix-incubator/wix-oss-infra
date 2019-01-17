load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="c1fdb0f3b05021a052d26cc01a892fe2c5c8a1ca" # update this as needed
rules_scala_version_sha256="5ece68b8735576540a21c2b965328a9e96248c7fdb6940fd943b549603c17126"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
