package com.ironsource.adqualitysdk.sdk.i;

import com.hyprmx.android.sdk.placement.PlacementType;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0620 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0610 f2497;

    public C0620(C0610 c0610) {
        this.f2497 = c0610;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0610 c0610 = this.f2497;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c0610.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != -1617199657) {
            if (iHashCode != -1372958932) {
                if (iHashCode != -65580248) {
                    if (iHashCode != 543046670 || !str.equals(StringFog.decrypt("Gbk3gqot9cY=\n", "S/xgw/hpsII=\n"))) {
                        b = -1;
                    }
                } else if (str.equals(StringFog.decrypt("3XjDbltIFAradtt4SEMZ\n", "kzeXMRIGXV4=\n"))) {
                    b = 3;
                } else {
                    b = -1;
                }
            } else if (str.equals(StringFog.decrypt("LNDaDj3IGeYx188H\n", "ZZ6OS2+bTa8=\n"))) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str.equals(StringFog.decrypt("6JT/3QKJgw==\n", "odqpnE7Ax8g=\n"))) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return PlacementType.REWARDED;
        }
        if (b == 1) {
            return PlacementType.INTERSTITIAL;
        }
        if (b == 2) {
            return PlacementType.INVALID;
        }
        if (b != 3) {
            return null;
        }
        return PlacementType.NOT_INITIALIZED;
    }
}
