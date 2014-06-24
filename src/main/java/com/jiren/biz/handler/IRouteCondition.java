package com.jiren.biz.handler;

import java.util.Map;

/**
 * Created by konbluesky on 14-6-24.
 */
public interface IRouteCondition {
    /**
     * 是否匹配
     * @return
     */
    boolean isMatch(String srcString);

    /**
     * 返回参数
     * @return
     */
    Map<String,String> getParams(String srcString);

    /**
     * 获取路由url
     * @return
     */
    String getRouteUrl(String srcString);

}