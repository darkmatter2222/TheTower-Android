package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class sz {
    public static final long j;
    public static final /* synthetic */ int k = 0;
    public final ja1 a;
    public final uq0 b;
    public final rz c;
    public final rz d;
    public final uq0 e;
    public final rz f;
    public final uq0 g;
    public final rz h;
    public final rz i;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        j = DurationKt.toDuration(10, DurationUnit.SECONDS);
    }

    public sz(ja1 initializationConfigWrapper) {
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.a = initializationConfigWrapper;
        pz pzVar = pz.a;
        int iMax = Math.max(2, Math.min(10, Runtime.getRuntime().availableProcessors()));
        long j2 = j;
        uq0 uq0VarA = pzVar.a(iMax, j2, "BG");
        this.b = uq0VarA;
        rz rzVarA = qz.a(uq0VarA.a());
        this.c = rzVarA;
        this.d = rzVarA;
        uq0 uq0VarA2 = pzVar.a(Math.max(2, Math.min(5, Runtime.getRuntime().availableProcessors())), j2, "Load");
        this.e = uq0VarA2;
        this.f = qz.a(uq0VarA2.a());
        uq0 uq0VarA3 = pzVar.a(Math.max(2, Math.min(5, Runtime.getRuntime().availableProcessors())), j2, "WebViewInit");
        this.g = uq0VarA3;
        rz rzVarA2 = qz.a(uq0VarA3.a());
        this.h = rzVarA2;
        this.i = rzVarA2;
    }

    public final rz a() {
        return this.d;
    }
}
