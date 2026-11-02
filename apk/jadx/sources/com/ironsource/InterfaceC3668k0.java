package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3668k0 {

    /* JADX INFO: renamed from: com.ironsource.k0$a */
    public static final class a implements InterfaceC3668k0 {
        public static final C1110a c = new C1110a(null);
        private final String a;
        private final boolean b;

        /* JADX INFO: renamed from: com.ironsource.k0$a$a, reason: collision with other inner class name */
        public static final class C1110a {
            private C1110a() {
            }

            public /* synthetic */ C1110a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(String str) {
                return new a(str);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public a(String str) {
            this.a = str;
        }

        public /* synthetic */ a(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str);
        }

        public static /* synthetic */ a a(a aVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = aVar.a;
            }
            return aVar.a(str);
        }

        public final a a(String str) {
            return new a(str);
        }

        @Override // com.ironsource.InterfaceC3668k0
        public boolean a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
        }

        public int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "NotReady(reason=" + this.a + ")";
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k0$b */
    public static final class b implements InterfaceC3668k0 {
        public static final b a = new b();
        private static final boolean b = true;

        private b() {
        }

        @Override // com.ironsource.InterfaceC3668k0
        public boolean a() {
            return b;
        }
    }

    boolean a();
}
