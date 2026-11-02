package com.ironsource;

import android.app.Activity;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Zb implements InterfaceC3457ac {
    private final String a;
    private final com.ironsource.sdk.controller.e b;
    private final InterfaceC3454a9 c;
    private final InterfaceC3507b1 d;
    private final String e;
    private InterfaceC3457ac.a f;

    public static final class a {
        public static final a a = new a();
        public static final String b = "nativeAd.load";
        public static final String c = "nativeAd.loadReport";
        public static final String d = "nativeAd.register";
        public static final String e = "nativeAd.click";
        public static final String f = "nativeAd.privacyClick";
        public static final String g = "nativeAd.visibilityChanged";
        public static final String h = "nativeAd.destroy";

        private a() {
        }
    }

    public Zb(String id, com.ironsource.sdk.controller.e controllerManager, InterfaceC3454a9 imageLoader, InterfaceC3507b1 adViewManagement) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controllerManager, "controllerManager");
        Intrinsics.checkNotNullParameter(imageLoader, "imageLoader");
        Intrinsics.checkNotNullParameter(adViewManagement, "adViewManagement");
        this.a = id;
        this.b = controllerManager;
        this.c = imageLoader;
        this.d = adViewManagement;
        this.e = "Zb";
        controllerManager.a(id, d());
    }

    public /* synthetic */ Zb(String str, com.ironsource.sdk.controller.e eVar, InterfaceC3454a9 interfaceC3454a9, InterfaceC3507b1 interfaceC3507b1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, eVar, (i & 4) != 0 ? new Z8(null, 1, null) : interfaceC3454a9, (i & 8) != 0 ? C3788q8.a() : interfaceC3507b1);
    }

    private final void a(Activity activity, com.ironsource.sdk.controller.f.a aVar) {
        if (aVar.d() == null) {
            InterfaceC3457ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.a("failed to load native ad: missing params");
                return;
            }
            return;
        }
        if (aVar.d().optBoolean("success", false)) {
            H8.b bVarA = new H8.a(this.c, this.d).a(activity, aVar.d());
            a(bVarA, bVarA.a().h());
            return;
        }
        String strOptString = aVar.d().optString("reason", "failed to load native ad: unexpected error");
        InterfaceC3457ac.a aVarB2 = b();
        if (aVarB2 != null) {
            Intrinsics.checkNotNull(strOptString);
            aVarB2.a(strOptString);
        }
    }

    private final void a(H8.b bVar, final H8 h8) {
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, "nativeAd.loadReport." + this.a, bVar.b()), new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda2
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(com.ironsource.sdk.controller.f.a aVar) {
                Zb.a(this.f$0, h8, aVar);
            }
        });
    }

    private final void a(H8 h8, com.ironsource.sdk.controller.f.a aVar) {
        if (aVar.d() == null) {
            InterfaceC3457ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.a("failed to load native ad: missing report params");
                return;
            }
            return;
        }
        if (aVar.d().optBoolean("success", false)) {
            InterfaceC3457ac.a aVarB2 = b();
            if (aVarB2 != null) {
                aVarB2.a(h8);
                return;
            }
            return;
        }
        String strOptString = aVar.d().optString("reason", "failed to load native ad: unexpected error");
        InterfaceC3457ac.a aVarB3 = b();
        if (aVarB3 != null) {
            Intrinsics.checkNotNull(strOptString);
            aVarB3.a(strOptString);
        }
    }

    private final void a(Sb sb) {
        if (sb.f() == null) {
            Logger.i(this.e, "failed to handle click on native ad: missing params");
            return;
        }
        if (!sb.f().optBoolean("success", false)) {
            Logger.i(this.e, "failed to handle click on native ad: " + sb.f().optString("reason", "unexpected error"));
        } else {
            InterfaceC3457ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, Activity activity, com.ironsource.sdk.controller.f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(activity, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, H8 h8, com.ironsource.sdk.controller.f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(h8, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, Sb msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (Intrinsics.areEqual(msg.e(), a.e)) {
            zb.a(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, com.ironsource.sdk.controller.f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(it);
    }

    private final void a(com.ironsource.sdk.controller.f.a aVar) {
        if (aVar.d() == null) {
            Logger.i(this.e, "failed to handle click on native ad: missing params");
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            Logger.i(this.e, "failed to handle click on native ad: " + aVar.d().optString("reason", "unexpected error"));
        } else {
            InterfaceC3457ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Zb zb, com.ironsource.sdk.controller.f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.b(it);
    }

    private final void b(com.ironsource.sdk.controller.f.a aVar) {
        if (aVar.d() == null) {
            Logger.i(this.e, "failed to handle show on native ad: missing params");
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            Logger.i(this.e, "failed to handle show on native ad: " + aVar.d().optString("reason", "unexpected error"));
        } else {
            InterfaceC3457ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.a();
            }
        }
    }

    private final com.ironsource.sdk.controller.l.b d() {
        return new com.ironsource.sdk.controller.l.b() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda0
            @Override // com.ironsource.sdk.controller.l.b
            public final void a(Sb sb) {
                Zb.a(this.f$0, sb);
            }
        };
    }

    private final JSONObject e() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("command", a.e).put("sdkCallback", C3510b4.h.U);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a() {
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, a.h, new JSONObject()), (com.ironsource.sdk.controller.l.a) null);
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a(final Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.b.a(activity);
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, a.b, loadParams), new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda3
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(com.ironsource.sdk.controller.f.a aVar) {
                Zb.a(this.f$0, activity, aVar);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a(Dg viewVisibilityParams) {
        Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, a.g, viewVisibilityParams.g()), new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda4
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(com.ironsource.sdk.controller.f.a aVar) {
                Zb.b(this.f$0, aVar);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a(K8 viewHolder) throws JSONException {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        JSONObject jSONObjectPut = new JSONObject().put("assetViews", viewHolder.t()).put("adViewClickCommand", e());
        String str = this.a;
        Intrinsics.checkNotNull(jSONObjectPut);
        this.b.a(new com.ironsource.sdk.controller.f.c(str, a.d, jSONObjectPut), (com.ironsource.sdk.controller.l.a) null);
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a(InterfaceC3457ac.a aVar) {
        this.f = aVar;
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void a(JSONObject clickParams) {
        Intrinsics.checkNotNullParameter(clickParams, "clickParams");
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, a.e, clickParams), new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda1
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(com.ironsource.sdk.controller.f.a aVar) {
                Zb.a(this.f$0, aVar);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3457ac
    public InterfaceC3457ac.a b() {
        return this.f;
    }

    @Override // com.ironsource.InterfaceC3457ac
    public void c() {
        this.b.a(new com.ironsource.sdk.controller.f.c(this.a, a.f, new JSONObject()), (com.ironsource.sdk.controller.l.a) null);
    }
}
