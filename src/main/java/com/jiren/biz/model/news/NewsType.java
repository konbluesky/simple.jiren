package com.jiren.biz.model.news;

import com.jfinal.log.Logger;
import com.jiren.biz.model.BaseModel;

import java.util.List;

/**
 * Created by konbluesky on 14-6-23.
 */
public class NewsType extends BaseModel<NewsType> {
    private static Logger log = Logger.getLogger(NewsType.class);
    public final static NewsType dao=new NewsType();

    /**
     * getNTChilds
     * @param nid
     * @return
     */
    public List<NewsType> getParents(String nid){
        List<NewsType> list = null;
        return list;
    }

    /**
     * getNTParents
     * @param nid
     * @return
     */
    public List<NewsType> getChilds(String nid){
        List<NewsType> list = null;
        return list;
    }
}
