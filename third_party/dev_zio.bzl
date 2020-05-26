load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "dev_zio_zio_2_12",
        artifact = "dev.zio:zio_2.12:1.0.0-RC17",
        artifact_sha256 = "35ade72b393ff4dc6f43f00a7c8a3e7e6c9fe4b09135c587380d361ce87ffdfb",
        srcjar_sha256 = "0fb84fd9ed5dbf8b1faf903b349842b11cad86ea61e93b04e7e9e75f17bac537",
        deps = [
            "@dev_zio_zio_stacktracer_2_12",
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_stacktracer_2_12",
        artifact = "dev.zio:zio-stacktracer_2.12:1.0.0-RC17",
        artifact_sha256 = "dd43181922c418d5ab896c7f1f5f1e95ee2b5c23087a88f36e1e8979418fc36b",
        srcjar_sha256 = "87bb8a7c61f8d6359af08eb0635ece6f27805ebbe49ee747976d2b92c7f1e153",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_streams_2_12",
        artifact = "dev.zio:zio-streams_2.12:1.0.0-RC17",
        artifact_sha256 = "640cfa72edc83708b51d454046f4e87bd2a0357141ccf68bf82aaccc736d2a65",
        srcjar_sha256 = "e77ebd39bbeca257f0a774e5d10015cffc0b0b2728f574640b2e6c53da269120",
        deps = [
            "@dev_zio_zio_2_12",
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "dev_zio_zio_test_2_12",
        artifact = "dev.zio:zio-test_2.12:1.0.0-RC17",
        artifact_sha256 = "d5415b493da334da445ee1bc829550cb5c32f76e9035c43ce3ed781f43249c7e",
        srcjar_sha256 = "c16dad2b0064cd7afed2d485c422ab0666a9ad76fea2519050d9e4fc636f3c9b",
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
