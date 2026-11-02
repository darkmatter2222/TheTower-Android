package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface Yg {

    public static final class a {
        public static final C0101a a = new C0101a(null);

        /* JADX INFO: renamed from: com.ironsource.Yg$a$a, reason: collision with other inner class name */
        public static final class C0101a {
            private C0101a() {
            }

            public /* synthetic */ C0101a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Yg a(boolean z, Rg waterfallOperations) {
                Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
                return z ? new Wg(waterfallOperations) : new Vg(waterfallOperations);
            }
        }
    }

    void a();

    void a(A a2);

    Pd b();

    default A c() {
        return null;
    }
}
