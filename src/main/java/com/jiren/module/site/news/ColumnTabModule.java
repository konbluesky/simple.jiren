/*******************************************************************************
 * Copyright (c) 2014. konbluesky  (blackjackhoho@gmail.com)
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 ******************************************************************************/

package com.jiren.module.site.news;

import com.jfinal.plugin.activerecord.Page;
import com.jiren.biz.model.news.News;
import com.jiren.module.site.core.BaseModule;
import com.jiren.module.site.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by konbluesky
 * Date : 14-6-27 上午10:11
 * Project : simple.jiren
 */
public class ColumnTabModule extends BaseModule {
    public String viewName;
    public String[] types;
    public IColumnTabListAdapter listadapter;

    public ColumnTabModule(HttpServletRequest req,String viewname,String...types){
        super(req);
        this.viewName=viewname;
        this.types=types;
        this.listadapter=new DefaultColumnTabListAdapter();
    }

    public ColumnTabModule(HttpServletRequest req,String viewname,String[] types,IColumnTabListAdapter ita){
        super(req);
        this.viewName=viewname;
        this.types=types;
        this.listadapter=ita;
    }

    @Override
    public void execute() throws ModuleException {
        Map<Integer,List<News>> listgroup = listadapter.getListGroup(types);
        getRequest().setAttribute(viewName, listgroup);
    }

    /**
     * 列表适配器
     */
    public interface IColumnTabListAdapter{
        Map<Integer,List<News>> getListGroup(String...types);
    }

    private class DefaultColumnTabListAdapter implements IColumnTabListAdapter{

        @Override
        public Map<Integer, List<News>> getListGroup(String... types) {
            Page<News> nlist=null;
            Map<Integer,List<News>> listgroup=new HashMap<Integer,List<News>>();
            if(types!=null && types.length>0){
                int i=0;
                for(String s:types){
                    String condition=" where ntype='"+s+"' order by pdate desc";
                    nlist=News.dao.paginate(1,14,"select * ","from news_normal"+condition);
                    listgroup.put(i,nlist.getList());
                    i++;
                }
            }
            return listgroup;
        }
    }
}
