load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@wix_oss_infra//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="a2f5852902f5b9f0302c727eead52ca2c7b6c3e2" # update this as needed
rules_scala_version_sha256="8c48283aeb70e7165af48191b0e39b7434b0368718709d1bced5c3781787d8e7"

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
