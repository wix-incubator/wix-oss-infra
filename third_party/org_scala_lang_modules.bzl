load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "org_scala_lang_modules_scala_java8_compat_2_12",
        artifact = "org.scala-lang.modules:scala-java8-compat_2.12:0.8.0",
        artifact_sha256 = "d9d5dfd1bc49a8158e6e0a90b2ed08fa602984d815c00af16cec53557e83ef8e",
        srcjar_sha256 = "c0926003987a5c21108748fda401023485085eaa9fe90a41a40bcf67596fff34",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "org_scala_lang_modules_scala_parser_combinators_2_12",
        artifact = "org.scala-lang.modules:scala-parser-combinators_2.12:1.0.6",
        artifact_sha256 = "c9dd59ef2231b73e2a415885bd9c5e4f9e593cd84c0d5a104d6722ce0294349d",
        srcjar_sha256 = "3735bad5882255d7561656a035129098c234fa17cbef517995c9f87fba7ab2d0",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "org_scala_lang_modules_scala_xml_2_12",
        artifact = "org.scala-lang.modules:scala-xml_2.12:1.1.0",
        artifact_sha256 = "cf300196dbc0e4706a94e189d2c99b0c292d3f7650f94ce7c16de81b2a262346",
        srcjar_sha256 = "46a8f4be00c620b737b783a9f9107725d0d03c973e9b691c817e0336bc1f6192",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )


    import_external(
        name = "org_scala_lang_modules_scala_collection_compat_2_12",
        artifact = "org.scala-lang.modules:scala-collection-compat_2.12:0.1.1",
        artifact_sha256 = "acf79af5eac905edc6fd6dcc18f98562bf026a92f881946ceef068f7d36b9f0e",
        srcjar_sha256 = "91b0c086d8390d57612d101a2b19f2d7bda8b06479b15648bd72993e30630354",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )