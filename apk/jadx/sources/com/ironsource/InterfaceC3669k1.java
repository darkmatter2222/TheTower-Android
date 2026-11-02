package com.ironsource;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3669k1 {

    /* JADX INFO: renamed from: com.ironsource.k1$a */
    public static final class a {
        public static final C1111a a = new C1111a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$a$a, reason: collision with other inner class name */
        public static final class C1111a {
            private C1111a() {
            }

            public /* synthetic */ C1111a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            public final InterfaceC3669k1 a() {
                return new b(b.f, new ArrayList());
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.j errorCode, C3723n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(403, CollectionsKt.mutableListOf(errorCode, errorReason));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(boolean z) {
                return z ? new b(b.j, new ArrayList()) : new b(b.k, new ArrayList());
            }

            @JvmStatic
            public final InterfaceC3669k1 a(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.g, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 b(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.d, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 c(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.i, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 d(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(401, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 e(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.h, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 f(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(b.e, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$a$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 401;
            public static final int c = 403;
            public static final int d = 404;
            public static final int e = 405;
            public static final int f = 406;
            public static final int g = 407;
            public static final int h = 408;
            public static final int i = 409;
            public static final int j = 410;
            public static final int k = 411;

            private b() {
            }
        }

        @JvmStatic
        public static final InterfaceC3669k1 a() {
            return a.a();
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.j jVar, C3723n1.k kVar) {
            return a.a(jVar, kVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(boolean z) {
            return a.a(z);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.a(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 b(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.b(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 c(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.c(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 d(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.d(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 e(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.e(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 f(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.f(interfaceC3741o1Arr);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$b */
    public static final class b implements InterfaceC3669k1 {
        private final int a;
        private final List<InterfaceC3741o1> b;

        public b(int i, List<InterfaceC3741o1> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "arrayList");
            this.a = i;
            this.b = arrayList;
        }

        @Override // com.ironsource.InterfaceC3669k1
        public void a(InterfaceC3798r1 analytics) {
            Intrinsics.checkNotNullParameter(analytics, "analytics");
            analytics.a(this.a, this.b);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$c */
    public static final class c {
        public static final a a = new a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$c$a */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            public final InterfaceC3669k1 a() {
                return new b(201, new ArrayList());
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.j errorCode, C3723n1.k errorReason, C3723n1.f duration) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(203, CollectionsKt.mutableListOf(errorCode, errorReason, duration));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.l ext1) {
                Intrinsics.checkNotNullParameter(ext1, "ext1");
                return new b(b.h, CollectionsKt.mutableListOf(ext1));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(InterfaceC3741o1 duration) {
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(202, CollectionsKt.mutableListOf(duration));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(204, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 b() {
                return new b(b.g, new ArrayList());
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$c$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 201;
            public static final int c = 202;
            public static final int d = 203;
            public static final int e = 204;
            public static final int f = 205;
            public static final int g = 206;
            public static final int h = 207;

            private b() {
            }
        }

        @JvmStatic
        public static final InterfaceC3669k1 a() {
            return a.a();
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.j jVar, C3723n1.k kVar, C3723n1.f fVar) {
            return a.a(jVar, kVar, fVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.l lVar) {
            return a.a(lVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(InterfaceC3741o1 interfaceC3741o1) {
            return a.a(interfaceC3741o1);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.a(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 b() {
            return a.b();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.k1$d */
    public static final class d {
        public static final a a = new a(null);

        /* JADX INFO: renamed from: com.ironsource.k1$d$a */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            public final InterfaceC3669k1 a() {
                return new b(101, new ArrayList());
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.f duration) {
                Intrinsics.checkNotNullParameter(duration, "duration");
                return new b(103, CollectionsKt.mutableListOf(duration));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.j errorCode, C3723n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(109, CollectionsKt.mutableListOf(errorCode, errorReason));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.j errorCode, C3723n1.k errorReason, C3723n1.f duration, C3723n1.l loaderState) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                Intrinsics.checkNotNullParameter(duration, "duration");
                Intrinsics.checkNotNullParameter(loaderState, "loaderState");
                return new b(104, CollectionsKt.mutableListOf(errorCode, errorReason, duration, loaderState));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(C3723n1.k errorReason) {
                Intrinsics.checkNotNullParameter(errorReason, "errorReason");
                return new b(b.k, CollectionsKt.mutableListOf(errorReason));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(InterfaceC3741o1 ext1) {
                Intrinsics.checkNotNullParameter(ext1, "ext1");
                return new b(111, CollectionsKt.mutableListOf(ext1));
            }

            @JvmStatic
            public final InterfaceC3669k1 a(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(102, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final InterfaceC3669k1 b() {
                return new b(b.j, new ArrayList());
            }

            @JvmStatic
            public final InterfaceC3669k1 b(InterfaceC3741o1... entity) {
                Intrinsics.checkNotNullParameter(entity, "entity");
                return new b(110, CollectionsKt.mutableListOf(Arrays.copyOf(entity, entity.length)));
            }

            @JvmStatic
            public final b c() {
                return new b(105, new ArrayList());
            }
        }

        /* JADX INFO: renamed from: com.ironsource.k1$d$b */
        public static final class b {
            public static final b a = new b();
            public static final int b = 101;
            public static final int c = 102;
            public static final int d = 103;
            public static final int e = 104;
            public static final int f = 105;
            public static final int g = 109;
            public static final int h = 110;
            public static final int i = 111;
            public static final int j = 112;
            public static final int k = 113;

            private b() {
            }
        }

        @JvmStatic
        public static final InterfaceC3669k1 a() {
            return a.a();
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.f fVar) {
            return a.a(fVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.j jVar, C3723n1.k kVar) {
            return a.a(jVar, kVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.j jVar, C3723n1.k kVar, C3723n1.f fVar, C3723n1.l lVar) {
            return a.a(jVar, kVar, fVar, lVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(C3723n1.k kVar) {
            return a.a(kVar);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(InterfaceC3741o1 interfaceC3741o1) {
            return a.a(interfaceC3741o1);
        }

        @JvmStatic
        public static final InterfaceC3669k1 a(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.a(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final InterfaceC3669k1 b() {
            return a.b();
        }

        @JvmStatic
        public static final InterfaceC3669k1 b(InterfaceC3741o1... interfaceC3741o1Arr) {
            return a.b(interfaceC3741o1Arr);
        }

        @JvmStatic
        public static final b c() {
            return a.c();
        }
    }

    void a(InterfaceC3798r1 interfaceC3798r1);
}
