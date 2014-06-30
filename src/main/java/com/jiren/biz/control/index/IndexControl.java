package com.jiren.biz.control.index;

import com.jfinal.plugin.activerecord.Page;
import com.jiren.base.control.AbstractSiteControl;
import com.jiren.biz.model.news.News;
import com.jiren.module.breadcrumb.BreadcrumbModule;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;
import com.jiren.module.meta.MetaModule;
import com.jiren.module.news.ColumnTabModule;
import com.jiren.module.opera.OperaModule;

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
        setModule(new ColumnTabModule(this.getRequest(),"columntb1","lcgs","hj","yh","wh"));
        setModule(new ColumnTabModule(this.getRequest(),"columntb2","qh","jj","zj","gp"));
        setModule(new ColumnTabModule(this.getRequest(),"columntb3","qz"));
        setModule(new BreadcrumbModule(this.getRequest(),null));
        setModule(new OperaModule(this.getRequest()));
        execute();
        renderFreeMarker("/index.html");
    }

    /**
     * 今日要闻
     */
    private void todayNews(){
        String sql="";
        sql+="";
    }
}

