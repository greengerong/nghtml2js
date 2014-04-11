package com.github.greengerong;

import com.google.common.base.Function;
import com.google.common.collect.Maps;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.commons.io.FileUtils;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static com.google.common.collect.FluentIterable.from;

public class TemplateService {

    public static final String SINGLE_TEMPLATE_TPL = "single_template.tpl";
    public static final String NEW_LINE = System.getProperty("line.separator");
    public static final String MODULE_TPL = "module.tpl";
    private final Configuration templateConfig;
    private String urlPrefixed;

    public TemplateService(String urlPrefixed) {
        this.urlPrefixed = urlPrefixed;
        templateConfig = new Configuration();
        templateConfig.setClassForTemplateLoading(this.getClass(), "/");
    }

    public FileGroup html2Js(final FileGroup group) {

        final List<HtmlModule> modules = from(Arrays.asList(group.getChildren()))
                .transform(new Function<String, HtmlModule>() {
                    @Override
                    public HtmlModule apply(String file) {
                        String url = file.replace(group.getBaseName(), "").replaceAll("//", "/").replaceAll("\\\\", "/");
                        if (url.startsWith("/") || url.startsWith("\\")) {
                            url = url.substring(1);
                        }
                        final String moduleName = (urlPrefixed == null ? "" : urlPrefixed) + url;
                        return new HtmlModule(moduleName, html2Js(file, moduleName.trim()));
                    }
                }).toList();

        group.setModules(modules);
        return group;
    }

    private String html2Js(String file, String moduleName) {
        try {
            Template template = templateConfig.getTemplate(SINGLE_TEMPLATE_TPL);
            final StringWriter sb = new StringWriter();
            template.process(getHtml2JsDataModel(file, moduleName), sb);
            return sb.toString();

        } catch (Exception e) {
            throw new RuntimeException(String.format("Con not process file %s.", file), e);
        }
    }

    private Map<String, Object> getHtml2JsDataModel(String file, String moduleName) throws IOException {
        final Map<String, Object> model = Maps.newHashMap();
        model.put("module", moduleName);
        String html = FileUtils.fileRead(file)
                .replaceAll("\\\\", "\\\\\\\\")
                .replaceAll("\"", "\\\\\"")
                .replaceAll("\r?\n", "\\\\n\" +\n    \"");

        model.put("html", html);
        return model;
    }

    public String getModuleHtml(String module, List<String> modules) {
        try {
            Template template = templateConfig.getTemplate(MODULE_TPL);
            final StringWriter sb = new StringWriter();
            final Map<String, Object> dataModel = Maps.newHashMap();
            dataModel.put("module", module);
            dataModel.put("dependencies", modules);
            template.process(dataModel, sb);
            return sb.toString();
        } catch (Exception e) {
            throw new RuntimeException(String.format("Con not process module %s.", module), e);
        }
    }
}
