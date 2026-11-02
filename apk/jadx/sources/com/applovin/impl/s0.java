package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.X3;
import com.tapjoy.TapjoyConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s0 {
    private static final int[] a = {7, 4, 2, 1, 11};
    private static final int[] b = {5, 6, 12, 10, 3, 9, 8, 14};
    private static final int[] c = {15, 13};
    private static final int[] d = {20};

    public static String a(com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.n0), ((Boolean) lVar.a(c5.r3)).booleanValue() ? "5.0/ad" : "4.0/ad", lVar);
    }

    public static String a(String str, com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.p0), str, lVar);
    }

    public static String a(String str, String str2, com.applovin.impl.sdk.l lVar) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (lVar != null) {
            return str + str2;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public static void a(int i, com.applovin.impl.sdk.l lVar) {
        if (i == 401) {
            com.applovin.impl.sdk.p.h("AppLovinSdk", "SDK key \"" + lVar.k0() + "\" is rejected by AppLovin. Please make sure the SDK key is correct.");
            return;
        }
        if (i == 418) {
            lVar.q0().a(c5.e, Boolean.TRUE);
            lVar.q0().e();
        } else if (i >= 400 && i < 500) {
            if (((Boolean) lVar.a(c5.g)).booleanValue()) {
                lVar.W0();
            }
        } else if (i == -1 && ((Boolean) lVar.a(c5.g)).booleanValue()) {
            lVar.W0();
        }
    }

    public static void a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "filesystem_values", (JSONObject) null);
        if (jSONObject2 != null) {
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.l.p()).edit();
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object object = JsonUtils.getObject(jSONObject2, next, null);
                if (object != null) {
                    f5.a(next, object, (SharedPreferences) null, editorEdit);
                }
            }
            if (((Boolean) lVar.a(c5.Q6)).booleanValue()) {
                f5.a(editorEdit);
            } else {
                editorEdit.apply();
            }
        }
    }

    public static void a(JSONObject jSONObject, boolean z, com.applovin.impl.sdk.l lVar) {
        lVar.u().a(jSONObject, z);
    }

    public static boolean a(int i) {
        return i < 200 || i >= 300;
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context) {
        if (context.getSystemService("connectivity") == null) {
            return true;
        }
        NetworkInfo networkInfoB = b(context);
        if (networkInfoB != null) {
            return networkInfoB.isConnected();
        }
        return false;
    }

    public static byte[] a(InputStream inputStream, com.applovin.impl.sdk.l lVar) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) lVar.a(c5.k3)).intValue()];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    private static NetworkInfo b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    public static String b(com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.m0), ((Boolean) lVar.a(c5.r3)).booleanValue() ? "5.0/ad" : "4.0/ad", lVar);
    }

    public static String b(String str, com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.o0), str, lVar);
    }

    public static void b(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        String string = JsonUtils.getString(jSONObject, "persisted_data", null);
        if (StringUtils.isValidString(string)) {
            lVar.b(e5.H, string);
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().d("ConnectionUtils", "Updated persisted data");
            }
        }
    }

    public static Map c(com.applovin.impl.sdk.l lVar) {
        HashMap map = new HashMap();
        String str = (String) lVar.a(c5.j);
        if (StringUtils.isValidString(str)) {
            map.put("device_token", str);
        } else if (!((Boolean) lVar.a(c5.x5)).booleanValue()) {
            map.put(TapjoyConstants.TJC_API_KEY, lVar.k0());
        }
        map.putAll(u7.a(lVar.B().e()));
        return map;
    }

    public static void c(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (jSONObject.has("settings")) {
                d5 d5VarQ0 = lVar.q0();
                if (jSONObject.isNull("settings")) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
                d5VarQ0.a(jSONObject2);
                d5VarQ0.e();
                String strB = c5.U6.b();
                if (JsonUtils.valueExists(jSONObject2, strB)) {
                    f5.b(e5.J, JsonUtils.getBoolean(jSONObject2, strB, Boolean.FALSE), com.applovin.impl.sdk.l.p());
                }
            }
        } catch (JSONException e) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("ConnectionUtils", "Unable to parse settings out of API response", e);
            }
        }
    }

    public static String d(com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.n0), "4.0/ad", lVar);
    }

    public static String e(com.applovin.impl.sdk.l lVar) {
        return a((String) lVar.a(c5.m0), "4.0/ad", lVar);
    }

    public static Long f(com.applovin.impl.sdk.l lVar) {
        r0.d dVarA = lVar.x().a();
        if (dVarA == null) {
            return null;
        }
        double dC = u7.c(dVarA.b());
        double d2 = u7.d(dVarA.a());
        if (d2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return null;
        }
        return Long.valueOf((long) (dC / d2));
    }

    public static String g(com.applovin.impl.sdk.l lVar) {
        NetworkInfo networkInfoB = b(com.applovin.impl.sdk.l.p());
        if (networkInfoB != null) {
            int type = networkInfoB.getType();
            int subtype = networkInfoB.getSubtype();
            if (type == 1) {
                return "wifi";
            }
            if (type == 0) {
                if (a(subtype, a)) {
                    return "2g";
                }
                if (a(subtype, b)) {
                    return X3.a;
                }
                if (a(subtype, c)) {
                    return "4g";
                }
                return a(subtype, d) ? "5g" : TapjoyConstants.TJC_CONNECTION_TYPE_MOBILE;
            }
        }
        return "unknown";
    }
}
