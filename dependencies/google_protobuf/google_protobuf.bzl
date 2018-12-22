load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

protobuf_version="66dc42d891a4fc8e9190c524fd67961688a37bbe"
protobuf_version_sha256="983975ab66113cbaabea4b8ec9f3a73406d89ed74db9ae75c74888e685f956f8"

def google_protobuf():
  if native.existing_rule("com_google_protobuf") == None:
      http_archive(
        name = "com_google_protobuf",
        url = "https://github.com/protocolbuffers/protobuf/archive/%s.tar.gz" % protobuf_version,
        strip_prefix = "protobuf-%s" % protobuf_version,
        sha256 = protobuf_version_sha256,
      )
