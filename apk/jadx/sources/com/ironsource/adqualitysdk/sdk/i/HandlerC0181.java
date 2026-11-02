package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class HandlerC0181 extends Handler {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0160 f1050;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0181(C0160 c0160, Looper looper) {
        super(looper);
        this.f1050 = c0160;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        AbstractC0164[] abstractC0164Arr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        C0160 c0160 = this.f1050;
        do {
            synchronized (c0160.f902) {
                size = c0160.f900.size();
                if (size <= 0) {
                    return;
                }
                abstractC0164Arr = new AbstractC0164[size];
                c0160.f900.toArray(abstractC0164Arr);
                c0160.f900.clear();
            }
        } while (size <= 0);
        AbstractC0164 abstractC0164 = abstractC0164Arr[0];
        throw null;
    }
}
