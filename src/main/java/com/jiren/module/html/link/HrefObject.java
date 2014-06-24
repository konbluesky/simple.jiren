package com.jiren.module.html.link;

/**
 * Created by konbluesky on 14-6-17.
 */
public class HrefObject {
    public String text;
    public String url;
    public String target;
    public HrefObject(String url,String text){
        this.url=url;
        this.text=text;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }
}
