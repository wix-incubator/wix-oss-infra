load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="166442d54b3d1e40d21eab3b44ddf7b39618b8fa" # update this as needed
rules_scala_version_sha256="7c804fe3eca66ce3c86dd8fca0998fb59059420d8583181ba926f957d074d051"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
