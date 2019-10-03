def setup_agent(jvm_flags, extra_runtime_dirs, extra_runtime_entries):
    jvm_flags.extend([
        "-javaagent:$(rootpath @wix_oss_infra//test-agent/src/main/java/com/wixpress/agent:test-agent_deploy.jar)",
        "-Dextra.dirs=" + ":".join(extra_runtime_dirs),
    ])

    # test-agent-deploy jar is added to bootcalsspath becasue when the test classpath is very long
    # and the test is executed using a manifest jar for some unknown reason the JVM fails to find
    # the agent jar
    runtime_entries = [
        "$(rootpath @wix_oss_infra//test-agent/src/main/java/com/wixpress/agent:test-agent_deploy.jar)"
    ]

    if extra_runtime_entries != None:
        runtime_entries.extend(extra_runtime_entries)

    jvm_flags.append("-Xbootclasspath/a:" + ":".join(runtime_entries))