load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="53b14d06df37e5bab57d7aae62a2934d7efcc3a5" # update this as needed
rules_scala_version_sha256="5ae91cf64163b9bf25b7bfa16ae09bfb551b80700bc5be73d5b22041185614a1"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
