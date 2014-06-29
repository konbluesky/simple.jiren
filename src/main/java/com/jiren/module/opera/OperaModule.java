/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.module.opera;

import com.jiren.biz.model.OperaAdvise;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-6-29 下午12:45
 * Project : simple.jiren
 */
public class OperaModule extends BaseModule {
    public OperaModule(HttpServletRequest req){
        super(req);
    }

    @Override
    public void execute() throws ModuleException {
        List<OperaAdvise> list=OperaAdvise.dao.find("select * from opera_advise order by createdate limit 0,3");
        getRequest().setAttribute("operaView",list);
    }
}
