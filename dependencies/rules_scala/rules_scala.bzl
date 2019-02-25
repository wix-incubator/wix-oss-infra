load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="7c9b3b0bb4abafb0bf9585bb78b17b96d462754b" # update this as needed
rules_scala_version_sha256="72cc42db104fb18ac64f634c44e08ab8e376833c8e8559bc80a946c38deec9ab"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
