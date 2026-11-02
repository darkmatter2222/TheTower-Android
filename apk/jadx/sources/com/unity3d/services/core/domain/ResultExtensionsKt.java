package com.unity3d.services.core.domain;

import com.unity3d.ads.core.data.model.exception.InitializationException;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a(\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u000e\b\u0000\u0010\u0001\u0018\u0001*\u00060\u0002j\u0002`\u0003*\u0006\u0012\u0002\b\u00030\u0004H\u0086\b¢\u0006\u0002\u0010\u0005\u001a&\u0010\u0006\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001\u0018\u0001*\u00060\u0002j\u0002`\u0003*\u0006\u0012\u0002\b\u00030\u0004H\u0086\b¢\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b*\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u00020\b*\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\t¨\u0006\u000b"}, d2 = {"getCustomExceptionOrNull", "E", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Exception;", "getCustomExceptionOrThrow", "getInitializationExceptionOrNull", "Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "(Ljava/lang/Object;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "getInitializationExceptionOrThrow", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ResultExtensionsKt {
    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrNull(Object obj) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        Intrinsics.reifiedOperationMarker(3, "E");
        if (thM3025exceptionOrNullimpl instanceof Exception) {
            return (E) thM3025exceptionOrNullimpl;
        }
        return null;
    }

    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrThrow(Object obj) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        Intrinsics.reifiedOperationMarker(3, "E");
        if (thM3025exceptionOrNullimpl instanceof Exception) {
            return (E) thM3025exceptionOrNullimpl;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }

    public static final InitializationException getInitializationExceptionOrNull(Object obj) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        if (thM3025exceptionOrNullimpl instanceof InitializationException) {
            return (InitializationException) thM3025exceptionOrNullimpl;
        }
        return null;
    }

    public static final InitializationException getInitializationExceptionOrThrow(Object obj) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        if (thM3025exceptionOrNullimpl instanceof InitializationException) {
            return (InitializationException) thM3025exceptionOrNullimpl;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }
}
