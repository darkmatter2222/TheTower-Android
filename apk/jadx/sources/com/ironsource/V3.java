package com.ironsource;

import android.content.Context;
import com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class V3 implements InterfaceC3896w7 {
    private InterfaceC3878v7 a;

    protected V3(JSONObject jSONObject, Context context) {
        this.a = a(jSONObject, context);
        Logger.i("V3", "created ConnectivityAdapter with strategy " + this.a.getClass().getSimpleName());
    }

    private InterfaceC3878v7 a(JSONObject jSONObject, Context context) {
        if (jSONObject.optInt(C3510b4.j.g0) != 1 && M1.c(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return new C3752oc(this);
        }
        return new BroadcastReceiverStrategy(this);
    }

    public JSONObject a(Context context) {
        return this.a.c(context);
    }

    @Override // com.ironsource.InterfaceC3896w7
    public void a() {
    }

    @Override // com.ironsource.InterfaceC3896w7
    public void a(String str, JSONObject jSONObject) {
    }

    public void b() {
        this.a.a();
    }

    public void b(Context context) {
        this.a.b(context);
    }

    @Override // com.ironsource.InterfaceC3896w7
    public void b(String str, JSONObject jSONObject) {
    }

    public void c(Context context) {
        this.a.a(context);
    }
}
