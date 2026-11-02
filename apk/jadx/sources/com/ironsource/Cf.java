package com.ironsource;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class Cf implements InterfaceC3583f4 {
    private Activity a;
    private Context b;

    @Override // com.ironsource.InterfaceC3583f4
    public Activity a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3583f4
    public void a(Activity activity) {
        this.a = activity;
    }

    @Override // com.ironsource.InterfaceC3583f4
    public void a(Context context) {
        this.b = context;
    }

    @Override // com.ironsource.InterfaceC3583f4
    public Context b() {
        return this.b;
    }
}
