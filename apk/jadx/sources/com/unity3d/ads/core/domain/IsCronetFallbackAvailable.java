package com.unity3d.ads.core.domain;

import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IsCronetFallbackAvailable.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;", "", "className", "", "<init>", "(Ljava/lang/String;)V", "invoke", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IsCronetFallbackAvailable {
    public static final String FALLBACK_PROVIDER_CLASS = "org.chromium.net.impl.JavaCronetProvider";
    private final String className;

    /* JADX WARN: Multi-variable type inference failed */
    public IsCronetFallbackAvailable() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public IsCronetFallbackAvailable(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        this.className = className;
    }

    public /* synthetic */ IsCronetFallbackAvailable(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? FALLBACK_PROVIDER_CLASS : str);
    }

    public final boolean invoke() {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            IsCronetFallbackAvailable isCronetFallbackAvailable = this;
            objM3022constructorimpl = Result.m3022constructorimpl(Class.forName(this.className));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m3029isSuccessimpl(objM3022constructorimpl);
    }
}
