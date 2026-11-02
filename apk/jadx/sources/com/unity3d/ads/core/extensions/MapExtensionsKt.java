package com.unity3d.ads.core.extensions;

import java.util.Iterator;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;

/* JADX INFO: compiled from: MapExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, d2 = {"sizeInKb", "", "", "", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MapExtensionsKt {
    public static final int sizeInKb(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Iterator<T> it = map.entrySet().iterator();
        int length = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            int length2 = bytes.length;
            byte[] bytes2 = str2.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            length += length2 + bytes2.length;
        }
        return length / 1024;
    }
}
