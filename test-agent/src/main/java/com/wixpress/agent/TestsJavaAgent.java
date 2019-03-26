package com.wixpress.agent;

import java.io.File;
import java.io.IOException;
import java.lang.instrument.Instrumentation;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

public class TestsJavaAgent {
    private static final String EXTRA_DIRS = "extra.dirs";

    private static void createRequestedDirs() {
        getPathPropertyAsList(EXTRA_DIRS).stream()
                .map(Paths::get)
                .forEach(dir -> {
                    try {
                        Files.createDirectories(dir);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                });
    }

    private static List<String> getPathPropertyAsList(String prop) {
        String[] values = getSystemProperty(prop).split(File.pathSeparator);
        return Arrays.asList(values);
    }

    private static String getSystemProperty(String prop) {
        return System.getProperty(prop, "");
    }

    public static void premain(String args, Instrumentation instrumentation) {
        createRequestedDirs();
    }
}