package com.jiren.module.breadcrumb;

import com.jiren.biz.model.news.News;
import com.jiren.module.core.ModuleParam;

/**
 * Created by konbluesky on 14-6-23.
 */
public class BreadcrumbParam extends ModuleParam{
    public News news;
    public BreadcrumbParam(News news){
        this.news=news;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
