/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit.tree;

import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-2 下午2:05
 * Project : simple.jiren
 */
public interface ITreeBuilder<T>{
    /**
     * 根据该用户可访问的资源生成树
     * @param resources 资源列表(原始数据)
     * @return
     */
    public List<TreeNode<T>> builderTree(List<T> resources);
}
