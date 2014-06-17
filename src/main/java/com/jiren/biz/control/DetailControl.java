package com.jiren.biz.control;

import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-16.
 */
public class DetailControl extends Controller{
    public void index(){
        renderFreeMarker("/WEB-INF/template/page/detail.html");
    }

}
