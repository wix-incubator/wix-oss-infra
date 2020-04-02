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
        artifact = "org.scala-lang.modules:scala-collection-compat_2.12:2.1.2",
        artifact_sha256 = "8aab3e1f9dd7bc392a2e27cf168af94fdc7cc2752131fc852192302fb21efdb4",
        srcjar_sha256 = "2837767d00002a23888804637c3a43136723cafbd2101ca37ea286e349b9ee14",
        deps = [
            "@org_scala_lang_scala_library"
        ],
    )
