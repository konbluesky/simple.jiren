package com.jiren.biz.control;


import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;

/**
 * Created by konbluesky on 14-6-17.
 */
public class GoldDataControl extends AbstractSiteControl {
    public void index(){
        renderFreeMarker(PathBizKit.getPagePath()+"/news/gloddata.ftl");
    }
}
