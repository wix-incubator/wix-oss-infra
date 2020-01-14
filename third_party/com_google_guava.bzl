load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "com_google_guava_guava",
        artifact = "com.google.guava:guava:16.0.1",
        artifact_sha256 = "a896857d07845d38c7dc5bbc0457b6d9b0f62ecffda010e5e9ec12d561f676d3",
        srcjar_sha256 = "154ce0c88dce526b822417c8402901ad0a5a299156b38c79b40cce72b72b3c2b",
    )
