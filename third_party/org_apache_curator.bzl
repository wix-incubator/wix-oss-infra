load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "org_apache_curator_curator_test",
        artifact = "org.apache.curator:curator-test:2.12.0",
        artifact_sha256 = "05e800c48e3d4d1020a5bdb8fcc4a6ef706c88979516556e8fe47acf63000630",
        srcjar_sha256 = "41ad6bd779fccbe1604185c4ec3536a1cb8d61d3e9f017d9a9ad9b0554f89f3f",
        deps = [
            "@com_google_guava_guava",
            "@org_apache_zookeeper_zookeeper",
            "@org_javassist_javassist"
        ],
    )
