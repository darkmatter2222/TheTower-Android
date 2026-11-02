package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.wf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3904wf implements InterfaceC3842t7, InterfaceC3842t7.a {
    private final InterfaceC3839t4 a;
    private final U8 b;
    private final Map<String, C3850tf> c;

    /* JADX INFO: renamed from: com.ironsource.wf$a */
    public static final class a {
        private int a;
        private long b;
        private Long c;

        public a(int i, long j, Long l) {
            this.a = i;
            this.b = j;
            this.c = l;
        }

        public static /* synthetic */ a a(a aVar, int i, long j, Long l, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = aVar.a;
            }
            if ((i2 & 2) != 0) {
                j = aVar.b;
            }
            if ((i2 & 4) != 0) {
                l = aVar.c;
            }
            return aVar.a(i, j, l);
        }

        public final int a() {
            return this.a;
        }

        public final a a(int i, long j, Long l) {
            return new a(i, j, l);
        }

        public final void a(int i) {
            this.a = i;
        }

        public final void a(long j) {
            this.b = j;
        }

        public final void a(Long l) {
            this.c = l;
        }

        public final long b() {
            return this.b;
        }

        public final Long c() {
            return this.c;
        }

        public final int d() {
            return this.a;
        }

        public final long e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && Intrinsics.areEqual(this.c, aVar.c);
        }

        public final Long f() {
            return this.c;
        }

        public int hashCode() {
            int iHashCode = ((Integer.hashCode(this.a) * 31) + Long.hashCode(this.b)) * 31;
            Long l = this.c;
            return iHashCode + (l == null ? 0 : l.hashCode());
        }

        public String toString() {
            return "ShowCountCappingInfo(currentNumberOfShows=" + this.a + ", currentTime=" + this.b + ", currentTimeThreshold=" + this.c + ")";
        }
    }

    public C3904wf(InterfaceC3839t4 currentTimeProvider, U8 serviceDataRepository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(serviceDataRepository, "serviceDataRepository");
        this.a = currentTimeProvider;
        this.b = serviceDataRepository;
        this.c = new LinkedHashMap();
    }

    private final boolean a(C3850tf c3850tf, String str) {
        a aVarC = c(str);
        Long lF = aVarC.f();
        if (lF != null) {
            long jLongValue = lF.longValue();
            if (aVarC.d() >= c3850tf.a() && this.a.a() < jLongValue) {
                return true;
            }
        }
        return false;
    }

    private final a c(String str) {
        return new a(this.b.a(str), this.a.a(), this.b.b(str));
    }

    @Override // com.ironsource.InterfaceC3842t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        C3850tf c3850tf = this.c.get(identifier);
        if (c3850tf != null && a(c3850tf, identifier)) {
            return new L3(true, N3.ShowCount);
        }
        return new L3(false, null, 2, null);
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3804r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objC = cappingConfig.c();
        if (Result.m3029isSuccessimpl(objC)) {
            C3850tf c3850tf = (C3850tf) objC;
            if (c3850tf != null) {
                this.c.put(identifier, c3850tf);
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(Unit.INSTANCE);
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objC);
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3022constructorimpl(Unit.INSTANCE);
    }

    public final Map<String, C3850tf> a() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0030  */
    @Override // com.ironsource.InterfaceC3842t7.a
    public void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        C3850tf c3850tf = this.c.get(identifier);
        if (c3850tf == null) {
            return;
        }
        a aVarC = c(identifier);
        if (aVarC.d() != 0) {
            long jE = aVarC.e();
            Long lF = aVarC.f();
            if (jE >= (lF != null ? lF.longValue() : 0L)) {
                this.b.a(aVarC.e() + M3.a(c3850tf.b(), null, 1, null), identifier);
                aVarC.a(0);
            }
        } else {
            this.b.a(aVarC.e() + M3.a(c3850tf.b(), null, 1, null), identifier);
            aVarC.a(0);
        }
        aVarC.a(aVarC.d() + 1);
        this.b.a(aVarC.d(), identifier);
    }
}
