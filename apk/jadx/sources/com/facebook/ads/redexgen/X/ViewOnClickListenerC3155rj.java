package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3155rj implements View.OnClickListener {
    public final /* synthetic */ C2416fZ A00;
    public final /* synthetic */ C2892nO A01;
    public final /* synthetic */ InterfaceC3119r9 A02;
    public final /* synthetic */ C3156rk A03;
    public final /* synthetic */ String A04;

    public ViewOnClickListenerC3155rj(C3156rk c3156rk, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9, String str, C2416fZ c2416fZ) {
        this.A03 = c3156rk;
        this.A01 = c2892nO;
        this.A02 = interfaceC3119r9;
        this.A04 = str;
        this.A00 = c2416fZ;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A01.A04(EnumC2891nN.A0A, null);
            if (this.A03.A01.A0O(this.A03.A02.A02(), true)) {
                this.A02.ABW(this.A04, this.A00);
            } else {
                if (TextUtils.isEmpty(this.A00.A00())) {
                    return;
                }
                C3007pK.A0P(new C3007pK(), this.A03.A02, AbstractC3011pP.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
