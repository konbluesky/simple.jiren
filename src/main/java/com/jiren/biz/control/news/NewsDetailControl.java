package com.jiren.biz.control.news;

import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;
import com.jiren.biz.model.news.News;

/**
 * Created by konbluesky on 14-6-16.
 */
public class NewsDetailControl extends AbstractSiteControl {

    public void index(){
        String ndate=getPara("ndate");
        String nid=getPara("nid");
        renderFreeMarker(PathBizKit.getPagePath()+"/news/detail.ftl");
    }

    public void info(){
        String ndate=getAttr("ndate");
        String nid=getAttr("nid");
        setAttr("nnews", News.dao.findById(nid));
        renderFreeMarker(PathBizKit.getPagePath()+"/news/detail.ftl");
    }

}
