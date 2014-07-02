package com.jiren.module.site.news;

import com.jiren.biz.model.news.NewsType;
import com.jiren.module.site.core.BaseModule;
import com.jiren.module.site.core.ModuleException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by konbluesky on 14-6-23.
 */
public class SiteNewsListLeftModule extends BaseModule{
    public SiteNewsListLeftModule(HttpServletRequest req){
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
