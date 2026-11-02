package com.tapjoy.internal;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;

/* JADX INFO: loaded from: classes5.dex */
public final class e {
    public String a;
    public String b;
    public String c;
    public long d;
    public int e;
    public String f;
    public String g;

    public e(String str) {
        bh bhVarB = bh.b(str);
        bhVarB.h();
        while (bhVarB.j()) {
            String strL = bhVarB.l();
            if ("orderId".equals(strL)) {
                this.a = bhVarB.m();
            } else if ("packageName".equals(strL)) {
                this.b = bhVarB.m();
            } else if (InAppPurchaseMetaData.KEY_PRODUCT_ID.equals(strL)) {
                this.c = bhVarB.m();
            } else if ("purchaseTime".equals(strL)) {
                this.d = bhVarB.q();
            } else if ("purchaseState".equals(strL)) {
                this.e = bhVarB.r();
            } else if ("developerPayload".equals(strL)) {
                this.f = bhVarB.m();
            } else if ("purchaseToken".equals(strL)) {
                this.g = bhVarB.m();
            } else {
                bhVarB.s();
            }
        }
        bhVarB.i();
    }
}
