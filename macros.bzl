def resources(runtime_deps=[], visibility=None):
    native.java_library(
        name = "resources",
        resources = native.glob(["**"],exclude=["BUILD"]),
        resource_strip_prefix = "%s/"%PACKAGE_NAME,
        runtime_deps = runtime_deps,
        visibility = visibility
    )


def maven_archive(name, artifact):
  native.new_http_archive(
      name = name,
      url = _convert_to_url(artifact),
      build_file_content = 'filegroup(name = "archive", srcs = glob(["**/*"],exclude=["BUILD.bazel","WORKSPACE","*.zip","*.tar.gz"]), visibility = ["//visibility:public"])'
  )

def maven_proto(name, artifact):
  native.new_http_archive(
      name = name,
      url = _convert_to_url(artifact),
      build_file_content = 'proto_library(name = "proto", srcs = glob(["**/*.proto"]), visibility = ["//visibility:public"])'
  )

def _convert_to_url(artifact):
    parts = artifact.split(":")
    group_id_part = parts[0].replace(".","/")
    artifact_id = parts[1]
    version = parts[2]
    packaging = "jar"
    classifier_part = ""
    if len(parts) == 4:
      packaging = parts[2]
      version = parts[3]
    elif len(parts) == 5:
      packaging = parts[2]
      classifier_part = "-"+parts[3]
      version = parts[4]

    final_name = artifact_id + "-" + version + classifier_part + "." + packaging
    url_suffix = group_id_part+"/"+artifact_id + "/" + version + "/" + final_name
    url_prefix = "https://repo.dev.wixpress.com/artifactory/libs-snapshots/"
    return url_prefix + url_suffix