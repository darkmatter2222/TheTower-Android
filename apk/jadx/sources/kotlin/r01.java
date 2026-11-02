package kotlin;

import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r01 extends i01 {
    public final String c;
    public final Throwable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r01(String message, Throwable th) {
        super(kk1.TIMEOUT, 0);
        Intrinsics.checkNotNullParameter(message, "message");
        this.c = message;
        this.d = th;
    }

    public /* synthetic */ r01(TimeoutCancellationException timeoutCancellationException, int i) {
        this(ir0.d.d(), (i & 2) != 0 ? null : timeoutCancellationException);
    }

    @Override // kotlin.i01
    public final Throwable b() {
        return this.d;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r01)) {
            return false;
        }
        r01 r01Var = (r01) obj;
        return Intrinsics.areEqual(this.c, r01Var.c) && Intrinsics.areEqual(this.d, r01Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.c.hashCode() * 31;
        Throwable th = this.d;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    public final String toString() {
        return "TimeoutError(message=" + this.c + ", exception=" + this.d + ")";
    }
}
