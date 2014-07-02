package com.jiren.module.site.breadcrumb;

import com.jiren.biz.model.news.News;
import com.jiren.module.site.core.BaseModule;
import com.jiren.module.site.core.ModuleException;
import com.jiren.module.site.link.HrefObject;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * site页的面包屑
 * Created by konbluesky on 14-6-23.
 */
public class BreadcrumbModule extends BaseModule{
    public List<HrefObject> links=new ArrayList<HrefObject>();
    public News news;
    public String[] paths;
    public BreadcrumbModule(HttpServletRequest req,News news){
        super(req);
        this.news=news;
    }
    public BreadcrumbModule(HttpServletRequest req,String... strs){
        super(req);
        this.paths=strs;
    }
    @Override
    public void execute() throws ModuleException {
        if(news==null){
            if(paths==null || paths.length==0){
                return ;
            }
            for(String str:paths){
                links.add(new HrefObject("",str));
            }
        }else{
            links.add(new HrefObject("", "首页"));
    //        String newstype=news.get("newstype");
            links.add(new HrefObject("","财经新闻"));
            links.add(new HrefObject("","正文"));
        }


        getRequest().setAttribute("breadcrumbView", links);
    }
}
