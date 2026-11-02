package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AE implements Yk {
    public final EnumC2050Zc A00;
    public final AbstractC13094t A01;

    public AE(AbstractC13094t abstractC13094t, EnumC2050Zc enumC2050Zc) {
        this.A01 = abstractC13094t;
        this.A00 = enumC2050Zc;
    }

    @Override // com.facebook.ads.redexgen.X.Yk
    public void A4e(Map<InterfaceC2081a7, YU> map, Map<SyncModifiableBundle, EnumC2050Zc> map2) {
        map2.put(null, this.A00);
    }
}
