package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ί, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnClickListenerC0256 extends AbstractC0965 implements View.OnClickListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1203 = StringFog.decrypt("pNbaoN8YvVaCy+2p2B6kXo7b9r7XD7lo\n", "67iZzLZ71ho=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0350 f1204;

    public ViewOnClickListenerC0256(View.OnClickListener onClickListener, InterfaceC0350 interfaceC0350) {
        super(onClickListener);
        this.f1204 = interfaceC0350;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f1204.mo2032(this, view);
        } catch (Throwable th) {
            AbstractC1071.m2435(f1203, StringFog.decrypt("aYjm7FoDw+cMl8DhZErZ/UmU8fEITMTKQJP36A==\n", "LPqUgygjqok=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            ((View.OnClickListener) obj).onClick(view);
        }
    }
}
