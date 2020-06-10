load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@wix_oss_infra//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")
load("@main_repository_name//:defs.bzl", "main_repository_name")

_default_rules_scala_version = "87b2f439a918efb1adb695ee662dcce03b064ea3"  # update this as needed
_default_rules_scala_version_sha256 = "5ffa3a1c39e29fa24ff99b3f5e7f12107fc78c475b7454825c580a9224044434"

_EXPERIMENTAL_REPOS = ["wix_ci", "bazel_tooling", "core_server_build_tools"]
_EXPRIMENT_ON = True

_exprimental_rules_scala_version = "87b2f439a918efb1adb695ee662dcce03b064ea3"
_experimental_rules_scala_version_sha256 = "5ffa3a1c39e29fa24ff99b3f5e7f12107fc78c475b7454825c580a9224044434"

RULES_SCALA_TOGGLES = {}

def _rules_scala_version():
    if _EXPRIMENT_ON and main_repository_name in _EXPERIMENTAL_REPOS:
        RULES_SCALA_TOGGLES["old_workers"] = False
        return _exprimental_rules_scala_version
    else:
        RULES_SCALA_TOGGLES["old_workers"] = True
        return _default_rules_scala_version

def _rules_scala_version_sha256():
    if _EXPRIMENT_ON and main_repository_name in _EXPERIMENTAL_REPOS:
        return _experimental_rules_scala_version_sha256
    else:
        return _default_rules_scala_version_sha256

rules_scala_version = _rules_scala_version()
rules_scala_version_sha256 = _rules_scala_version_sha256()

def rules_scala():
    if native.existing_rule("test_network_sandboxing") == None:
        download_network_sandboxing_according_to_os(name = "test_network_sandboxing")

    if native.existing_rule("io_bazel_rules_scala") == None:
        http_archive(
            name = "io_bazel_rules_scala",
            url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
            type = "zip",
            strip_prefix = "rules_scala-%s" % rules_scala_version,
            sha256 = rules_scala_version_sha256,
        )
