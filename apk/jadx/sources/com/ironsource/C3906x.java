package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3906x implements InterfaceC3777pf<JSONObject>, InterfaceC3737nf<C3870v> {
    private final Map<String, H0> a = new LinkedHashMap();
    private int b;

    /* JADX INFO: renamed from: com.ironsource.x$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3719mf.values().length];
            try {
                iArr[EnumC3719mf.LoadRequest.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3719mf.LoadSuccess.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC3719mf.ShowSuccess.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC3719mf.ShowFailed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EnumC3719mf.Destroyed.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    private final void b(C3870v c3870v) {
        int i = a.a[c3870v.f().ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.b++;
                return;
            }
            if (i != 3 && i != 4 && i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            int i2 = this.b;
            if (i2 > 0) {
                this.b = i2 - 1;
            }
        }
    }

    public final int a() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3737nf
    public void a(C3870v record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strC = record.c();
        Map<String, H0> map = this.a;
        H0 h0 = map.get(strC);
        if (h0 == null) {
            h0 = new H0();
            map.put(strC, h0);
        }
        h0.a(record.a(new C3888w()));
        b(record);
    }

    @Override // com.ironsource.InterfaceC3604g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3755of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, H0> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONObject jSONObjectA = entry.getValue().a(mode);
            if (jSONObjectA.length() > 0) {
                jSONObject.put(key, jSONObjectA);
            }
        }
        return jSONObject;
    }

    public final boolean b() {
        return !this.a.isEmpty();
    }
}
