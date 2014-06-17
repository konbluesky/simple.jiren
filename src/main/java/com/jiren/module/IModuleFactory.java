package com.jiren.module;

import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-5.
 */
public interface IModuleFactory<P extends ModuleParam,T extends ModuleResult>{
    public T create(P params);
}
