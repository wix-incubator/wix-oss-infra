load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@core_server_build_tools//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="533c8b8c6833fcaf7b9c9174d4b1eed812d095fb" # update this as needed
rules_scala_version_sha256="387387d19ac7b1efa1caeebf40e0df1adbf31eebd024b93b3ba1f85a887ac28a"

def rules_scala():

  if native.existing_rule("test_network_sandboxing") == None:
      download_network_sandboxing_according_to_os(name = "test_network_sandboxing")

  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
