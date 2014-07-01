package com.jiren.biz.model.news;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.log.Logger;
import com.jiren.biz.model.BaseModel;

/**
 * Created by konbluesky on 14-6-20.
 */
@TableBind(tableName="news_normal")
public class News extends BaseModel<News> {
    private static Logger log = Logger.getLogger(News.class);
    public final static News dao=new News();

}
