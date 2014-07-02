package com.jiren.module.site.core;

/**
 * Created by konbluesky on 14-6-5.
 */
public interface IModuleFactory<P extends ModuleParam,T extends IModule>{
    public T create(P param);
}
