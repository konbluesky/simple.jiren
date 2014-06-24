package com.jiren.module.meta;

/**
 * Created by konbluesky on 14-6-24.
 */
public class MetaResult {
    private String title;
    private String keywords;
    private String description;
    public MetaResult(){}
    public MetaResult(String title) {
        this.title = title;
    }

    public MetaResult(String title, String keywords) {
        this.title = title;
        this.keywords = keywords;
    }

    public MetaResult(String title, String keywords, String description) {
        this.title = title;
        this.keywords = keywords;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
