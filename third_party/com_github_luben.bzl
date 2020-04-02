load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "com_github_luben_zstd_jni",
        artifact = "com.github.luben:zstd-jni:1.4.3-1",
        artifact_sha256 = "8370149f5bd16a83d27240a8ce5a64204f3c70647ed180801dcf95f7be27ef87",
        srcjar_sha256 = "8c695df6b69bf6ae43027083ecde6931a20e78b9542f508b7e0f5e5f7ad7e335",
    )
