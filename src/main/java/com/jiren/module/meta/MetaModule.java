package com.jiren.module.meta;

import com.jfinal.ext.plugin.config.ConfigKit;
import com.jiren.base.kit.NewsTypeKit;
import com.jiren.biz.model.news.News;
import com.jiren.biz.model.news.NewsType;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by konbluesky on 14-6-23.
 */
public class MetaModule extends BaseModule{
    private News news;
    private String title;
    private String keywords;
    private String description;

    public MetaModule(HttpServletRequest req){
        this(req,"site.index.meta");
    }
    public MetaModule(HttpServletRequest req,News news){
        super(req);
        this.news=news;
        if(news!=null){
            String code=news.getStr("ntype");
            this.title=news.get("newtitle")+ NewsTypeKit.getName(code);
            this.keywords=news.get("newtitle");
            this.description=news.get("newtitle");
        }
    }
    public MetaModule(HttpServletRequest req,String reskey){
        super(req);
        if(StringUtils.isEmpty(reskey)){
            throw new IllegalArgumentException("reskey is invalid parameter");
        }
        this.title=ConfigKit.getStr(reskey+".title");
        this.keywords=ConfigKit.getStr(reskey+".keywords");
        this.description=ConfigKit.getStr(reskey+".description");
    }
    public MetaModule(HttpServletRequest req,String reskey,String...params){
        super(req);
        this.title=title;
        this.keywords=keywords;
        this.description=description;
    }

    /**
     * title:人投网 大家学理财 人人能投资
     * @throws ModuleException
     */
    @Override
    public void execute() throws ModuleException {
        MetaResult mr=new MetaResult();
        mr.setTitle(title);
        mr.setKeywords(keywords);
        mr.setDescription(description);
        getRequest().setAttribute("metaView",mr);
    }



}
