package com.github.greengerong;

import com.google.common.base.Function;
import org.apache.commons.io.FileUtils;
import org.apache.maven.plugin.logging.Log;

import java.io.File;
import java.util.List;

import static com.github.greengerong.TemplateService.NEW_LINE;
import static com.google.common.collect.FluentIterable.from;
import static org.apache.commons.lang.StringUtils.join;

public class NgHtml2JsProcessor {
    private final String module;
    private final Log log;
    private final String[] extensions;
    private final TemplateService templateService;

    public NgHtml2JsProcessor(String module, String[] extensions, Log log) {
        this.module = module;
        this.log = log;
        this.extensions = extensions;
        templateService = new TemplateService();
    }

    public void exec(String htmlBaseDir, File output) {
        final FileGroup fileGroup = getFileGroup(htmlBaseDir);
        final String html = join(from(fileGroup.getModules()).transform(getHtml()).toList(), NEW_LINE);
        final String moduleHtml = templateService.getModuleHtml(module, getModules(fileGroup));
        writeToFile(output, html, moduleHtml);
    }

    private List<String> getModules(FileGroup fileGroup) {
        return from(fileGroup.getModules()).transform(new Function<HtmlModule, String>() {
            @Override
            public String apply(HtmlModule input) {
                return input.getModule();
            }
        }).toList();
    }

    private void writeToFile(File output, String html, String moduleHtml) {
        String file = output.getAbsolutePath();
        if (output.isDirectory()) {
            file = new File(output, String.format("%s.html.js", module)).getAbsolutePath();
        }

        try {
            FileUtils.fileWrite(file, String.format("%s%s%s", html, NEW_LINE, moduleHtml));
        } catch (Exception e) {
            final String msg = String.format("Can not write html to file %s", file);
            log.error(msg, e);
            throw new RuntimeException(msg, e);
        }

        log.info(String.format("ng-html success, write to file %s.", file));
    }

    private FileGroup getFileGroup(String htmlBaseDir) {
        final String[] children = FileUtils.getFilesFromExtension(htmlBaseDir, extensions);
        final FileGroup group = new FileGroup(htmlBaseDir, children);
        return templateService.html2Js(group);
    }

    private Function<HtmlModule, String> getHtml() {
        return new Function<HtmlModule, String>() {
            @Override
            public String apply(HtmlModule input) {
                return input.getHtml();
            }
        };
    }

}
