package com.jiren.biz.model.news;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by konbluesky on 14-6-20.
 */
@TableBind(tableName="news_normal")
public class News extends Model<News>{
    public final static News dao=new News();

}
