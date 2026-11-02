package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3690l4 {

    /* JADX INFO: renamed from: com.ironsource.l4$a */
    public static final class a implements InterfaceC3690l4 {
        private final boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // com.ironsource.InterfaceC3690l4
        public void a() {
            A8.a(C3700le.x, new C3879v8().a(G5.y, Boolean.valueOf(this.a)).a());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.l4$b */
    public static final class b implements InterfaceC3690l4 {
        private final boolean a;
        private final long b;
        private final InterfaceC3839t4 c;

        public b(boolean z, long j, InterfaceC3839t4 currentTimeProvider) {
            Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
            this.a = z;
            this.b = j;
            this.c = currentTimeProvider;
        }

        @Override // com.ironsource.InterfaceC3690l4
        public void a() {
            C3879v8 c3879v8A = new C3879v8().a(G5.y, Boolean.valueOf(this.a));
            if (this.b > 0) {
                c3879v8A.a(G5.B, Long.valueOf(this.c.a() - this.b));
            }
            A8.a(C3700le.w, c3879v8A.a());
        }

        public final InterfaceC3839t4 b() {
            return this.c;
        }
    }

    void a();
}
