/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit.tree;

import com.jiren.biz.model.news.NewsType;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午4:20
 * Project : simple.jiren
 */
public class TreeNodeBuilder {
    /**
     * 根据该用户可访问的资源生成树
     * @param resources 资源列表(原始数据)
     * @return
     */
    public List<TreeNode<NewsType>> buildTree(List<NewsType> resources) {
        List<TreeNode<NewsType>> roots = new ArrayList<TreeNode<NewsType>>();
        TreeNode<NewsType> root = new TreeNode<NewsType>();
        for (NewsType resource:resources) {
            if (resource.getParentCode() == 0) {
                root = new TreeNode<NewsType>();
                root.setNode(new NewsType(resource));
                buildTree(root, resources);
                roots.add(root);
            }
        }
        return roots;
    }

    private void buildTree(TreeNode<NewsType> root, List<NewsType> resources) {
        TreeNode<NewsType> node;
        for (Iterator<NewsType> iterator = resources.iterator(); iterator.hasNext();) {
            NewsType resource = iterator.next();
            if (root.getNode().getCode()==resource.getParentCode()) {
                node = new TreeNode<NewsType>();
                node.setNode(new NewsType(resource));
                root.addChild(node);
            }
        }
        if (root.getChildCount()>0) {
            for (TreeNode<NewsType> branch : root.getChildren()) {
                if (branch.getParent().equals(root)) {
                    buildTree(branch, resources);
                }
            }
        }
    }
}
