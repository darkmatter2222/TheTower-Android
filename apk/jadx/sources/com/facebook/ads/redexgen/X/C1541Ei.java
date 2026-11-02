package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ei, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1541Ei implements InterfaceC3277th {
    public static String[] A01 = {"rUOW", "aWRz9w57BbjdFqiLlVKULgjEpPmZvoH8", "O5R7kQjl9dlEbTmOxFM", "RTTXt1XGjQ7lc0JJN4k", "YWk5sDvdVq4OrfH6uqkpvIufIX02K612", "riiCfbbpSiQJxVLfaMk0fOBGnO7a3bhl", "ebL4stdzD1kZZbdyPmGvoJkp8ONqczPZ", "XaKiFBuErPwArMTrVIzzCBiiyB1SWdBx"};
    public final WeakReference<C13506i> A00;

    public C1541Ei(C13506i c13506i) {
        this.A00 = new WeakReference<>(c13506i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        C13506i c13506i = this.A00.get();
        if (c13506i != null) {
            Bitmap bitmapA00 = c3276tg.A00();
            String[] strArr = A01;
            if (strArr[4].charAt(12) != strArr[7].charAt(12)) {
                throw new RuntimeException();
            }
            A01[0] = "M8qO";
            c13506i.A04 = bitmapA00 != null;
            c13506i.A02();
        }
    }
}
