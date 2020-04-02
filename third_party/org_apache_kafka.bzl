load("@wix_oss_infra//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

    import_external(
        name = "org_apache_kafka_kafka241_2_12",
        artifact = "org.apache.kafka:kafka_2.12:2.4.1",
        artifact_sha256 = "6e400cfc173270ec5cba4fdc43d9ba6741c31af25690d7a5aba89a91ca092e17",
        srcjar_sha256 = "2941b38dc81fe28845923223729ecc05b2a59cb7ab9bdc512dc1c3cfd3783004",
        deps = [
            "@com_fasterxml_jackson_core_jackson_databind",
            "@com_fasterxml_jackson_dataformat_jackson_dataformat_csv",
            "@com_fasterxml_jackson_datatype_jackson_datatype_jdk8",
            "@com_fasterxml_jackson_module_jackson_module_scala_2_12",
            "@com_typesafe_scala_logging_scala_logging_2_12",
            "@com_yammer_metrics_metrics_core",
            "@commons_cli_commons_cli",
            "@net_sf_jopt_simple_jopt_simple",
            "@org_apache_kafka_kafka_clients",
            "@org_apache_zookeeper_zookeeper",
            "@org_scala_lang_modules_scala_collection_compat_2_12",
            "@org_scala_lang_modules_scala_java8_compat_2_12",
            "@org_scala_lang_scala_library",
            "@org_scala_lang_scala_reflect",
            "@org_slf4j_slf4j_api"
        ],
      # EXCLUDES log4j:log4j
    )


    import_external(
        name = "org_apache_kafka_kafka_clients241",
        artifact = "org.apache.kafka:kafka-clients:2.4.1",
        artifact_sha256 = "a2be15ae6d354b769713ae0cbb3184f225aa16fc98205b1eb24afd9fc2a360d9",
        srcjar_sha256 = "0a77a1ec82621ddcec02e8d2d2b38a5f3324b867afd80038b006ffe30f99091d",
        deps = [
            "@com_github_luben_zstd_jni",
            "@org_lz4_lz4_java",
            "@org_slf4j_slf4j_api",
            "@org_xerial_snappy_snappy_java"
        ],
      # EXCLUDES *:mail
      # EXCLUDES *:jline
      # EXCLUDES *:jms
      # EXCLUDES *:jmxri
      # EXCLUDES *:jmxtools
      # EXCLUDES *:javax
    )
