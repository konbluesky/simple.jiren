/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.base.kit;

import com.jfinal.plugin.activerecord.Page;

import java.io.Serializable;
import java.util.Map;

/**
 * Created by konbluesky
 * Date : 14-7-1 上午11:46
 * Project : simple.jiren
 */
public class SplitPage implements Serializable {
    private static final long serialVersionUID = -7914983945613661637L;

    public static final int default_pageNumber = 1;// 第几页

    public static final int default_pageSize = 20;// 每页显示几多


    // 分页相关

    protected Page<?> page;
    protected Map<String, String> queryParam;// 查询条件

    protected String orderColunm;// 排序条件

    protected String orderMode;// 排序方式

    protected int pageNumber = default_pageNumber;// 第几页

    protected int pageSize = default_pageSize;// 每页显示几多


    public Page<?> getPage() {
        return page;
    }
    public void setPage(Page<?> page) {
        this.page = page;
    }
    public Map<String, String> getQueryParam() {
        return queryParam;
    }
    public void setQueryParam(Map<String, String> queryParam) {
        this.queryParam = queryParam;
    }
    public String getOrderColunm() {
        return orderColunm;
    }
    public void setOrderColunm(String orderColunm) {
        this.orderColunm = orderColunm;
    }
    public String getOrderMode() {
        return orderMode;
    }
    public void setOrderMode(String orderMode) {
        this.orderMode = orderMode;
    }
    public int getPageNumber() {
        if(pageNumber <= 0){
            pageNumber = default_pageNumber;
        }
        return pageNumber;
    }
    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }
    public int getPageSize() {
        if(pageSize <= 0){
            pageSize = default_pageSize;
        }
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
