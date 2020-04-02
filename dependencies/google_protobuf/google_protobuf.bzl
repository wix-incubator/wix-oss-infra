load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

protobuf_version="3.11.2"
protobuf_version_sha256="e8c7601439dbd4489fe5069c33d374804990a56c2f710e00227ee5d8fd650e67"

def google_protobuf():
  if native.existing_rule("zlib") == None:
      http_archive(
        name = "zlib",
        build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
        sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
        strip_prefix = "zlib-1.2.11",
        urls = ["https://zlib.net/zlib-1.2.11.tar.gz"],
      )

  if native.existing_rule("com_google_protobuf") == None:
      http_archive(
        name = "com_google_protobuf",
        url = "https://github.com/protocolbuffers/protobuf/archive/v%s.tar.gz" % protobuf_version,
        strip_prefix = "protobuf-%s" % protobuf_version,
        sha256 = protobuf_version_sha256,
      )

  native.bind(
    name = "io_bazel_rules_scala/dependency/proto/grpc_deps",
    actual = "@server_infra//framework/grpc/generator-bazel/src/main/rules:wix_grpc_dependencies",
  )

  native.bind(
    name = "io_bazel_rules_scala/dependency/proto/implicit_compile_deps",
    actual = "@server_infra//framework/grpc/generator-bazel/src/main/rules:wix_implicit_gen_dependencies",
  )
  
