package com.applovin.impl;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f8 implements v4 {
    private String a;
    private String b;
    private String c;
    private boolean d;
    private long e = -1;
    private int f = -1;

    private f8() {
    }

    private static int a(String str, z7 z7Var) {
        if (TJAdUnitConstants.String.VIDEO_START.equalsIgnoreCase(str)) {
            return 0;
        }
        if (TJAdUnitConstants.String.VIDEO_FIRST_QUARTILE.equalsIgnoreCase(str)) {
            return 25;
        }
        if (TJAdUnitConstants.String.VIDEO_MIDPOINT.equalsIgnoreCase(str)) {
            return 50;
        }
        if (TJAdUnitConstants.String.VIDEO_THIRD_QUARTILE.equalsIgnoreCase(str)) {
            return 75;
        }
        if (!TJAdUnitConstants.String.VIDEO_COMPLETE.equalsIgnoreCase(str)) {
            return -1;
        }
        if (z7Var != null) {
            return z7Var.g();
        }
        return 95;
    }

    public static f8 a(u8 u8Var, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        List<String> listExplode;
        int size;
        long seconds;
        if (u8Var == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        try {
            String strD = u8Var.d();
            if (TextUtils.isEmpty(strD)) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().b("VastTracker", "Unable to create tracker. Could not find URL.");
                }
                return null;
            }
            f8 f8Var = new f8();
            f8Var.c = strD;
            f8Var.a = (String) u8Var.a().get("id");
            f8Var.b = (String) u8Var.a().get("event");
            f8Var.d = ((Boolean) lVar.a(c5.w5)).booleanValue();
            if (z7Var != null) {
                f8Var.d = JsonUtils.getBoolean(z7Var.b(), "vast_fire_trackers_from_webview", Boolean.valueOf(f8Var.d)).booleanValue();
            }
            f8Var.f = a(f8Var.b(), z7Var);
            String str = (String) u8Var.a().get(TypedValues.CycleType.S_WAVE_OFFSET);
            if (StringUtils.isValidString(str)) {
                String strTrim = str.trim();
                if (strTrim.contains("%")) {
                    f8Var.f = StringUtils.parseInt(strTrim.substring(0, strTrim.length() - 1));
                    return f8Var;
                }
                if (strTrim.contains(":") && (size = (listExplode = CollectionUtils.explode(strTrim, ":")).size()) > 0) {
                    int i = size - 1;
                    long j = 0;
                    for (int i2 = i; i2 >= 0; i2--) {
                        String str2 = listExplode.get(i2);
                        if (StringUtils.isNumeric(str2)) {
                            int i3 = Integer.parseInt(str2);
                            if (i2 == i) {
                                seconds = i3;
                            } else if (i2 == size - 2) {
                                seconds = TimeUnit.MINUTES.toSeconds(i3);
                            } else if (i2 == size - 3) {
                                seconds = TimeUnit.HOURS.toSeconds(i3);
                            }
                            j += seconds;
                        }
                    }
                    f8Var.e = j;
                    f8Var.f = -1;
                }
            }
            return f8Var;
        } catch (Throwable th) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("VastTracker", "Error occurred while initializing", th);
            }
            lVar.E().a("VastTracker", th);
            return null;
        }
    }

    public static f8 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            return null;
        }
        f8 f8Var = new f8();
        String string = JsonUtils.getString(jSONObject, "uri_string", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        f8Var.c = string;
        f8Var.a = JsonUtils.getString(jSONObject, "identifier", "");
        f8Var.b = JsonUtils.getString(jSONObject, "event", "");
        f8Var.e = JsonUtils.getLong(jSONObject, "offset_seconds", -1L);
        f8Var.f = JsonUtils.getInt(jSONObject, "offset_percent", -1);
        return f8Var;
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "identifier", this.a);
        JsonUtils.putString(jSONObject, "event", this.b);
        JsonUtils.putString(jSONObject, "uri_string", this.c);
        JsonUtils.putLong(jSONObject, "offset_seconds", this.e);
        JsonUtils.putInt(jSONObject, "offset_percent", this.f);
        return jSONObject;
    }

    public boolean a(long j, int i) {
        long j2 = this.e;
        boolean z = j2 >= 0;
        boolean z2 = j >= j2;
        int i2 = this.f;
        return (z && z2) || ((i2 >= 0) && (i >= i2));
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f8)) {
            return false;
        }
        f8 f8Var = (f8) obj;
        if (this.e != f8Var.e || this.f != f8Var.f) {
            return false;
        }
        String str = this.a;
        if (str == null ? f8Var.a != null : !str.equals(f8Var.a)) {
            return false;
        }
        String str2 = this.b;
        if (str2 == null ? f8Var.b == null : str2.equals(f8Var.b)) {
            return this.c.equals(f8Var.c);
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.c.hashCode()) * 31;
        long j = this.e;
        return ((iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31) + this.f;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.a + "', event='" + this.b + "', uriString='" + this.c + "', offsetSeconds=" + this.e + ", offsetPercent=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }
}
