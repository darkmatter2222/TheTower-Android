package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ServiceConnectionC2460gH implements ServiceConnection {
    public final /* synthetic */ HandlerC2461gI A00;

    public ServiceConnectionC2460gH(HandlerC2461gI handlerC2461gI) {
        this.A00 = handlerC2461gI;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.A00.A07.removeCallbacks(this.A00.A0C);
        this.A00.A07.removeCallbacks(this.A00.A0B);
        this.A00.A01 = 0;
        this.A00.A02 = new Messenger(iBinder);
        if (AbstractC2866my.A0F(this.A00.A0A)) {
            this.A00.A0C(this.A00.A02);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.A00.A0J();
        this.A00.A0I(AbstractC2866my.A0D(this.A00.A0A));
    }
}
