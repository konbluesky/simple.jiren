package com.jiren.biz.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by konbluesky on 14-6-25.
 */
@TableBind(tableName="user_intention")
public class UserIntention extends Model<UserIntention> {
    public static UserIntention dao=new UserIntention();
}
