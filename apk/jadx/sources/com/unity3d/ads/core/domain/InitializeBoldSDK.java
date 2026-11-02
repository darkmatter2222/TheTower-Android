package com.unity3d.ads.core.domain;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.time.TimeMark;

/* JADX INFO: compiled from: InitializeBoldSDK.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H¦B¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "", "invoke", "", "source", "", "publicApiEntry", "Lkotlin/time/TimeMark;", "(Ljava/lang/String;Lkotlin/time/TimeMark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface InitializeBoldSDK {

    /* JADX INFO: compiled from: InitializeBoldSDK.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(InitializeBoldSDK initializeBoldSDK, String str, TimeMark timeMark, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i & 2) != 0) {
                timeMark = null;
            }
            return initializeBoldSDK.invoke(str, timeMark, continuation);
        }
    }

    Object invoke(String str, TimeMark timeMark, Continuation<? super Unit> continuation);
}
