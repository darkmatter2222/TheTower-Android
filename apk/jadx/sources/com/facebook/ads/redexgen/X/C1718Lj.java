package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1718Lj extends AbstractRunnableC2979oq {
    public final /* synthetic */ C1716Lh A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C1718Lj(C1716Lh c1716Lh, Map map, Map map2) {
        this.A00 = c1716Lh;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (TextUtils.isEmpty(this.A00.A01.A7z())) {
            return;
        }
        HashMap map = new HashMap();
        map.putAll(this.A02);
        map.putAll(this.A01);
        this.A00.A0A.A0A().ACt(this.A00.A01.A7z(), map);
    }
}
