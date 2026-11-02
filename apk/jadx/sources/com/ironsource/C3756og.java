package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.og, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3756og {
    private NetworkSettings b;
    private ArrayList<String> a = new ArrayList<>();
    private JSONObject c = null;
    private boolean d = true;

    C3756og() {
    }

    public static C3756og a() {
        return new C3756og();
    }

    public void a(NetworkSettings networkSettings) {
        this.b = networkSettings;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.add(str);
    }

    public void a(JSONObject jSONObject) {
        this.c = jSONObject;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public JSONObject b() {
        return this.c;
    }

    public NetworkSettings c() {
        return this.b;
    }

    public ArrayList<String> d() {
        return this.a;
    }

    public boolean e() {
        return this.d;
    }
}
