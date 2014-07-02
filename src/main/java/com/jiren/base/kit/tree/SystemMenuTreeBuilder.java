/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit.tree;

import com.jiren.biz.model.system.SystemMenu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-2 下午2:11
 * Project : simple.jiren
 */
public class SystemMenuTreeBuilder implements ITreeBuilder<SystemMenu> {
    @Override
    public List<TreeNode<SystemMenu>> builderTree(List<SystemMenu> resources) {
        List<TreeNode<SystemMenu>> roots = new ArrayList<TreeNode<SystemMenu>>();
        TreeNode<SystemMenu> root = new TreeNode<SystemMenu>();
        for (SystemMenu resource:resources) {
            if (resource.getParentCode() == 0) {
                root = new TreeNode<SystemMenu>();
                root.setNode(new SystemMenu(resource));
                buildTree(root, resources);
                roots.add(root);
            }
        }
        return roots;
    }

    private void buildTree(TreeNode<SystemMenu> root, List<SystemMenu> resources) {
        TreeNode<SystemMenu> node;
        for (Iterator<SystemMenu> iterator = resources.iterator(); iterator.hasNext();) {
            SystemMenu resource = iterator.next();
            if (root.getNode().getCode()==resource.getParentCode()) {
                node = new TreeNode<SystemMenu>();
                node.setNode(new SystemMenu(resource));
                root.addChild(node);
            }
        }
        if (root.getChildCount()>0) {
            for (TreeNode<SystemMenu> branch : root.getChildren()) {
                if (branch.getNode().getParentCode()==root.getNode().getCode()) {
                    buildTree(branch, resources);
                }
            }
        }
    }

}
