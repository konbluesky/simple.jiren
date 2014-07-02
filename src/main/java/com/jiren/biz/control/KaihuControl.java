package com.jiren.biz.control;

import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;
import com.jiren.biz.model.UserIntention;

/**
 * Created by konbluesky on 14-6-24.
 */
public class KaihuControl extends AbstractSiteControl {

       public void index(){
           renderFreeMarker(PathBizKit.getPagePath()+"/kaihu_01.ftl");
       }

       public void add(){
           UserIntention ui=getModel(UserIntention.class,"ui");
           ui.save();
           redirect("/kaihu");
       }
}
