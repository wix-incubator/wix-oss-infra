load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "com_fasterxml_jackson_dataformat_jackson_dataformat_csv",
        artifact = "com.fasterxml.jackson.dataformat:jackson-dataformat-csv:2.10.0",
        artifact_sha256 = "6ddf7f4f60322a0469f7cfaeccfe546500d1e49aa0af58d80f0c45ffeb59dbef",
        srcjar_sha256 = "36ca9b99a0e1ceb7e9ff09328ff59805e8ffa822dd6c56f207b1314f149bb83b",
        deps = [
            "@com_fasterxml_jackson_core_jackson_annotations",
            "@com_fasterxml_jackson_core_jackson_core",
            "@com_fasterxml_jackson_core_jackson_databind"
        ],
      # EXCLUDES *:mail
      # EXCLUDES *:jline
      # EXCLUDES *:jms
      # EXCLUDES *:jmxri
      # EXCLUDES *:jmxtools
      # EXCLUDES *:javax
    )
