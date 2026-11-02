package com.applovin.impl.sdk;

import com.applovin.impl.c5;
import com.applovin.impl.h2;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCrashReporter implements c.a {
    private static boolean b;
    private static boolean c;
    private static final NativeCrashReporter d = new NativeCrashReporter();
    private final HashMap a = new HashMap();

    private NativeCrashReporter() {
    }

    public static void a(l lVar) {
        if (lVar == null) {
            return;
        }
        if (!((Boolean) lVar.a(c5.C4)).booleanValue() && !u7.k(l.p())) {
            if (c) {
                try {
                    c cVarH = lVar.h();
                    NativeCrashReporter nativeCrashReporter = d;
                    cVarH.b((c.a) nativeCrashReporter);
                    nativeCrashReporter.disable();
                    return;
                } catch (Throwable th) {
                    lVar.Q();
                    if (p.a()) {
                        lVar.Q().a("NativeCrashReporter", "Failed to disable native crash reporter", th);
                    }
                    lVar.E().a("NativeCrashReporter", "disableInstance", th);
                    return;
                }
            }
            return;
        }
        if (a()) {
            List listC = lVar.c(c5.D4);
            int[] iArr = new int[listC.size()];
            for (int i = 0; i < listC.size(); i++) {
                try {
                    iArr[i] = Integer.parseInt((String) listC.get(i));
                } catch (NumberFormatException unused) {
                }
            }
            File file = new File(l.p().getCacheDir(), "al-reports");
            if (file.exists()) {
                a(file, lVar);
            } else if (!file.mkdir()) {
                lVar.Q();
                if (p.a()) {
                    lVar.Q().b("NativeCrashReporter", "Failed to create reports directory");
                    return;
                }
                return;
            }
            try {
                NativeCrashReporter nativeCrashReporter2 = d;
                nativeCrashReporter2.enable(file.getAbsolutePath(), iArr, ((Boolean) lVar.a(c5.E4)).booleanValue());
                if (((Boolean) lVar.a(c5.F4)).booleanValue()) {
                    lVar.h().a((c.a) nativeCrashReporter2);
                }
            } catch (Throwable th2) {
                lVar.Q();
                if (p.a()) {
                    lVar.Q().a("NativeCrashReporter", "Failed to enable native crash reporter", th2);
                }
                lVar.E().a("NativeCrashReporter", "enableInstance", th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a6  */
    private static void a(File file, l lVar) throws Throwable {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String strF = lVar.I().f(file2);
            if (StringUtils.isValidString(strF)) {
                String[] strArrSplit = strF.split("@@@@@");
                if (strArrSplit.length == 3) {
                    try {
                        String str = strArrSplit[0];
                        String str2 = strArrSplit[1];
                        JSONArray jSONArray = new JSONArray(strArrSplit[2]);
                        if (jSONArray.length() == 0) {
                            lVar.E().a(h2.k1, str2, CollectionUtils.hashMap("error_message", str));
                        } else {
                            ArrayList arrayList = new ArrayList(jSONArray.length());
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
                                if (jSONObject != null) {
                                    HashMap<String, String> mapHashMap = CollectionUtils.hashMap("error_message", str);
                                    mapHashMap.put("source", str2);
                                    mapHashMap.putAll(JsonUtils.toStringMap(jSONObject));
                                    arrayList.add(mapHashMap);
                                }
                            }
                            lVar.E().a(h2.k1, arrayList, 0L);
                        }
                    } catch (Throwable th) {
                        lVar.Q();
                        if (p.a()) {
                            lVar.Q().a("NativeCrashReporter", "Failed to symbolicate native crash report", th);
                        }
                    }
                } else {
                    lVar.Q();
                    if (p.a()) {
                        lVar.Q().b("NativeCrashReporter", "Failed to read native crash error report: " + file2.getAbsolutePath());
                    }
                }
            } else {
                lVar.Q();
                if (p.a()) {
                    lVar.Q().b("NativeCrashReporter", "Failed to read native crash error report: " + file2.getAbsolutePath());
                }
            }
            try {
                if (!file2.delete()) {
                    lVar.Q();
                    if (p.a()) {
                        lVar.Q().b("NativeCrashReporter", "Failed to delete native crash report: " + file2.getAbsolutePath());
                    }
                }
            } catch (Throwable th2) {
                lVar.Q();
                if (p.a()) {
                    lVar.Q().a("NativeCrashReporter", "Failed to delete native crash report: " + file2.getAbsolutePath(), th2);
                }
            }
        }
    }

    private static boolean a() {
        if (!b) {
            b = true;
            try {
                System.loadLibrary("applovin-native-crash-reporter");
                c = true;
            } catch (Throwable th) {
                p.b("NativeCrashReporter", "Failed to load native crash reporter library", th);
            }
        }
        return c;
    }

    private native void disable();

    private native void enable(String str, int[] iArr, boolean z);

    private native void updateAdInfo(String str);

    @Override // com.applovin.impl.sdk.c.a
    public void a(List list) {
        try {
            updateAdInfo(new JSONArray((Collection) list).toString());
        } catch (Throwable unused) {
        }
    }
}
