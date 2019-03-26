package com.wixpress.agent

class TestAgentTest extends AbstractTestAgentTest {
  "test agent" should {

    "create target/test-classes directory" in new baseCtx {
      "target/test-classes" must beAnExistingDirectory
    }

    "enable reading and writing files to target/test-classes" in new baseCtx {
      val filename = randomStr
      val content = randomStr
      createFile(filename, content)

      readFile(filename) must beEqualTo(content)
    }

    "add target/test-classes to classpath by default (via extra runtime entries)" in new baseCtx {
      val filename = randomStr
      createFile(filename)

      filename must beAnExistingResource
    }

  }
}