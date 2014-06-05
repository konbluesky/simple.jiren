package com.jiren.module;

import com.jfinal.core.Controller;

/**
 * Created by konbluesky on 14-6-5.
 * 组件工厂
 */
public interface IModuleFactory {
    public void create(Controller c);
}
