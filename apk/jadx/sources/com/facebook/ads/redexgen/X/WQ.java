package com.facebook.ads.redexgen.X;

import android.media.Spatializer;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class WQ implements Spatializer.OnSpatializerStateChangedListener {
    public final /* synthetic */ WR A00;
    public final /* synthetic */ C13998h A01;

    public WQ(WR wr, C13998h c13998h) {
        this.A00 = wr;
        this.A01 = c13998h;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }
}
