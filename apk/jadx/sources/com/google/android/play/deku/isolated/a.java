package com.google.android.play.deku.isolated;

import dalvik.system.PathClassLoader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public final class a extends PathClassLoader {
    @Override // java.lang.ClassLoader
    public final URL getResource(String str) {
        URL urlFindResource = findResource(str);
        ClassLoader parent = getParent();
        return (urlFindResource != null || parent == null) ? urlFindResource : parent.getResource(str);
    }

    @Override // java.lang.ClassLoader
    public final Enumeration getResources(String str) {
        Enumeration enumerationFindResources = findResources(str);
        ClassLoader parent = getParent();
        Enumeration<URL> resources = parent != null ? parent.getResources(str) : Collections.emptyEnumeration();
        ArrayList arrayList = new ArrayList();
        while (enumerationFindResources.hasMoreElements()) {
            arrayList.add((URL) enumerationFindResources.nextElement());
        }
        while (resources.hasMoreElements()) {
            arrayList.add(resources.nextElement());
        }
        return Collections.enumeration(arrayList);
    }

    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z) {
        if (str.startsWith("java.") || str.startsWith("android.")) {
            return super.loadClass(str, z);
        }
        Class clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        try {
            Class clsFindClass = findClass(str);
            if (!z) {
                return clsFindClass;
            }
            try {
                resolveClass(clsFindClass);
                return clsFindClass;
            } catch (ClassNotFoundException unused) {
                z = true;
                return super.loadClass(str, z);
            }
        } catch (ClassNotFoundException unused2) {
        }
    }
}
