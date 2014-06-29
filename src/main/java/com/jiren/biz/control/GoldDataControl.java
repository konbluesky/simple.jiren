package com.jiren.biz.control;


import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;
import com.jiren.module.breadcrumb.BreadcrumbModule;
import com.jiren.module.opera.OperaModule;

/**
 * Created by konbluesky on 14-6-17.
 */
public class GoldDataControl extends AbstractSiteControl {
    public void index(){
        setModule(new BreadcrumbModule(getRequest(),"首页","24小时快讯"));
        setModule(new OperaModule(this.getRequest()));
        execute();
        renderFreeMarker(PathBizKit.getPagePath()+"/news/gloddata.ftl");
    }
}
