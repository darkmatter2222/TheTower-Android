package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.pc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3774pc {
    public static final a e = new a(null);
    private static volatile C3774pc f;
    private Nd a;
    private final AtomicBoolean b;
    private String c;
    private S3 d;

    /* JADX INFO: renamed from: com.ironsource.pc$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final InterfaceC3562e1 a(IronSource.a adFormat) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            C3774pc c3774pc = C3774pc.f;
            S3 s3B = c3774pc != null ? c3774pc.b() : null;
            C3774pc c3774pc2 = C3774pc.f;
            Nd ndE = c3774pc2 != null ? c3774pc2.e() : null;
            return (s3B == null || ndE == null) ? new C3727n5() : new C3783q3(s3B, ndE, adFormat);
        }

        @JvmStatic
        public final C3774pc a() {
            C3774pc c3774pc;
            C3774pc c3774pc2 = C3774pc.f;
            if (c3774pc2 != null) {
                return c3774pc2;
            }
            synchronized (this) {
                c3774pc = C3774pc.f;
                if (c3774pc == null) {
                    c3774pc = new C3774pc(null);
                    a aVar = C3774pc.e;
                    C3774pc.f = c3774pc;
                }
            }
            return c3774pc;
        }
    }

    private C3774pc() {
        this.b = new AtomicBoolean(false);
        this.c = "";
    }

    public /* synthetic */ C3774pc(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final C3774pc d() {
        return e.a();
    }

    public final void a(Nd nd) {
        this.a = nd;
    }

    public final void a(S3 s3) {
        this.d = s3;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.c = str;
    }

    public final S3 b() {
        return this.d;
    }

    public final AtomicBoolean c() {
        return this.b;
    }

    public final Nd e() {
        return this.a;
    }

    public final String f() {
        return this.c;
    }

    public final void g() {
        this.b.set(true);
    }
}
