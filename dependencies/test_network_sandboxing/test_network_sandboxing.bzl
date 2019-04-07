load("@wix_oss_infra//dependencies/test_network_sandboxing:download_network_sandboxing.bzl", "download_network_sandboxing_according_to_os")

def test_network_sandboxing():
  if native.existing_rule("test_network_sandboxing") == None:
      download_network_sandboxing_according_to_os(name = "test_network_sandboxing")
