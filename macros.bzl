def resources(visibility=None):
	native.java_library(
	    name = "resources",
	    resources = native.glob(["**"],exclude=["BUILD"]),
	    resource_strip_prefix = "%s/"%PACKAGE_NAME,
	    visibility = visibility
	)