/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.module.admin;

import com.jiren.base.kit.tree.TreeNode;
import com.jiren.base.kit.tree.TreeNodeBuilder;
import com.jiren.biz.model.news.NewsType;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午4:12
 * Project : simple.jiren
 */
public class LeftMenuModule extends BaseModule {

    private String nid;
    private final String ROOT="1";
    public LeftMenuModule(HttpServletRequest req){
        super(req);
        this.nid=ROOT;
    }
    /**
     *
     * @param req
     * @param nodeid 根节点 初始为 1
     */
    public LeftMenuModule(HttpServletRequest req,String nodeid) {
        super(req);
        this.nid=nodeid;
    }
    @Override
    public void execute() throws ModuleException {
        List<TreeNode<NewsType>> list = new TreeNodeBuilder().buildTree(NewsType.dao.getChilds(nid));
        getRequest().setAttribute("leftMenuView",list);
    }

}
