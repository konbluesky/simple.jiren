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
import java.util.List;

/**
 * 树形结构
 * Created by konbluesky
 * Date : 14-7-1 下午4:19
 * Project : simple.jiren
 */
public class TreeNode<T> {
    private T node;
    private List<TreeNode<T>> childs = new ArrayList<TreeNode<T>>();
    public TreeNode(T node){
        this.node=node;
    }
    public TreeNode() {
        this(null);
    }
    public boolean hasChild(){
        return childs!=null && childs.size()>0;
    }
    /**
     * 添加子节点。
     *
     * @param child
     */
    public void addChild(TreeNode<T> child) {
        childs.add(child);
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

    public boolean isLeaf() {
        return getChildCount() == 0;
    }

    public T getNode() {
        return node;
    }

    public void setNode(T node) {
        this.node = node;
    }

    public List<TreeNode<T>> getChilds() {
        return childs;
    }

    public void setChilds(List<TreeNode<T>> childs) {
        this.childs = childs;
    }
}
