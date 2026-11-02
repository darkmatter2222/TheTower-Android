package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ь, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0303 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0495 f1539;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public C1035 f1540;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f1541 = new HashMap();

    public C0303(C0495 c0495) {
        this.f1539 = c0495;
        new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2037(C0303 c0303, C0354 c0354) {
        EnumC0367 enumC0367;
        C1035 c1035 = c0303.f1540;
        if (c1035 == null || (enumC0367 = c0354.f1639) == EnumC0367.f1680 || enumC0367 == EnumC0367.f1679 || enumC0367 == EnumC0367.f1681 || c1035.f3661) {
            return;
        }
        String str = AbstractC0129.f814;
        c1035.f3657 = SystemClock.elapsedRealtime();
        c1035.f3656 = AbstractC0145.m1925(c1035.f3664.f1563);
        if (c1035.f3655 && !c1035.f3653) {
            Handler handler = c1035.f3663;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Handler handler2 = c1035.f3663;
            if (handler2 != null) {
                handler2.postDelayed(new C1060(c1035), c1035.f3654);
            }
        }
        if (c1035.f3660) {
            HashMap map = c1035.f3666.f1573.f1541;
            Iterator it = ((map == null || map.isEmpty()) ? new ArrayList() : new ArrayList(map.values())).iterator();
            while (it.hasNext()) {
                EnumC0367 enumC0368 = ((C0354) it.next()).f1639;
                if (enumC0368 == EnumC0367.f1680 || enumC0368 == EnumC0367.f1679 || enumC0368 == EnumC0367.f1681) {
                    return;
                }
            }
            c1035.m2423(false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0354 m2038(String str) {
        HashMap map = this.f1541;
        if (map != null) {
            return (C0354) map.get(str);
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m2039() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = this.f1541;
        for (C0354 c0354 : (map == null || map.isEmpty()) ? new ArrayList() : new ArrayList(map.values())) {
            String str = c0354.f1646;
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(AbstractC0115.f585, c0354.f1644);
                if (c0354.f1637) {
                    jSONObject2.put(StringFog.decrypt("fAoVoX25\n", "H2t2yRjdsrg=\n"), true);
                }
                jSONObject2.put(StringFog.decrypt("7H2YZyXo\n", "nwn5E1CbIUA=\n"), c0354.f1639.name());
                if (c0354.f1638 != EnumC0375.f1833) {
                    jSONObject2.put(StringFog.decrypt("oYwVmx8=\n", "xP5n9G2iGoA=\n"), c0354.f1639 == EnumC0367.f1676 ? c0354.f1638.name() : null);
                    EnumC0375 enumC0375 = c0354.f1638;
                    if (enumC0375 == EnumC0375.f1831 || enumC0375 == EnumC0375.f1832) {
                        jSONObject2.put(AbstractC0115.f584, c0354.f1643);
                        if (c0354.f1638 == EnumC0375.f1832) {
                            jSONObject2.put(StringFog.decrypt("Inxmi5pp0Hw=\n", "UBkX/+oftQ4=\n"), c0354.f1640);
                        }
                    }
                }
                if (c0354.f1635 > 0 && !c0354.f1637) {
                    jSONObject2.put(StringFog.decrypt("JAA=\n", "QnSlQX3WIX4=\n"), c0354.f1635 - c0354.f1636);
                }
                if (c0354.f1634 > 0) {
                    jSONObject2.put(StringFog.decrypt("mD4=\n", "8UoWrGYc1X8=\n"), c0354.f1634 - c0354.f1635);
                }
            } catch (JSONException unused) {
            }
            jSONObject.put(str, jSONObject2);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized boolean m2040(boolean z) {
        C0354 c0354M2038;
        boolean z2;
        C0354 c0354M2039;
        ArrayList arrayList = new ArrayList();
        if (z) {
            Iterator it = AbstractC0924.f3315.iterator();
            while (it.hasNext()) {
                arrayList.add(((String) it.next()).toLowerCase());
            }
        } else {
            arrayList.add(AbstractC0924.f3316.toLowerCase());
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                HashMap map = this.f1541;
                if (map != null && !map.isEmpty()) {
                    for (String str : map.keySet()) {
                        z2 = (arrayList.contains(str) || (c0354M2038 = m2038(str)) == null || c0354M2038.f1639 != EnumC0367.f1678) ? false : true;
                    }
                    break;
                }
                break;
            }
            c0354M2039 = m2038((String) it2.next());
            if (c0354M2039 == null) {
                break;
            }
        } while (c0354M2039.f1639 == EnumC0367.f1678);
        return z2;
    }
}
