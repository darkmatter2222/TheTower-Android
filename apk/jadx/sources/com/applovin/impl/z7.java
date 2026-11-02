package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z7 {
    private static final List f = Arrays.asList("video/mp4", MimeTypes.VIDEO_WEBM, "video/3gpp", "video/x-matroska");
    private final com.applovin.impl.sdk.l a;
    private final JSONObject c;
    private final JSONObject d;
    protected List b = new ArrayList();
    private final long e = System.currentTimeMillis();

    public z7(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.c = jSONObject;
        this.d = jSONObject2;
    }

    public List a() {
        return this.b;
    }

    public JSONObject b() {
        return this.c;
    }

    public long c() {
        return this.e;
    }

    public int d() {
        return this.b.size();
    }

    public JSONObject e() {
        return this.d;
    }

    public List f() {
        List<String> listExplode = CollectionUtils.explode(JsonUtils.getString(this.c, "vast_preferred_video_types", null));
        return !listExplode.isEmpty() ? listExplode : f;
    }

    public int g() {
        return u7.c(JsonUtils.getInt(this.c, "video_completion_percent", -1));
    }
}
