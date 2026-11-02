package com.applovin.impl.sdk.ad;

import android.net.Uri;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import com.applovin.impl.adview.e;
import com.applovin.impl.c4;
import com.applovin.impl.l4;
import com.applovin.impl.m5;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyConstants;
import com.unity3d.services.core.device.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends b implements v4 {
    private final String q;
    private final String r;
    private final String s;
    private final l4 t;
    private c4 u;

    public a(JSONObject jSONObject, JSONObject jSONObject2, l lVar) {
        super(jSONObject, jSONObject2, lVar);
        this.q = h1();
        this.r = o1();
        this.s = n1();
        this.t = new l4(this);
        String strJ1 = j1();
        if (StringUtils.isValidString(strJ1)) {
            this.u = new c4(this, strJ1, lVar);
        }
    }

    public static a a(JSONObject jSONObject, l lVar) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        if (jSONObject == null || (jSONObject2 = JsonUtils.getJSONObject(jSONObject, "full_response", (JSONObject) null)) == null || (jSONObject3 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject2, "ads", new JSONArray()), 0, (JSONObject) null)) == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject3, TJAdUnitConstants.String.HTML, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String string2 = JsonUtils.getString(jSONObject3, MimeTypes.BASE_TYPE_VIDEO, "");
        JsonUtils.putString(jSONObject3, TJAdUnitConstants.String.HTML, JsonUtils.getString(jSONObject, "original_html_source", ""));
        JsonUtils.putString(jSONObject3, MimeTypes.BASE_TYPE_VIDEO, JsonUtils.getString(jSONObject, "original_video_uri_string", ""));
        a aVar = new a(jSONObject3, jSONObject2, lVar);
        JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONObject, "cached_ad_html_resources_urls", new JSONObject());
        Iterator<String> itKeys = jSONObject4.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String string3 = JsonUtils.getString(jSONObject4, next, null);
            if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string3)) {
                aVar.a(next, string3);
            }
        }
        c4 c4VarI1 = aVar.i1();
        if (c4VarI1 != null && !c4VarI1.f()) {
            return null;
        }
        aVar.d(string);
        if (StringUtils.isValidString(string2)) {
            aVar.a(Uri.parse(string2));
        }
        return aVar;
    }

    private String n1() {
        return getStringFromAdObject("stream_url", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(m5 m5Var) {
        m5Var.b(TJAdUnitConstants.String.HTML, this.q);
        m5Var.b("stream_url", this.s);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean D0() {
        return containsKeyForAdObject("stream_url");
    }

    @Override // com.applovin.impl.sdk.ad.b
    public void G0() {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            m5Var.a(new Consumer() { // from class: com.applovin.impl.sdk.ad.a$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.o((m5) obj);
                }
            });
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, TJAdUnitConstants.String.HTML, this.q);
            JsonUtils.putString(this.adObject, "stream_url", this.s);
        }
    }

    @Override // com.applovin.impl.sdk.ad.b
    public String K() {
        return this.r;
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "original_html_source", this.q);
        JsonUtils.putString(jSONObject, "original_video_uri_string", this.r);
        JsonUtils.putString(jSONObject, "original_video_stream_uri_string", this.s);
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry entry : m().entrySet()) {
            JsonUtils.putString(jSONObject2, (String) entry.getKey(), (String) entry.getValue());
        }
        JsonUtils.putJSONObject(jSONObject, "cached_ad_html_resources_urls", jSONObject2);
        m5 m5Var = this.synchronizedFullResponse;
        if (m5Var != null) {
            JsonUtils.putJSONObject(jSONObject, "full_response", m5Var.a());
            return jSONObject;
        }
        synchronized (this.fullResponseLock) {
            JsonUtils.putJSONObject(jSONObject, "full_response", this.fullResponse);
        }
        return jSONObject;
    }

    public void a(Uri uri) {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            m5Var.b(MimeTypes.BASE_TYPE_VIDEO, uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, MimeTypes.BASE_TYPE_VIDEO, uri.toString());
        }
    }

    public void b(List list) {
        String strH1 = h1();
        if (CollectionUtils.isEmpty(list) || TextUtils.isEmpty(strH1)) {
            return;
        }
        Map mapM = m();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            String str = (String) mapM.get(string);
            if (StringUtils.isValidString(str)) {
                strH1 = StringUtils.replace(strH1, string, str);
            }
        }
        d(strH1);
    }

    public void d(String str) {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            m5Var.b(TJAdUnitConstants.String.HTML, str);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, TJAdUnitConstants.String.HTML, str);
        }
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri e0() {
        String stringFromAdObject = getStringFromAdObject("video_click_url", "");
        return StringUtils.isValidString(stringFromAdObject) ? Uri.parse(stringFromAdObject) : f1();
    }

    public long e1() {
        return getLongFromAdObject("ad_load_timeout_ms", 0L);
    }

    public Uri f1() {
        String stringFromAdObject = getStringFromAdObject(TapjoyConstants.TJC_CLICK_URL, "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public e.a g1() {
        return a(getIntFromAdObject("expandable_style", e.a.INVISIBLE.b()));
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public l4 getAdEventTracker() {
        return this.t;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        JSONObject jSONObjectDeepCopy;
        JSONObject jSONObjectA;
        m5 m5Var = this.synchronizedFullResponse;
        if (m5Var != null) {
            jSONObjectA = m5Var.a();
        } else {
            synchronized (this.fullResponseLock) {
                jSONObjectDeepCopy = JsonUtils.deepCopy(this.fullResponse);
            }
            jSONObjectA = jSONObjectDeepCopy;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObjectA, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, 0, new JSONObject());
            JsonUtils.putString(jSONObject, TJAdUnitConstants.String.HTML, this.q);
            JsonUtils.putString(jSONObject, MimeTypes.BASE_TYPE_VIDEO, this.r);
            JsonUtils.putString(jSONObject, "stream_url", this.s);
        }
        return jSONObjectA;
    }

    public String h1() {
        return getStringFromAdObject(TJAdUnitConstants.String.HTML, "");
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        return n0() != null;
    }

    public c4 i1() {
        return this.u;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public boolean isOpenMeasurementEnabled() {
        if (this.sdk.g0().e()) {
            return true;
        }
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    public String j1() {
        return getStringFromAdObject("mpd_url", "");
    }

    public float k1() {
        return getFloatFromAdObject("mraid_close_delay_graphic", 0.0f);
    }

    public String l1() {
        return this.s;
    }

    public int m1() {
        return getIntFromAdObject("required_mpd_segment_cache_percent", 0);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri n0() {
        String strN1 = n1();
        if (StringUtils.isValidString(strN1)) {
            return Uri.parse(strN1);
        }
        String strO1 = o1();
        if (StringUtils.isValidString(strO1)) {
            return Uri.parse(strO1);
        }
        return null;
    }

    public String o1() {
        return getStringFromAdObject(MimeTypes.BASE_TYPE_VIDEO, "");
    }

    public boolean p1() {
        if (this.adObject.has("close_button_expandable_hidden")) {
            return getBooleanFromAdObject("close_button_expandable_hidden", Boolean.FALSE);
        }
        return true;
    }

    public void q1() {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            m5Var.c("stream_url");
            return;
        }
        synchronized (this.adObjectLock) {
            this.adObject.remove("stream_url");
        }
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean z0() {
        return getBooleanFromFullResponse("is_persisted_ad", false);
    }
}
