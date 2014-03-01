package com.github.greengerong;

import java.util.List;

public class FileGroup {
    private String baseName;
    private String[] children;
    private List<HtmlModule> modules;

    public FileGroup(String baseName, String[] children) {

        this.baseName = baseName;
        this.children = children;

    }

    public String getBaseName() {
        return baseName;
    }

    public String[] getChildren() {
        return children;
    }

    public void setModules(List<HtmlModule> modules) {
        this.modules = modules;
    }

    public List<HtmlModule> getModules() {
        return modules;
    }

}
