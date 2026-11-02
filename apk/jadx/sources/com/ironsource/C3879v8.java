package com.ironsource;

import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.v8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3879v8 {
    private HashMap<String, Object> a = new HashMap<>();

    public C3879v8 a(String str, Object obj) {
        if (obj != null) {
            this.a.put(str, SDKUtils.encodeString(obj.toString()));
        }
        return this;
    }

    public HashMap<String, Object> a() {
        return this.a;
    }
}
