load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="05141d175e164370bf0f2814704590666ca78d52" # update this as needed
rules_scala_version_sha256="4fb80be33eca93da70085c8e1d0a5400e17ae868bf44570816f8ecd4aaaa81d0"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
