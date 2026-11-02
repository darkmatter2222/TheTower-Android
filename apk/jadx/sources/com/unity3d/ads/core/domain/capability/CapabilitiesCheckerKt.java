package com.unity3d.ads.core.domain.capability;

import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CapabilitiesChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"isClassResolvable", "", "className", "", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CapabilitiesCheckerKt {
    public static final boolean isClassResolvable(String className) {
        Object objM3022constructorimpl;
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(Class.forName(className, false, CapabilitiesChecker.class.getClassLoader()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m3029isSuccessimpl(objM3022constructorimpl);
    }
}
