package com.jiren.biz.control.index;

import com.jiren.base.control.AbstractSiteControl;
import com.jiren.module.site.breadcrumb.BreadcrumbModule;
import com.jiren.module.site.meta.MetaModule;
import com.jiren.module.site.news.ColumnTabModule;
import com.jiren.module.site.opera.OperaModule;

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

