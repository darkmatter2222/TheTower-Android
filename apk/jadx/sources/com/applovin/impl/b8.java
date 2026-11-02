package com.applovin.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b8 implements v4 {
    public final Set a = new HashSet();
    public final Set b = new HashSet();
    private Uri c;
    private Uri d;
    private int e;
    private int f;

    public static ImageView a(Uri uri, Context context, com.applovin.impl.sdk.l lVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setClickable(true);
        imageView.setVisibility(8);
        ImageViewUtils.setImageUri(imageView, uri, lVar);
        return imageView;
    }

    public static b8 a(u8 u8Var, com.applovin.impl.sdk.l lVar) {
        if (u8Var == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        u8 u8VarC = u8Var.c("StaticResource");
        if (u8VarC == null || !URLUtil.isValidUrl(u8VarC.d())) {
            lVar.Q();
            if (!com.applovin.impl.sdk.p.a()) {
                return null;
            }
            lVar.Q().b("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
            return null;
        }
        b8 b8Var = new b8();
        b8Var.c = Uri.parse(u8VarC.d());
        u8 u8VarB = u8Var.b("IconClickThrough");
        if (u8VarB != null && URLUtil.isValidUrl(u8VarB.d())) {
            b8Var.d = Uri.parse(u8VarB.d());
        }
        String str = (String) u8Var.a().get("width");
        int i = 0;
        int i2 = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
        String str2 = (String) u8Var.a().get("height");
        if (str2 != null && Integer.parseInt(str2) > 0) {
            i = Integer.parseInt(str2);
        }
        int iIntValue = ((Integer) lVar.a(c5.j5)).intValue();
        if (i2 <= 0 || i <= 0) {
            b8Var.f = iIntValue;
            b8Var.e = iIntValue;
            return b8Var;
        }
        double d = i2 / i;
        int iMin = Math.min(Math.max(i2, i), iIntValue);
        if (i2 >= i) {
            b8Var.e = iMin;
            b8Var.f = (int) (((double) iMin) / d);
            return b8Var;
        }
        b8Var.f = iMin;
        b8Var.e = (int) (((double) iMin) * d);
        return b8Var;
    }

    public static b8 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        f8 f8VarA;
        f8 f8VarA2;
        if (jSONObject == null) {
            return null;
        }
        b8 b8Var = new b8();
        String string = JsonUtils.getString(jSONObject, "image_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        b8Var.c = Uri.parse(string);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (f8VarA2 = f8.a(jSONObject2, lVar)) != null) {
                b8Var.a.add(f8VarA2);
            }
        }
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "view_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && (f8VarA = f8.a(jSONObject3, lVar)) != null) {
                b8Var.b.add(f8VarA);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "click_uri", null);
        b8Var.d = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        b8Var.e = JsonUtils.getInt(jSONObject, "width", 0);
        b8Var.f = JsonUtils.getInt(jSONObject, "height", 0);
        return b8Var;
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            jSONArray.put(((f8) it.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = this.b.iterator();
        while (it2.hasNext()) {
            jSONArray.put(((f8) it2.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "view_trackers", jSONArray2);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "image_uri", uri == null ? null : uri.toString());
        Uri uri2 = this.d;
        JsonUtils.putString(jSONObject, "click_uri", uri2 != null ? uri2.toString() : null);
        JsonUtils.putInt(jSONObject, "width", this.e);
        JsonUtils.putInt(jSONObject, "height", this.f);
        return jSONObject;
    }

    public Set b() {
        return this.a;
    }

    public Uri c() {
        return this.d;
    }

    public int d() {
        return this.f;
    }

    public Uri e() {
        return this.c;
    }

    public Set f() {
        return this.b;
    }

    public int g() {
        return this.e;
    }

    public String toString() {
        return "VastIndustryIcon{imageUri='" + e() + "', clickUri='" + c() + "', width=" + g() + ", height=" + d() + "}";
    }
}
