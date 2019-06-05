load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@core_server_build_tools//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="ccb913d434c24f2a1050f6cd29d3a3af783dbaba" # update this as needed
rules_scala_version_sha256="389423538717ecf8a2a702a76e21ee741bf07cd9ffa6894113453412594df8e8"

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
