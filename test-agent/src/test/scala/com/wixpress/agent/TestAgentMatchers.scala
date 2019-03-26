package com.wixpress.agent

import java.nio.file.{Files, Paths}

import org.specs2.matcher.Matcher
import org.specs2.matcher.Matchers._

trait TestAgentMatchers {
  def beAnExistingDirectory: Matcher[String] = { s: String =>
    (Files.isDirectory(Paths.get(s)),
      s"${Paths.get(s).toAbsolutePath} is not a directory or it doesn't exist")
  }

  def beAnExistingResource: Matcher[String] = { s: String =>
    (classloader.getResourceAsStream(s) != null, s"resource $s is missing from classpath")
  }

  def classloader = classOf[TestAgentMatchers].getClassLoader
}
