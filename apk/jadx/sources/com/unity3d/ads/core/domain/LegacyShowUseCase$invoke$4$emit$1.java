package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.ShowEvent;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: LegacyShowUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4", f = "LegacyShowUseCase.kt", i = {0, 1}, l = {229, 254, 259, 268}, m = "emit", n = {"isFirstStartedInOnDisplayMode", "it"}, s = {"I$0", "L$0"})
final class LegacyShowUseCase$invoke$4$emit$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LegacyShowUseCase.AnonymousClass4<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LegacyShowUseCase$invoke$4$emit$1(LegacyShowUseCase.AnonymousClass4<? super T> anonymousClass4, Continuation<? super LegacyShowUseCase$invoke$4$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass4;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((ShowEvent) null, (Continuation<? super Unit>) this);
    }
}
