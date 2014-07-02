/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.module.manager;

import com.jiren.base.kit.tree.ITreeBuilder;
import com.jiren.base.kit.tree.SystemMenuTreeBuilder;
import com.jiren.base.kit.tree.TreeNode;
import com.jiren.biz.model.system.SystemMenu;
import com.jiren.module.site.core.BaseModule;
import com.jiren.module.site.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午4:12
 * Project : simple.jiren
 */
public class SystemMenuModule extends BaseModule {

    //    根节点
    private final String ROOT = "1";
    private String nid;
    private ITreeBuilder<SystemMenu> builder;

    public SystemMenuModule(HttpServletRequest req) {
        super(req);
        this.nid = ROOT;
    }

    /**
     * @param req
     * @param nodeid 根节点 初始为 1
     */
    public SystemMenuModule(HttpServletRequest req, String nodeid) {
        super(req);
        this.nid = nodeid;
    }

    @Override
    public void execute() throws ModuleException {
        builder = new SystemMenuTreeBuilder();
        List<TreeNode<SystemMenu>> list = builder.builderTree(SystemMenu.dao.getChilds(nid));
        getRequest().setAttribute("leftMenuView", list);
    }

}
