load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_maven_import_external", "scala_import_external")

_default_server_urls = ["http://repo.dev.wixpress.com/artifactory/libs-snapshots",
                        "http://repo.dev.wixpress.com/artifactory/libs-releases",]

def safe_wix_scala_maven_import_external(name, artifact, **kwargs):
  if native.existing_rule(name) == None:
        wix_scala_maven_import_external(
            name = name,
            artifact = artifact,
            **kwargs
        )


def _coordinates_do_not_contain(artifact, keyword):
  return (artifact.find(keyword) == -1)

def _contains_sources_by_heuristic(artifact):
  return _coordinates_do_not_contain(artifact, "-dependencies") and _coordinates_do_not_contain(artifact, "-erb")

def wix_scala_maven_import_external(name, artifact, fetch_sources_override = True, enable_sources_filter_heuristic = True, **kwargs):
  """Downloads external maven artifacts

  Args:
    name: a canonical name of the external repository. 
      Expected to be $groupId_$artifactId where `.`/`-` are replaced with `_`.
    artifact: maven coordinates
    fetch_sources_override: allows opting out of source downloading (i.e. if artifact doesn't have sources)
    enable_sources_filter_heuristic: allows opting out of filtering of artifacts with "-dependencies" or "-erb". Those are filtered out of source downloading by default since by and large they don't have sources.

  """
  source_jar_has_sha = (kwargs.get("srcjar_sha256") != None)
  wix_snapshot_artifact = (artifact.endswith("SNAPSHOT"))

  fetch_sources = \
    fetch_sources_override and \
    (source_jar_has_sha or \
      (wix_snapshot_artifact and \
       enable_sources_filter_heuristic and \
       _contains_sources_by_heuristic(artifact)
      )
    )

  scala_maven_import_external(
      name = name,
      artifact = artifact,
      licenses = ["notice"],  # Apache 2.0
      fetch_sources = fetch_sources,
      server_urls = _default_server_urls,
      **kwargs
  )
