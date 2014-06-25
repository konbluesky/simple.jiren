package com.jiren.module.meta;

import com.jiren.base.kit.NewsTypeKit;
import com.jiren.biz.model.news.News;
import com.jiren.biz.model.news.NewsType;
import com.jiren.module.core.BaseModule;
import com.jiren.module.core.IModule;
import com.jiren.module.core.ModuleException;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by konbluesky on 14-6-23.
 */
public class MetaModule extends BaseModule{
    private News news;
    private String key;
    private String title;
    private String keywords;
    private String description;

    public MetaModule(HttpServletRequest req){
        super(req);
        title="中国人人投资网(人投网),现货,股票,基金,期货,黄金,白银,在线P2P投资,在线P2P理财";
        keywords="人人投资网,在线办理各类理财产品,黄金,白银,P2P理财,交易所鉴别,法律援助";
        description="一站式金融服务体系,回报投资者,让大家学理财,人人能投资,用互联网的态度来做金融";
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
        this.key=reskey;
    }
    public MetaModule(HttpServletRequest req,String title,String keywords,String description){
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
