package com.jiren.biz.control.news;

import com.jfinal.plugin.activerecord.Page;
import com.jiren.base.config.Constant;
import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;
import com.jiren.base.kit.UrlKit;
import com.jiren.biz.model.news.News;
import com.jiren.module.breadcrumb.BreadcrumbModule;
import com.jiren.module.news.ListLeftModule;

import java.util.List;

/**
 * Created by konbluesky on 14-6-16.
 */
public class NewsControl extends AbstractSiteControl {

    public void index(){
        int pagenum=getParaToInt(1,1);
//        面包屑
        setModule(new BreadcrumbModule(this.getRequest(),"首页","财经资讯"));
        setModule(new ListLeftModule((this.getRequest())));
        Page<News> lists = News.dao.paginate(pagenum, Constant.PAGE_SIZE_NEWS,"select * "," from news_normal");
        setAttr("newslist", lists);
        execute();
        renderFreeMarker(PathBizKit.getPagePath()+"/news/newslist.ftl");
    }

    public void info(){
        String ndate=getAttr("ndate");
        String nid=getAttr("nid");
        News news=News.dao.findById(nid);
        setModule(new BreadcrumbModule(this.getRequest(),news));
        setAttr("nnews", news);
        execute();
        renderFreeMarker(PathBizKit.getPagePath()+"/news/detail.ftl");
    }

    public void listbytype(){
        String type=getPara(1);//type
        int pnum=getParaToInt(2,1);//pagenum from news_normal where 1=1
        String consql=" from news_normal where 1=1 ";
        if(type!=null && type.length()>0){
            consql+=" and ntype=?";
        }
        Page<News> lists = News.dao.paginate(pnum, Constant.PAGE_SIZE_NEWS,
                            "select * ",consql,type);
        setModule(new BreadcrumbModule(this.getRequest(), "首页",type));
        setModule(new ListLeftModule((this.getRequest())));

        setAttr("newslist", lists);
        setAttr("ntype",type);
        setAttr("pageNum",pnum);
        setAttr("urlparams", UrlKit.makeNormalParam(new String[]{"ntype","pageNum"},new String[]{type,String.valueOf(pnum)}));
        execute();
        renderFreeMarker(PathBizKit.getPagePath()+"/news/newslist.ftl");
    }

}
