package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ぃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0879 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f3159;

    public C0879(C0690 c0690) {
        this.f3159 = c0690;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2295(ArrayList arrayList) {
        JSONObject jSONObject;
        C0580 c0580;
        try {
            if (arrayList.isEmpty()) {
                C0690.m2231(this.f3159);
                return;
            }
            PriorityQueue priorityQueue = new PriorityQueue();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                priorityQueue.add(new C0687((C1068) it.next()));
            }
            ArrayList arrayList2 = new ArrayList();
            for (C0687 c0687 = (C0687) priorityQueue.poll(); c0687 != null; c0687 = (C0687) priorityQueue.poll()) {
                C0690 c0690 = this.f3159;
                c0690.getClass();
                AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
                synchronized (c0687) {
                    jSONObject = c0687.f2614.f3803;
                }
                String strOptString = jSONObject.optString(StringFog.decrypt("JNSXnQ==\n", "VLjw8/jUoAQ=\n"));
                String str = c0690.f2623;
                C0961 c0961 = (C0961) abstractC0953M2334;
                if (strOptString != null) {
                    c0580 = (C0580) c0961.mo2349().get(strOptString);
                } else {
                    c0961.getClass();
                    c0580 = null;
                }
                if (c0580 == null || !c0580.m2137(str)) {
                    if (TextUtils.isEmpty(c0687.m2225())) {
                        c0687.m2230(this.f3159.f2634.f1196.m1871());
                    }
                    arrayList2.add(c0687);
                } else {
                    C0999 c0999 = this.f3159.f2635;
                    C1068 c1068 = c0687.f2614;
                    c0999.getClass();
                    C0841.m2289().post(new C1003(c0999, c1068));
                }
            }
            if (arrayList2.isEmpty()) {
                return;
            }
            C0690.m2233(this.f3159, arrayList2, new C0885(this));
        } catch (Exception unused) {
            C0690.m2231(this.f3159);
        }
    }
}
