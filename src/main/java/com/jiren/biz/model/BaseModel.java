/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.biz.model;

import com.jfinal.log.Logger;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Table;
import com.jfinal.plugin.activerecord.TableMapping;

/**
 * Created by konbluesky
 * Date : 14-7-1 下午1:53
 * Project : simple.jiren
 */
public  abstract class BaseModel<M extends Model<M>> extends Model<M> {
    private static Logger log = Logger.getLogger(BaseModel.class);

    /**
     * 获取表映射对象
     *
     * @return
     */
    public Table getTable() {
        return TableMapping.me().getTable(getClass());
    }
    /**
     * 获取主键值
     * @return
     */
    public String getPrimaryKeyValue(){
        return this.getStr(getTable().getPrimaryKey());
    }
}
