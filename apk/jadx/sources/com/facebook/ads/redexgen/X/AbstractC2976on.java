package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.on, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2976on extends FrameLayout {
    public static final AtomicBoolean A00 = new AtomicBoolean();
    public static final AtomicReference<InterfaceC2969og> A01 = new AtomicReference<>();

    public static void A00(boolean z, InterfaceC2969og interfaceC2969og) {
        A00.set(z);
        A01.set(interfaceC2969og);
    }
}
