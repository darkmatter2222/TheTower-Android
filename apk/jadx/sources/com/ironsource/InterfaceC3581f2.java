package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3581f2 {

    /* JADX INFO: renamed from: com.ironsource.f2$a */
    public static final class a implements InterfaceC3581f2 {
        private final JSONObject a;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public a(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        public /* synthetic */ a(JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new JSONObject() : jSONObject);
        }

        @Override // com.ironsource.InterfaceC3581f2
        public com.ironsource.mediationsdk.demandOnly.p a(String instanceId) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            JSONObject jSONObject = this.a;
            JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject(instanceId) : null;
            String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("plumbus") : null;
            return strOptString != null ? new com.ironsource.mediationsdk.demandOnly.p.a(strOptString) : new com.ironsource.mediationsdk.demandOnly.p.b();
        }
    }

    com.ironsource.mediationsdk.demandOnly.p a(String str);
}
