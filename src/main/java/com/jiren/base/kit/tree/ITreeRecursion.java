/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit.tree;

/**
 * 构建树时用的递归接口
 * Created by konbluesky
 * Date : 14-7-2 下午2:15
 * Project : simple.jiren
 */
public interface ITreeRecursion {
    /**
     * 获得父节点编码
     * @return
     */
    public int getParentCode();
    /**
     * 获得当前节点编码
     * @return
     */
    public int getCode();

    /**
     * 获取当前实例(需要重新new)
     * @return
     */
    public ITreeRecursion getNewThis();
}
