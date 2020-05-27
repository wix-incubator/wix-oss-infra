load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "dev_zio_zio_2_12",
        artifact = "dev.zio:zio_2.12:1.0.0-RC20",
        artifact_sha256 = "be4de9756340ff761d3b51e67f26ee1c30a8f6b934df68f69fc7f3182819e87f",
        srcjar_sha256 = "9c094269da35fc0174ddf52460c647fe1cefddd88f8b71ee67ff61c80bc1d1b5",
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
        artifact = "dev.zio:zio-stacktracer_2.12:1.0.0-RC20",
        artifact_sha256 = "4cda54047ec56b9945ef1e5dbc0cc7360403423d181567540a52bfbb590107f2",
        srcjar_sha256 = "c4ca838c7e5b3328cc5524e11308114daa5a1063eec11cbe813f0de15b4322ef",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_streams_2_12",
        artifact = "dev.zio:zio-streams_2.12:1.0.0-RC20",
        artifact_sha256 = "d74002c750e696ddb0f935b45f8a248ca4e5349c241ef121db01d75f18fcabbe",
        srcjar_sha256 = "ab68dce1e50beebe1407602794bf228dfa29967566062878e47ddaca9b8d773f",
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
        artifact = "dev.zio:zio-test-junit_2.12:1.0.0-RC20",
        artifact_sha256 = "6e9d050362ab80865d1675b8e9e65b46cca94234f71f39f5e3c3c1e346f5b32b",
        srcjar_sha256 = "870e60253f2da1a76a1ae035a5808351e43c5cc34920f9c0cd91545bcb7a58a0",
        deps = [
            "@dev_zio_zio_test_2_12",
            "@junit_junit",
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_test_2_12",
        artifact = "dev.zio:zio-test_2.12:1.0.0-RC20",
        artifact_sha256 = "19c95085370ab22fc832a30d13eec3038ddc79e8f1f338568e4c63744bba156c",
        srcjar_sha256 = "cad1893fb66938a614e3b680dd9eaca593df8bee6d050427e8f4934df10b6310",
        deps = [
            "@dev_zio_zio_2_12",
            "@dev_zio_zio_streams_2_12",
            "@org_portable_scala_portable_scala_reflect_2_12",
            "@org_scala_lang_scala_library"
        ],
    )

    ####  Temporarily adding ZIO RC19* jars under separate names
    import_external(
        name = "dev_zio_zio_RC19_2_12",
        artifact = "dev.zio:zio_2.12:1.0.0-RC19-2",
        artifact_sha256 = "aee6e68c643528e33c2573b06240491a5eee88c4e7514304e003f43bfc5a7c04",
        srcjar_sha256 = "2a91708151d9640536479c7402a03cf6ee996000f4338e19d4d625ccde6d6cbb",
        deps = [
            "@dev_zio_izumi_reflect_2_12",
            "@dev_zio_zio_stacktracer_RC19_2_12",
            "@org_scala_lang_scala_library"
        ],
        exports = [
            "@dev_zio_izumi_reflect_2_12",
            "@dev_zio_izumi_reflect_thirdparty_boopickle_shaded_2_12",
        ],
    )


    import_external(
        name = "dev_zio_zio_stacktracer_RC19_2_12",
        artifact = "dev.zio:zio-stacktracer_2.12:1.0.0-RC19-2",
        artifact_sha256 = "feb1480e2a85e39328a5b9517ca8aed575fd28f608fe019a319bdc29456c74a0",
        srcjar_sha256 = "8d37774d387b1efebab6f33090a917cae76ea1fe043b91f4c8b655aa77a5792a",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_streams_RC19_2_12",
        artifact = "dev.zio:zio-streams_2.12:1.0.0-RC19-2",
        artifact_sha256 = "f0e1111d79de9fda557142786fda32a639fbcb1b94fe040dfe1f17463ecca425",
        srcjar_sha256 = "e9b2d4bef63e0cfe6d465d6ef05b1c7b942d4d4ec4e3cef9601082c989a310cb",
        deps = [
            "@dev_zio_zio_RC19_2_12",
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
        name = "dev_zio_zio_test_RC19_2_12",
        artifact = "dev.zio:zio-test_2.12:1.0.0-RC19-2",
        artifact_sha256 = "3e2701e09aeafcfc4fa82999292dd91a19792d24882427f3eccb96f1daa648dc",
        srcjar_sha256 = "0f1bbbcd9a385ae6fdb2bf598722585bc08a59de35baf328d8b523f2d5980ab7",
        deps = [
            "@dev_zio_zio_RC19_2_12",
            "@dev_zio_zio_streams_RC19_2_12",
            "@org_portable_scala_portable_scala_reflect_2_12",
            "@org_scala_lang_scala_library"
        ],
    )

    # zio-test-junit didn't exist in RC17 (so no need for RC19 naming)
    import_external(
        name = "dev_zio_zio_test_junit_2_12",
        artifact = "dev.zio:zio-test-junit_2.12:1.0.0-RC19-2",
        artifact_sha256 = "d76a92f7803ff38a8e42def086b0b4e21281f2169dab385aec3e0f0820025992",
        srcjar_sha256 = "5c663752d11acc6d0199d6863b3ca05c315c92e724382cd3f2dfa5f5576a3624",
        deps = [
            "@dev_zio_zio_test_RC19_2_12",
            "@junit_junit",
            "@org_scala_lang_scala_library"
        ],
    )
