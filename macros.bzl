def resources(runtime_deps=[], visibility=None):
    native.java_library(
        name = "resources",
        resources = native.glob(["**"],exclude=["BUILD"]),
        resource_strip_prefix = "%s/"%PACKAGE_NAME,
        runtime_deps = runtime_deps,
        visibility = visibility
    )
