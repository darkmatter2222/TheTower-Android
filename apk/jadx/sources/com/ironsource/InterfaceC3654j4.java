package com.ironsource;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3654j4 {
    public static final c a = c.a;

    /* JADX INFO: renamed from: com.ironsource.j4$a */
    public static final class a implements InterfaceC3654j4 {
        private final Z6 b;
        private final InterfaceC3648ig c;
        private final AtomicBoolean d;

        /* JADX INFO: renamed from: com.ironsource.j4$a$a, reason: collision with other inner class name */
        public static final class C1108a implements InterfaceC3648ig.a {
            final /* synthetic */ d a;
            final /* synthetic */ a b;

            C1108a(d dVar, a aVar) {
                this.a = dVar;
                this.b = aVar;
            }

            @Override // com.ironsource.InterfaceC3648ig.a
            public void a() {
                this.a.a(new InterfaceC3549d7.a(new InterfaceC3452a7.a(this.b.b.b())));
                this.b.d.set(false);
            }
        }

        public a(Z6 config, InterfaceC3648ig timer) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.b = config;
            this.c = timer;
            this.d = new AtomicBoolean(false);
        }

        @Override // com.ironsource.InterfaceC3654j4
        public synchronized void a() {
            this.c.cancel();
            this.d.set(false);
        }

        @Override // com.ironsource.InterfaceC3654j4
        public synchronized void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (this.d.compareAndSet(false, true)) {
                this.c.a(new C1108a(callback, this));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.j4$b */
    public static final class b implements InterfaceC3654j4 {
        public static final b b = new b();

        private b() {
        }

        @Override // com.ironsource.InterfaceC3654j4
        public void a() {
        }

        @Override // com.ironsource.InterfaceC3654j4
        public void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.j4$c */
    public static final class c {
        static final /* synthetic */ c a = new c();

        private c() {
        }

        public final InterfaceC3654j4 a() {
            return b.b;
        }

        @JvmStatic
        public final InterfaceC3654j4 a(C3513b7 featureFlag) {
            Intrinsics.checkNotNullParameter(featureFlag, "featureFlag");
            if (!featureFlag.b()) {
                return b.b;
            }
            Y6 y6 = new Y6(featureFlag);
            InterfaceC3648ig.b bVar = new InterfaceC3648ig.b();
            bVar.b(y6.a());
            bVar.a(y6.a());
            return new a(y6, new InterfaceC3648ig.d().a(bVar));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.j4$d */
    public interface d {
        void a(InterfaceC3549d7 interfaceC3549d7);
    }

    @JvmStatic
    static InterfaceC3654j4 a(C3513b7 c3513b7) {
        return a.a(c3513b7);
    }

    void a();

    void a(d dVar);
}
