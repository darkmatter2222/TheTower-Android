package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1063 extends AbstractC0993 {
    static {
        StringFog.decrypt("xwG3JDHZGKvG\n", "tGTZQHSrasQ=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2431(C0116 c0116, ArrayList arrayList) {
        boolean zBooleanValue;
        JSONObject jSONObject;
        boolean zBooleanValue2 = false;
        String str = (String) AbstractC0993.m2388(arrayList, 0, String.class);
        String str2 = c0116.m1903() + StringFog.decrypt("Jw==\n", "HUcavZFJdKk=\n") + Integer.toHexString(str.hashCode());
        Throwable th = (Throwable) AbstractC0993.m2388(arrayList, 1, Throwable.class);
        try {
            if (arrayList.size() <= 2) {
                AbstractC1071.m2434(c0116.m1903(), str, str2, th, null, null, true, false, false);
                return;
            }
            if (AbstractC0993.m2387(arrayList, 2, JSONObject.class)) {
                JSONObject jSONObject2 = (JSONObject) AbstractC0993.m2388(arrayList, 2, JSONObject.class);
                if (arrayList.size() > 3 && AbstractC0993.m2387(arrayList, 3, Boolean.class)) {
                    zBooleanValue2 = ((Boolean) AbstractC0993.m2388(arrayList, 3, Boolean.class)).booleanValue();
                }
                jSONObject = jSONObject2;
                zBooleanValue = zBooleanValue2;
            } else {
                zBooleanValue = AbstractC0993.m2387(arrayList, 2, Boolean.class) ? ((Boolean) AbstractC0993.m2388(arrayList, 2, Boolean.class)).booleanValue() : false;
                jSONObject = null;
            }
            AbstractC1071.m2434(c0116.m1903(), str, str2, th, null, jSONObject, true, false, zBooleanValue);
        } catch (Throwable unused) {
        }
    }
}
