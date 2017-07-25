load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library")
def resources(runtime_deps=[], visibility=None):
    scala_library(
        name = "resources",
        resources = native.glob(["**"],exclude=["BUILD"]),
        resource_strip_prefix = "%s/"%PACKAGE_NAME,
        runtime_deps = runtime_deps,
        visibility = visibility
    )
