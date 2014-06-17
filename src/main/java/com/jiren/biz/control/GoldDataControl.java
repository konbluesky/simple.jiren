package com.jiren.biz.control;

import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-17.
 */
public class GoldDataControl extends Controller {
    public void index(){
        renderFreeMarker("/WEB-INF/template/page/gloddata.html");
    }
}
