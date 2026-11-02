package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1909Tf implements InterfaceC1678Jt {
    public final long A00;

    @MetaExoPlayerCustomization
    public final List<C1911Th> A01;
    public static final C1909Tf A03 = new C1909Tf(XR.A01(), 0);
    public static final String A04 = N1.A0h(0);
    public static final String A05 = N1.A0h(1);
    public static final InterfaceC1677Js<C1909Tf> A02 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Tg
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C1909Tf.A00(bundle);
        }
    };

    @MetaExoPlayerCustomization
    public C1909Tf(List<C1911Th> list, long j) {
        this.A01 = XR.A03((C1911Th[]) list.toArray(new C1911Th[0]));
        this.A00 = j;
    }

    public static final C1909Tf A00(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A04);
        return new C1909Tf(parcelableArrayList == null ? XR.A01() : C1728Lt.A01(C1911Th.A0I, parcelableArrayList), bundle.getLong(A05));
    }
}
