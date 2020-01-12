load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="886bc9cf6d299545510b39b4872bbb5dc7526cb3" # update this as needed
rules_scala_version_sha256="4fdf8506af2e2f1c32605b1f1d20928370640948aa144ef97b8e3bf77404320c"

def rules_scala():

  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
