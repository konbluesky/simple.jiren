package com.jiren.biz.model.news;

import com.jfinal.log.Logger;
import com.jiren.biz.model.BaseModel;

import java.util.List;
import java.util.Map;

/**
 * Created by konbluesky on 14-6-23.
 */
public class NewsType extends BaseModel<NewsType> {
    private static Logger log = Logger.getLogger(NewsType.class);
    public final static NewsType dao=new NewsType();
    public NewsType(){};
    public NewsType(NewsType a){
        this.setAttrs(a);
    }

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
    public List<NewsType> getParents(String nodeid){
        String sql="select * from news_type where FIND_IN_SET(code,getNTParents('0',?));";
        List<NewsType> list = NewsType.dao.find(sql,nodeid);
        return list;
    }

    /**
     * getNTParents
     * @param nodeid
     * @return
     */
    public List<NewsType> getChilds(String nodeid){
        String sql="select * from news_type where FIND_IN_SET(code,getNTChilds(?));";
        List<NewsType> list = NewsType.dao.find(sql,nodeid);
        return list;
    }
}
