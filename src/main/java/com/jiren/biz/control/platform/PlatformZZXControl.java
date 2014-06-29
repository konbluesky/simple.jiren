/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.biz.control.platform;

import com.jiren.base.control.AbstractSiteControl;
import com.jiren.base.kit.PathBizKit;

/**
 * Created by konbluesky
 * Date : 14-6-29 下午2:21
 * Project : simple.jiren
 */
public class PlatformZZXControl extends AbstractSiteControl {
    public void index(){
        renderFreeMarker(PathBizKit.getPagePath()+"/platform/l_platform.ftl");
    }
}
