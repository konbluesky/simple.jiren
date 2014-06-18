package com.jiren.biz.control;

import com.jiren.base.control.AbstractSiteControl;

/**
 * Created by konbluesky on 14-6-5.
 */
public class IndexControl extends AbstractSiteControl {
    public void index(){
        renderFreeMarker("index.html");
    }
}
