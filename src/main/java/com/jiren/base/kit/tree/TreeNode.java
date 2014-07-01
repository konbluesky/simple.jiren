/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit.tree;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * 树形结构
 * Created by konbluesky
 * Date : 14-7-1 下午4:19
 * Project : simple.jiren
 */
public class TreeNode<T> {
    private T node;
    private TreeNode<T> parent;
    private List<TreeNode<T>> childs = new ArrayList<TreeNode<T>>();
    public TreeNode(T node){
        this.node=node;
    }
    public TreeNode() {
        this(null);
    }
    /**
     * 添加子节点。
     *
     * @param child
     */
    public void addChild(TreeNode<T> child) {
        childs.add(child);
        child.setParent(this);
    }

    /**
     * 删除指定的子节点。
     *
     * @param child 子节点。
     */
    public void removeChild(TreeNode<T> child) {
        removeChildAt(getChildIndex(child));
    }

    /**
     * 删除指定下标处的子节点。
     *
     * @param index 下标。
     */
    public void removeChildAt(int index) {
        TreeNode<T> child = getChildAt(index);
        childs.remove(index);
        child.setParent(null);
    }

    public TreeNode<T> getChildAt(int index) {
        return childs.get(index);
    }

    public int getChildCount() {
        return childs.size();
    }

    public int getChildIndex(TreeNode<T> child) {
        return childs.indexOf(child);
    }

    public List<TreeNode<T>> getChildren() {
        return childs;
    }

    public void setParent(TreeNode<T> parent) {
        this.parent = parent;
    }

    public TreeNode<T> getParent() {
        return parent;
    }

    /**
     * 是否为根节点。
     *
     * @return 是根节点，返回true；否则，返回false。
     */
    public boolean isRoot() {
        return getParent() == null;
    }

    public boolean isLeaf() {
        return getChildCount() == 0;
    }

    /**
     * 判断指定的节点是否为当前节点的子节点。
     *
     * @param node 节点。
     * @return 是当前节点的子节点，返回true；否则，返回false。
     */
    public boolean isChild(TreeNode<T> node) {
        boolean result;
        if (node == null) {
            result = false;
        } else {
            if (getChildCount() == 0) {
                result = false;
            } else {
                result = (node.getParent() == this);
            }
        }
        return result;
    }

    public T getNode() {
        return node;
    }

    public void setNode(T node) {
        this.node = node;
    }

    public String toString(){
        return "aaa";
    }
}
