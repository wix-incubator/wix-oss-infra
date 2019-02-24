load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="990c7cf35796dcb578c8e5907c5b186246b234ea" # update this as needed
rules_scala_version_sha256="8c34742e2a53cc00e3d34b3c423eff27ad88ca9da9b820f632dc6cbd13006ff2"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
