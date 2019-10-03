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

    "target/test-classes must be first in classpath" in new baseCtx {
      //First check the test-agent/src/test/resources/test-file-1.txt exist in classpath
      //(see BUILD.bazel file txt_files target)
      "test-file-1.txt" must beAnExistingResource

      //create the same file in target/test-classes with a different content
      val content = randomStr
      createFile("test-file-1.txt", content = content)
      readResource("test-file-1.txt") must beEqualTo(content)
    }

  }
}