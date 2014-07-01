/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.biz.model.system;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.log.Logger;
import com.jiren.biz.model.BaseModel;

import java.util.List;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午1:09
 * Project : simple.jiren
 */
@TableBind(tableName="sys_menu")
public class SystemMenu extends BaseModel<SystemMenu> {
    private static Logger log = Logger.getLogger(SystemMenu.class);
    public static SystemMenu dao=new SystemMenu();

    public int getParentCode(){
        return this.getInt("parentcode");
    }
    public int getCode(){
        return this.getInt("code");
    }

    /**
     * getNTChilds
     * @param nodeid
     * @return
     */
    public List<SystemMenu> getParents(String nodeid){
        String sql="select * from sys_menu where FIND_IN_SET(code,getMenuParents('0',?));";
        List<SystemMenu> list = SystemMenu.dao.find(sql,nodeid);
        return list;
    }

    /**
     * getNTParents
     * @param nodeid
     * @return
     */
    public List<SystemMenu> getChilds(String nodeid){
        String sql="select * from sys_menu where FIND_IN_SET(code,getMenuChilds(?));";
        List<SystemMenu> list = SystemMenu.dao.find(sql,nodeid);
        return list;
    }

}
