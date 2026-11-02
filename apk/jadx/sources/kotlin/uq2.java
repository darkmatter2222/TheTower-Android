package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uq2 {
    public final String a;
    public final j53 b;
    public final xq2 c;

    public uq2(String preloadId, j53 requestType, xq2 callbackType) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
        this.a = preloadId;
        this.b = requestType;
        this.c = callbackType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq2)) {
            return false;
        }
        uq2 uq2Var = (uq2) obj;
        return Intrinsics.areEqual(this.a, uq2Var.a) && this.b == uq2Var.b && this.c == uq2Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PreloadCallbackScope(preloadId=" + this.a + ", requestType=" + this.b + ", callbackType=" + this.c + ")";
    }
}
