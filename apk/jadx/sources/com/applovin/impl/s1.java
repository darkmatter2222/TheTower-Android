package com.applovin.impl;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class s1 extends i2 {
    private JSONObject i;

    public s1(com.applovin.impl.sdk.l lVar) {
        super(lVar, h2.b.ERROR);
    }

    private List a(String str) {
        List<Integer> integerList = JsonUtils.getIntegerList(this.i, StringUtils.getHost(str), null);
        return integerList == null ? JsonUtils.getIntegerList(this.i, BuildConfig.FLAVOR, null) : integerList;
    }

    public void a(String str, String str2, int i, String str3) {
        List listA = a(str2);
        boolean z = listA != null;
        if (z && listA.contains(Integer.valueOf(i))) {
            return;
        }
        if (z || i >= 400) {
            HashMap map = new HashMap(4);
            map.put("source", str);
            map.put("url", StringUtils.emptyIfNull(str2));
            map.put("code", String.valueOf(i));
            map.put("error_message", j2.a(str3));
            d(h2.l1, map);
        }
    }

    public void a(String str, String str2, com.applovin.impl.sdk.ad.b bVar) {
        HashMap map = new HashMap();
        map.put("source", str);
        map.put("error_message", str2);
        if (bVar != null) {
            map.putAll(j2.a((AppLovinAdImpl) bVar));
            map.putAll(j2.a(bVar));
            boolean zD0 = bVar.D0();
            map.put("is_video_stream", String.valueOf(zD0));
            if (zD0 && (bVar instanceof com.applovin.impl.sdk.ad.a)) {
                CollectionUtils.putStringIfValid(TapjoyConstants.TJC_VIDEO_URL, ((com.applovin.impl.sdk.ad.a) bVar).l1(), map);
            } else {
                CollectionUtils.putStringIfValid(TapjoyConstants.TJC_VIDEO_URL, bVar.K(), map);
            }
        }
        d(h2.i1, map);
    }

    public void a(String str, String str2, Throwable th, Map map) {
        a(str + ":" + str2, th, map);
    }

    public void a(String str, Throwable th) {
        a(str, th, new HashMap());
    }

    public void a(String str, Throwable th, Map map) {
        map.put("source", str);
        map.put("top_main_method", th.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        for (Throwable th2 : th.getSuppressed()) {
            HashMap map2 = new HashMap();
            CollectionUtils.putStringIfValid("source", str, map2);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), map2);
            CollectionUtils.putStringIfValid("suppressed_throwable", th2.toString(), map2);
            arrayList.add(map2);
        }
        a(h2.c1, arrayList, 0L);
    }

    public void b() {
        this.i = JsonUtils.deserialize((String) this.a.a(c5.K));
    }

    public void b(final String str, final String str2, final Throwable th) {
        this.a.s0().a((n5) new x6(this.a, "reportCaughtException", new Runnable() { // from class: com.applovin.impl.s1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, str2, th);
            }
        }), i6.b.OTHER);
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(String str, String str2, Throwable th) {
        a(str, str2, th, new HashMap());
    }
}
