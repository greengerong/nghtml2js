package com.github.greengerong;


public class HtmlModule {
    private String module;
    private String html;

    public HtmlModule(String module, String html) {
        this.module = module;
        this.html = html;
    }

    public String getModule() {
        return module;
    }

    public String getHtml() {
        return html;
    }
}
