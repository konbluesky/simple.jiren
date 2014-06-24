package com.jiren.module.news;

import com.jiren.biz.model.news.NewsType;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by konbluesky on 14-6-23.
 */
public class ListLeftModule extends BaseModule{
    public ListLeftModule(HttpServletRequest req){
        super(req);
    }
    @Override
    public void execute() throws ModuleException {
        List<NewsType> list=NewsType.dao.find("select * from news_type");
        if(list!=null && !list.isEmpty()){
            getRequest().setAttribute("typesView", list);
        }
    }
}
