def _download_network_sandboxing_impl(repository_ctx):
    if (repository_ctx.os.name.lower().startswith("mac os")):
        block_network_if_not_on_mac_os = ""
    else:
        block_network_if_not_on_mac_os = "block-network"

    repository_ctx.file("WORKSPACE", executable = False)
    repository_ctx.file("BUILD.bazel", executable = False)
    repository_ctx.file("network_sandboxing.bzl", content="""network_sandboxing = ["{block_network_if_not_on_mac_os}"]""".format(block_network_if_not_on_mac_os = block_network_if_not_on_mac_os), executable = False)

"""
  OS X network sandboxing is pretty broken so we need to disable it there.
  This rule exposes a single variable which might contain the `block-network` tag based on OS.
  Ideally we'd use `select` to choose this tag but tags aren't selectable (bazelbuild/bazel#2971)
  and since we only have a macro (not a full rule) the only place which has access to the OS
  is a repository rule which is why we need the external repository indirection.
"""
download_network_sandboxing_according_to_os = repository_rule(
    implementation = _download_network_sandboxing_impl,
)
