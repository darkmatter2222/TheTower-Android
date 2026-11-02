package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ig, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3648ig {

    /* JADX INFO: renamed from: com.ironsource.ig$a */
    public interface a {
        void a();
    }

    /* JADX INFO: renamed from: com.ironsource.ig$b */
    public static final class b {
        private long a;
        private long b;

        public final long a() {
            return this.b;
        }

        public final void a(long j) {
            this.b = j;
        }

        public final long b() {
            return this.a;
        }

        public final void b(long j) {
            this.a = j;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.ig$c */
    public interface c {
        InterfaceC3648ig a(b bVar);
    }

    /* JADX INFO: renamed from: com.ironsource.ig$d */
    public static final class d implements c {
        @Override // com.ironsource.InterfaceC3648ig.c
        public InterfaceC3648ig a(b timerConfig) {
            Intrinsics.checkNotNullParameter(timerConfig, "timerConfig");
            return new e(new C3684kg(timerConfig.b()));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.ig$e */
    private static final class e implements InterfaceC3648ig {
        private final C3684kg a;

        /* JADX INFO: renamed from: com.ironsource.ig$e$a */
        public static final class a implements C3684kg.a {
            final /* synthetic */ a a;

            a(a aVar) {
                this.a = aVar;
            }

            @Override // com.ironsource.C3684kg.a
            public void a() {
                this.a.a();
            }
        }

        public e(C3684kg timer) {
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.a = timer;
        }

        @Override // com.ironsource.InterfaceC3648ig
        public void a(a callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.a.a((C3684kg.a) new a(callback));
        }

        @Override // com.ironsource.InterfaceC3648ig
        public void cancel() {
            this.a.e();
        }
    }

    void a(a aVar);

    void cancel();
}
