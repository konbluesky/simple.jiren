package com.jiren.module.core;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by konbluesky on 14-6-23.
 */
public abstract class BaseModule implements IModule {
    private HttpServletRequest request;
    public BaseModule(HttpServletRequest req){
        this.request=req;
    }

    public HttpServletRequest getRequest() {
        return request;
    }
}
