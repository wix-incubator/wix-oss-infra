load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@core_server_build_tools//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

rules_scala_version="0d8b2d720277cbbadd804b2ef39ecf2a92cd7278" # update this as needed
rules_scala_version_sha256="22ee1092f6267471f7d2e84aca62ab49fb952d44de256d45354bdbc53186740d"

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
