load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@core_server_build_tools//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="14d9742496859faaf860b1adfc8126f3ed077921" # update this as needed
rules_scala_version_sha256="d5fcd504a6eafb6d77ee5cd8b457d9678c313f38ef2f1da71246307132a9d6c8"

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
