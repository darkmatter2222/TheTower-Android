package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Objects;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3587f8 extends Throwable {
    private final IronSourceError a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3587f8(IronSourceError error) {
        super(error.getErrorMessage());
        Intrinsics.checkNotNullParameter(error, "error");
        this.a = error;
    }

    public final IronSourceError a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(C3587f8.class, obj.getClass())) {
            return false;
        }
        C3587f8 c3587f8 = (C3587f8) obj;
        if (this.a.getErrorCode() != c3587f8.a.getErrorCode()) {
            return false;
        }
        return Intrinsics.areEqual(this.a.getErrorMessage(), c3587f8.a.getErrorMessage());
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.a.getErrorCode()), this.a.getErrorMessage());
    }
}
