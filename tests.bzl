load("@io_bazel_rules_scala//scala:scala.bzl", "scala_specs2_junit_test")

_unit_prefixes = ["Test"]
_unit_suffixes = _unit_prefixes
_unit_tags = ["UT"]

_it_prefixes = ["IT", "E2E"]
_it_suffixes = _it_prefixes
_it_tags = ["IT", "E2E"]

_mixed_prefixes = _unit_prefixes + _it_prefixes
_mixed_suffixes = _mixed_prefixes
_mixed_tags = _unit_tags + _it_tags

def specs2_unit_test(**kwargs):
  args = dict(kwargs)
  args["size"] = args.pop("size", "small")

  _add_test_target(
      _unit_prefixes,
      _unit_suffixes,
      _unit_tags,
      False,
      **args
  )

def specs2_ite2e_test(block_network = True, **kwargs):
  _add_test_target(
      _it_prefixes,
      _it_suffixes,
      _it_tags,
      block_network,
      **kwargs
  )

def specs2_mixed_test(block_network = True, **kwargs):
  _add_test_target(
      _mixed_prefixes,
      _mixed_suffixes,
      _mixed_tags,
      block_network,
      **kwargs
  )

def _add_test_target(prefixes, suffixes, test_tags, block_network, **kwargs):
  scala_specs2_junit_test(
      prefixes = kwargs.pop("prefixes", prefixes),
      suffixes = kwargs.pop("suffixes", suffixes),
      tags = _test_tags(kwargs.pop("tags", test_tags), block_network),
      **kwargs
  )

def _test_tags(test_tags, block_network):
  tags = []
  if (block_network):
    tags = ["block-network"]

  return tags + test_tags