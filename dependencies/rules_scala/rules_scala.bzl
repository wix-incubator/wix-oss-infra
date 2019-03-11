load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# specs2 4.4.1 - https://github.com/wix/rules_scala/commit/c006f2e977d673aa6d5201e470c240224e433b74
rules_scala_version="c006f2e977d673aa6d5201e470c240224e433b74" # update this as needed
rules_scala_version_sha256="1e6b0e9e59f4d80869f5f27daec9ac75be676b88f80bb988fe22815fecb4471b"

def rules_scala():
  if native.existing_rule("io_bazel_rules_scala") == None:
      http_archive(
                 name = "io_bazel_rules_scala",
                 url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
                 type = "zip",
                 strip_prefix= "rules_scala-%s" % rules_scala_version,
                 sha256 = rules_scala_version_sha256,
      )
