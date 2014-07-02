package com.jiren.module.site.core;

import com.jfinal.core.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by konbluesky on 14-6-16.
 */
public class ModuleParam {
    public Controller controller;
    public HttpServletRequest request;
    public HttpServletResponse response;

    public ModuleParam(){

    }
    public ModuleParam(Controller c){
        this.controller=c;
        request=controller.getRequest();
    }

    public void setAttr(String name,Object obj){
        request.setAttribute(name,obj);
    }

}
