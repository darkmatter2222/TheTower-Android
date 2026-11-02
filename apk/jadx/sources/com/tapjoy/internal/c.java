package com.tapjoy.internal;

import android.R;
import android.app.Dialog;
import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends Dialog {
    private boolean a;

    public c(Context context) {
        super(context, R.style.Theme.Dialog);
        this.a = false;
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
    }

    public final void a() {
        getWindow().setLayout(-1, -1);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        this.a = true;
        super.cancel();
    }

    @Override // android.app.Dialog
    public final void show() {
        this.a = false;
        super.show();
    }
}
