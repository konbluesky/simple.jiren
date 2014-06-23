package com.jiren.module.breadcrumb;

import com.jiren.biz.model.news.News;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;
import com.jiren.module.html.link.HrefObject;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by konbluesky on 14-6-23.
 */
public class BreadcrumbModule implements IModule{
    public List<HrefObject> links;
    public HttpServletRequest request;
    public News news;
    public BreadcrumbModule(HttpServletRequest req,News news){
        this.request=req;
        this.news=news;
    }
    @Override
    public void execute() throws ModuleException {
        links=new ArrayList<HrefObject>();
        links.add(new HrefObject("","首页"));
        String newstype=news.get("newstype");
        links.add(new HrefObject("",newstype));
        links.add(new HrefObject("",newstype));
        request.setAttribute("breadcrumbView", links);
    }
}
