package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;
import org.json.JSONException;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.pb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3769pb {
    public static final a d = new a(null);
    private static C3769pb e;
    private final C3936yb a;
    private final com.ironsource.mediationsdk.c b;
    private final Tb c;

    /* JADX INFO: renamed from: com.ironsource.pb$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3769pb a() {
            return C3769pb.e;
        }

        public final void a(C3769pb testInstance) {
            Intrinsics.checkNotNullParameter(testInstance, "testInstance");
            C3769pb.e = testInstance;
        }
    }

    static {
        C3936yb c3936yb = new C3936yb();
        com.ironsource.mediationsdk.c cVarC = com.ironsource.mediationsdk.c.c();
        Intrinsics.checkNotNullExpressionValue(cVarC, "getInstance(...)");
        e = new C3769pb(c3936yb, cVarC, new Tb(null, null, null, null, null, 31, null));
    }

    public C3769pb(C3936yb tools, com.ironsource.mediationsdk.c adapterRepository, Tb metaDataManager) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adapterRepository, "adapterRepository");
        Intrinsics.checkNotNullParameter(metaDataManager, "metaDataManager");
        this.a = tools;
        this.b = adapterRepository;
        this.c = metaDataManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3769pb c3769pb, Map map) throws JSONException {
        c3769pb.a.a((Map<String, Boolean>) map);
        c3769pb.b.a((Map<String, Boolean>) map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3769pb c3769pb, boolean z) throws JSONException {
        c3769pb.a.a(z);
        c3769pb.c.a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3769pb c3769pb, boolean z) throws JSONException {
        c3769pb.a.b(z);
        if (!c3769pb.a.a()) {
            c3769pb.c.b(z);
        } else {
            c3769pb.a.b();
            IronLog.API.error("LevelPlayPrivacySettings.setCOPPA() must be called before LevelPlay.init()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3769pb c3769pb, boolean z) throws JSONException {
        c3769pb.a.c(z);
        c3769pb.b.c(z);
    }

    public final void a(final Map<String, Boolean> networkConsents) {
        Intrinsics.checkNotNullParameter(networkConsents, "networkConsents");
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3769pb.a(this.f$0, networkConsents);
            }
        });
    }

    public final void a(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3769pb.a(this.f$0, z);
            }
        });
    }

    public final void b(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3769pb.b(this.f$0, z);
            }
        });
    }

    public final void c(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3769pb.c(this.f$0, z);
            }
        });
    }
}
