package com.unity3d.mediation;

import com.ironsource.C3829se;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class LevelPlayInitError {
    private final int a;
    private final String b;

    public LevelPlayInitError(int i, String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a = i;
        this.b = errorMessage;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayInitError(C3829se sdkError) {
        this(sdkError.c(), sdkError.d());
        Intrinsics.checkNotNullParameter(sdkError, "sdkError");
    }

    public final int getErrorCode() {
        return this.a;
    }

    public final String getErrorMessage() {
        return this.b;
    }

    public String toString() {
        return "LevelPlayError(errorCode=" + this.a + ", errorMessage='" + this.b + "')";
    }
}
