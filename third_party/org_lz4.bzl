load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "org_lz4_lz4_java",
        artifact = "org.lz4:lz4-java:1.6.0",
        artifact_sha256 = "d229545aa2b1d5203c876614bdbcffcacc303697f4f8f26f764e1d6c1ed2e416",
        srcjar_sha256 = "db7727c82c150cec38a422b9692f6431150ea2c0c0d0c723bdf7fe6946149041",
    )
