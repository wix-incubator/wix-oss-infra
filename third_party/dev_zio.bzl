load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "dev_zio_zio_2_12",
        artifact = "dev.zio:zio_2.12:1.0.0-RC21",
        artifact_sha256 = "054a99ec0f4ff146c704286376afb59bbf8fe4415c6a6cd8232b6fe09cfb080f",
        srcjar_sha256 = "7d3bcbd6e5da1a1a5d6a391fec3565a1d2afd9bde244b54209ba1139c6fe2b5e",
        deps = [
            "@dev_zio_izumi_reflect_2_12",
            "@dev_zio_zio_stacktracer_2_12",
            "@org_scala_lang_scala_library"
        ],
        exports = [
            "@dev_zio_izumi_reflect_2_12",
            "@dev_zio_izumi_reflect_thirdparty_boopickle_shaded_2_12",
        ]
    )

    import_external(
        name = "dev_zio_zio_stacktracer_2_12",
        artifact = "dev.zio:zio-stacktracer_2.12:1.0.0-RC21",
        artifact_sha256 = "e3e6ca9ed47b81ae4cb19dd74f1d1c571804e15ad0f8f0132f57550bb553715c",
        srcjar_sha256 = "07309b1d46d38c90396bbd22db156cb2906f8116bba4be13e89e51c9b8a53cf2",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_streams_2_12",
        artifact = "dev.zio:zio-streams_2.12:1.0.0-RC21",
        artifact_sha256 = "76a7cc91112c4c883351cdf1433fb8bbcde6a7ecb00d38a10c5b51f57baa144f",
        srcjar_sha256 = "3012563b2b429dfd31811c53b5e37043c3f113df527625a9bb884f245343cb9f",
        deps = [
            "@dev_zio_zio_2_12",
            "@org_scala_lang_scala_library"
        ],
    )

    import_external(
        name = "dev_zio_zio_macros_core_2_12",
        artifact = "dev.zio:zio-macros-core_2.12:0.6.2",
        artifact_sha256 = "cdf4bef65f01977f30c993eb0d1e0a5951a0b04b899be70bcd941d9563aea15e",
        srcjar_sha256 = "b537116c00fd825a067bdbdaa6bcb81d0a23c54508b6b96ac23a24ebc8872a22",
        deps = [
            "@dev_zio_zio_2_12",
            "@org_scala_lang_scala_library"
        ],
    )

    import_external(
        name = "dev_zio_izumi_reflect_2_12",
        artifact = "dev.zio:izumi-reflect_2.12:1.0.0-M2",
        artifact_sha256 = "67e1f98924ba6547d18ac696f4cd8a0fb70307be9632f2bed0baf14535814bfb",
        srcjar_sha256 = "9c421c38c4d534098942263f35c896b6bfe6419a8ce9e4a02e2440e61298ec7d",
        deps = [
            "@dev_zio_izumi_reflect_thirdparty_boopickle_shaded_2_12",
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_izumi_reflect_thirdparty_boopickle_shaded_2_12",
        artifact = "dev.zio:izumi-reflect-thirdparty-boopickle-shaded_2.12:1.0.0-M2",
        artifact_sha256 = "71dd2cca07ff8ae9f892da3bbf5c21e598c3b5ad73b2603b88342af884a4a147",
        srcjar_sha256 = "136689b6254e67499ba1fadb41dc3d5b3b1236d04f96b9111550105baffd2da8",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )

    import_external(
        name = "dev_zio_zio_test_junit_2_12",
        artifact = "dev.zio:zio-test-junit_2.12:1.0.0-RC21",
        artifact_sha256 = "a7f683b13acb8a57674d0bf0e4b4a4288a7fafc0de52cc177d1b223bb03a0fae",
        srcjar_sha256 = "34ccc146d64893647106b8f17562072f01a4d2b4f37b372221129e4870c3c341",
        deps = [
            "@dev_zio_zio_test_2_12",
            "@junit_junit",
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_test_2_12",
        artifact = "dev.zio:zio-test_2.12:1.0.0-RC21",
        artifact_sha256 = "2e0835a76dc57a98b3abca4c719763d9d1b18ea8f42d17c79f94a42fc2ca063b",
        srcjar_sha256 = "e022d4ade6469806058995077376bf394f12f988cb0a8c371c40071fd571f633",
        deps = [
            "@dev_zio_zio_2_12",
            "@dev_zio_zio_streams_2_12",
            "@org_portable_scala_portable_scala_reflect_2_12",
            "@org_scala_lang_scala_library"
        ],
    )
