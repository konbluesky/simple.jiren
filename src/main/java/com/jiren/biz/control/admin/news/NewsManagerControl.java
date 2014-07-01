/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.biz.control.admin.news;

import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;
import com.jiren.base.kit.tree.TreeNode;
import com.jiren.base.kit.tree.TreeNodeBuilder;
import com.jiren.biz.model.news.NewsType;
import com.jiren.biz.model.system.SystemMenu;
import com.jiren.module.admin.LeftMenuModule;

import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-1 上午10:25
 * Project : simple.jiren
 */
public class NewsManagerControl extends AbstractSiteControl {
    public void index(){
//        System.out.println(NewsType.dao.getChilds("2"));
//        System.out.println(SystemMenu.dao.getChilds("2"));
        setModule(new LeftMenuModule(this.getRequest()));
        execute();
        renderFreeMarker(PathBizKit.getPageAdminPath() + "/index.ftl");
    }
    public void tree(){
        setModule(new LeftMenuModule(this.getRequest()));
        execute();
        renderJson();
    }

}
