package com.wixpress.agent

import java.nio.file.{Files, Paths}
import java.util.UUID

import org.specs2.mutable.SpecificationWithJUnit
import org.specs2.specification.Scope

import scala.io.Source

abstract class AbstractTestAgentTest extends SpecificationWithJUnit {
  abstract class baseCtx extends Scope with TestAgentMatchers {
    val fileContent = "content"

    def createFile(fileName: String, content:
      String = randomStr, directory: String = "target/test-classes") = {
      Files.write(filePath(fileName, directory), content.getBytes())
    }

    def filePath(fileName: String, directory: String) =
      Paths.get(directory, fileName)

    def readFile(fileName: String, directory: String = "target/test-classes") =
      Source.fromFile(filePath(fileName, directory).toString).mkString

    def readResource(path: String) =
      Source.fromInputStream(fileAsResource(path)).mkString

    def fileAsResource(path: String) =
      classloader.getResourceAsStream(path)

    def randomStr = UUID.randomUUID().toString
  }
}
