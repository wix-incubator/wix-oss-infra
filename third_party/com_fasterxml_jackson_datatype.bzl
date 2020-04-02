load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "com_fasterxml_jackson_datatype_jackson_datatype_jdk8",
        artifact = "com.fasterxml.jackson.datatype:jackson-datatype-jdk8:2.9.6",
        artifact_sha256 = "fa0f855e408a50690213e03ab711c294d920a218a379c5a9304de17abd51d514",
        srcjar_sha256 = "e07e8720b74d4a9a941e37507129e06c1c468436d959a57c75902cfd6313f9e8",
        deps = [
            "@com_fasterxml_jackson_core_jackson_core",
            "@com_fasterxml_jackson_core_jackson_databind"
        ],
    )

