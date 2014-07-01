/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.biz.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.log.Logger;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午1:09
 * Project : simple.jiren
 */
@TableBind(tableName="sys_menu")
public class SystemMenu extends BaseModel<SystemMenu> {
    private static Logger log = Logger.getLogger(SystemMenu.class);
    public static SystemMenu dao=new SystemMenu();
}
