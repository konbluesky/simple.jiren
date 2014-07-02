/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.module.manager;

import com.jiren.module.site.core.BaseModule;
import com.jiren.module.site.core.ModuleException;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by konbluesky
 * Date : 14-7-2 下午3:22
 * Project : simple.jiren
 */
public class NewsTypeMenuModule extends BaseModule {

    public NewsTypeMenuModule(HttpServletRequest req) {
        super(req);
    }

    @Override
    public void execute() throws ModuleException {

    }
}
