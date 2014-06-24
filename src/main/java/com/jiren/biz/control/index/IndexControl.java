package com.jiren.biz.control.index;

import com.jfinal.plugin.activerecord.Page;
import com.jiren.base.control.AbstractSiteControl;
import com.jiren.biz.model.news.News;
import com.jiren.module.breadcrumb.BreadcrumbModule;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;
import com.jiren.module.meta.MetaModule;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by konbluesky on 14-6-5.
 */
public class IndexControl extends AbstractSiteControl {

    public void index(){
        setModule(new MetaModule(this.getRequest()));
        setModule(new IndexModule(this.getRequest()));
        setModule(new BreadcrumbModule(this.getRequest(),null));
        execute();
        renderFreeMarker("/index.html");
    }
    private class IndexModule extends BaseModule {
        public IndexModule(HttpServletRequest req){
            super(req);
        }
        @Override
        public void execute() throws ModuleException {
            Page<News> nlist=News.dao.paginate(1,56,"select * ","from news_normal");
            Map<Integer,List<News>> listgroup=new HashMap<Integer,List<News>>();
            listgroup.put(0,nlist.getList().subList(0,14));
            listgroup.put(1,nlist.getList().subList(14,28));
            listgroup.put(2,nlist.getList().subList(28,42));
            listgroup.put(3,nlist.getList().subList(42,56));
            getRequest().setAttribute("listgroup", listgroup);
        }
    }
}

