package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.ads.AdContainer;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0192 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1099 f1065;

    public C0192(C1099 c1099) {
        this.f1065 = c1099;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1099 c1099 = this.f1065;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c1099.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != -1097819034) {
            if (iHashCode != 1554700484 || !str.equals(StringFog.decrypt("eapjSfYaJGp9uXZT4xI+bWeqa0T2\n", "KeYiCrNXYSQ=\n"))) {
                b = -1;
            }
        } else if (str.equals(StringFog.decrypt("JW7jfOmSK7MhffZm/JoxuyBu7mzvjSu4Ow==\n", "dSKiP6zfbv0=\n"))) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE;
        }
        if (b != 1) {
            return null;
        }
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN;
    }
}
