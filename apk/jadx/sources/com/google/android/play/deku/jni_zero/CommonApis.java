package com.google.android.play.deku.jni_zero;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CommonApis {
    private static Map arrayToMap(Object[] objArr) {
        int length = objArr.length;
        HashMap map = new HashMap(length >> 1);
        for (int i = 0; i < length; i += 2) {
            map.put(objArr[i], objArr[i + 1]);
        }
        return map;
    }

    private static Object[] mapToArray(Map map) {
        int size = map.size();
        Object[] objArr = new Object[size + size];
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            objArr[i] = entry.getKey();
            objArr[i + 1] = entry.getValue();
            i += 2;
        }
        return objArr;
    }
}
