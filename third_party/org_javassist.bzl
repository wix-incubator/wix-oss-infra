load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "org_javassist_javassist",
        artifact = "org.javassist:javassist:3.18.1-GA",
        artifact_sha256 = "3fb71231afd098bb0f93f5eb97aa8291c8d0556379125e596f92ec8f944c6162",
        srcjar_sha256 = "86974b9297eb9caa0306e116e2b9dd9e7d900e4ae73de95e40f9e5e10d880b6a",
    )
