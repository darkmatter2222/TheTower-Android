package com.ironsource;

import java.util.HashMap;
import java.util.Map;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3561e0 implements InterfaceC3579f0 {
    public static final a b = new a(null);
    private static final String c = "ext_";
    private final Map<String, String> a = new HashMap();

    /* JADX INFO: renamed from: com.ironsource.e0$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.ironsource.InterfaceC3579f0
    public void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.put(key, value);
    }

    @Override // com.ironsource.InterfaceC3579f0
    public void a(HashMap<String, String> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.a.putAll(params);
    }

    @Override // com.ironsource.InterfaceC3579f0
    public void b(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.put("ext_" + key, value);
    }

    @Override // com.ironsource.InterfaceC3579f0
    public Map<String, String> get() {
        return this.a;
    }
}
