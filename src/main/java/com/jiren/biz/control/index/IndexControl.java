package com.jiren.biz.control.index;

import com.jfinal.plugin.activerecord.Page;
import com.jiren.base.control.AbstractSiteControl;
import com.jiren.biz.model.news.News;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by konbluesky on 14-6-5.
 */
public class IndexControl extends AbstractSiteControl {
    public void index(){
        Page<News> nlist=News.dao.paginate(1,56,"select * ","from news_normal");
        Map<Integer,List<News>> listgroup=new HashMap<Integer,List<News>>();
        listgroup.put(0,nlist.getList().subList(0,14));
        listgroup.put(1,nlist.getList().subList(14,28));
        listgroup.put(2,nlist.getList().subList(28,42));
        listgroup.put(3,nlist.getList().subList(42,56));
        setAttr("listgroup",listgroup);
        renderFreeMarker("/index.html");
    }
}

