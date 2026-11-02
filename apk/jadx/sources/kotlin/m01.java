package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m01 extends i01 {
    public final String c;
    public final kk1 d;

    public /* synthetic */ m01(String str) {
        this(str, kk1.INTERNAL_ERROR);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m01(String message, kk1 internalErrorCode) {
        super(internalErrorCode, 0);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(internalErrorCode, "internalErrorCode");
        this.c = message;
        this.d = internalErrorCode;
    }

    @Override // kotlin.i01
    public final kk1 a() {
        return this.d;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m01)) {
            return false;
        }
        m01 m01Var = (m01) obj;
        return Intrinsics.areEqual(this.c, m01Var.c) && this.d == m01Var.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + (this.c.hashCode() * 31);
    }

    public final String toString() {
        return "MessageError(message=" + this.c + ", internalErrorCode=" + this.d + ")";
    }
}
