package com.github.greengerong;

/*
 * Copyright 2001-2005 The Apache Software Foundation.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import org.apache.commons.io.FileUtils;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugins.annotations.LifecyclePhase;
import org.apache.maven.plugins.annotations.Mojo;
import org.apache.maven.plugins.annotations.Parameter;

import java.io.File;

import static com.google.common.base.Preconditions.checkNotNull;


@Mojo(name = "run", defaultPhase = LifecyclePhase.GENERATE_SOURCES)
public class NgHtml2JsMojo extends AbstractMojo {

    @Parameter(required = true)
    private String module;

    @Parameter(required = true)
    private String html;

    @Parameter(required = false)
    private File output;

    @Parameter(required = false)
    private String[] extensions;


    public void execute() throws MojoExecutionException {
        checkNotNull(html, "Html dir should be not empty");
        checkNotNull(module, "Module name should be not empty");
        if (!FileUtils.fileExists(html)) {
            getLog().warn("Html file is not exists.");
            return;
        }

        if (output == null || !output.exists()) {
            output = new File(html);
        }

        if (extensions == null || extensions.length == 0) {
            extensions = new String[]{"html"};
        }

        new NgHtml2JsProcessor(module, extensions, getLog()).exec(html, output);
    }

}

