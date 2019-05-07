load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@core_server_build_tools//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="8f006056990307cbd8320c97a59cd09c821011d8" # update this as needed
rules_scala_version_sha256="e85c1d64520554e0dcdfe828e16ff604de0774b0c68dbb0e90ffab1a6b045adf"

def rules_scala():

  if native.existing_rule("test_network_sandboxing") == None:
      download_network_sandboxing_according_to_os(name = "test_network_sandboxing")

  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
