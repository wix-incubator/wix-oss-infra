load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="4cfa1bae27490d577a036a66d8de08085059cfa1" # update this as needed
rules_scala_version_sha256="99097662c8e07cb452e865847a7ecae072bd6c4460121e5d82fd4cf6d2aba407"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
