package com.jiren.module.breadcrumb;

import com.jiren.module.core.IModuleFactory;

/**
 * Created by konbluesky on 14-6-23.
 */
public class BreadcrumbFactory implements IModuleFactory<BreadcrumbParam,BreadcrumbModule> {

    @Override
    public BreadcrumbModule create(BreadcrumbParam param) {
        BreadcrumbModule bm=new BreadcrumbModule(param.request,param.getNews());
        return bm;
    }
}
