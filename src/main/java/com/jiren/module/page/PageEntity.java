package com.jiren.module.page;

/**
 * Created by konbluesky on 14-6-16.
 *
 * <meta name="description" content="${page.description}">
 * <meta name="keywords" content="${page.keywords}">
 * <meta name="author" content="${page.author}">
 *
 */
public class PageEntity {
    public String title;
    public String keywords;
    public String author;
    public String description;
    public String pageindex;


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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
