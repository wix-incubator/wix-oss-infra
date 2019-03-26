package com.wixpress.agent

class TestAgentOverrideTest extends AbstractTestAgentTest {
  "override default extra runtime dirs" should {

    "not create target/test-classes directory" in new ctx {
      "target/test-classes" must not(beAnExistingDirectory)
    }

    "create single level directory" in new ctx {
      "dir-a" must beAnExistingDirectory
    }

    "create multi level directory" in new ctx {
      "dir-b/dir-c" must beAnExistingDirectory
    }

    "not expose extra runtime dirs by default" in new ctx {
      val filename = randomStr
      createFile(filename, randomStr, notExposedDir)

      filename must not(beAnExistingResource)
    }

    "only expose extra runtime entries to classpath" in new ctx {
      val filename = randomStr
      createFile(filename, randomStr, exposedDir)

      filename must beAnExistingResource
    }

    "expose files from data entries" in new ctx {
      "test-file-1.txt" must beAnExistingResource
      "test-dir/test-file-2.txt" must beAnExistingResource
    }
  }

  abstract class ctx extends baseCtx {
    val exposedDir = "dir-a"
    val notExposedDir = "dir-b/dir-c"
  }
}