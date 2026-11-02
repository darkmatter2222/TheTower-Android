package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CleanUpWhenOpportunityExpires.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1", f = "CleanUpWhenOpportunityExpires.kt", i = {}, l = {37, 38, 43}, m = "invokeSuspend", n = {}, s = {})
final class CleanUpWhenOpportunityExpires$invoke$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AdObject $adObject;
    int label;
    final /* synthetic */ CleanUpWhenOpportunityExpires this$0;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: CleanUpWhenOpportunityExpires.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1", f = "CleanUpWhenOpportunityExpires.kt", i = {}, l = {45, 46}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CleanUpWhenOpportunityExpires this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AdObject adObject, CleanUpWhenOpportunityExpires cleanUpWhenOpportunityExpires, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$adObject = adObject;
            this.this$0 = cleanUpWhenOpportunityExpires;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$adObject, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        
            if (r6.destroy(r5) == r0) goto L23;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r6)
                goto L71
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L49
                goto L43
            L1e:
                p005kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.L$0
                kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
                com.unity3d.ads.core.data.model.AdObject r6 = r5.$adObject
                kotlinx.coroutines.flow.MutableStateFlow r6 = r6.getState()
                com.unity3d.ads.core.data.model.AdObjectState r1 = com.unity3d.ads.core.data.model.AdObjectState.EXPIRED
                r6.setValue(r1)
                com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires r6 = r5.this$0
                com.unity3d.ads.core.data.model.AdObject r1 = r5.$adObject
                kotlin.Result$Companion r4 = p005kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L49
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r6 = com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires.access$getPreShowStrategy$p(r6)     // Catch: java.lang.Throwable -> L49
                r5.label = r3     // Catch: java.lang.Throwable -> L49
                java.lang.Object r6 = r6.onAdExpired(r1, r5)     // Catch: java.lang.Throwable -> L49
                if (r6 != r0) goto L43
                goto L66
            L43:
                kotlin.Unit r6 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L49
                p005kotlin.Result.m3022constructorimpl(r6)     // Catch: java.lang.Throwable -> L49
                goto L53
            L49:
                r6 = move-exception
                kotlin.Result$Companion r1 = p005kotlin.Result.INSTANCE
                java.lang.Object r6 = p005kotlin.ResultKt.createFailure(r6)
                p005kotlin.Result.m3022constructorimpl(r6)
            L53:
                com.unity3d.ads.core.data.model.AdObject r6 = r5.$adObject
                com.unity3d.ads.adplayer.AdPlayer r6 = r6.getAdPlayer()
                if (r6 == 0) goto L67
                r1 = r5
                kotlin.coroutines.Continuation r1 = (p005kotlin.coroutines.Continuation) r1
                r5.label = r2
                java.lang.Object r6 = r6.destroy(r1)
                if (r6 != r0) goto L71
            L66:
                return r0
            L67:
                com.unity3d.ads.core.data.model.AdObject r6 = r5.$adObject
                kotlinx.coroutines.CoroutineScope r6 = r6.getAdScope()
                r0 = 0
                kotlinx.coroutines.CoroutineScopeKt.cancel$default(r6, r0, r3, r0)
            L71:
                kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CleanUpWhenOpportunityExpires$invoke$job$1(AdObject adObject, CleanUpWhenOpportunityExpires cleanUpWhenOpportunityExpires, Continuation<? super CleanUpWhenOpportunityExpires$invoke$job$1> continuation) {
        super(2, continuation);
        this.$adObject = adObject;
        this.this$0 = cleanUpWhenOpportunityExpires;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CleanUpWhenOpportunityExpires$invoke$job$1(this.$adObject, this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CleanUpWhenOpportunityExpires$invoke$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    /* JADX WARN: Code duplicated, block: B:24:0x0071  */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        if (r7 == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008a, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.NonCancellable.INSTANCE, new com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1.AnonymousClass1(r6.$adObject, r6.this$0, null), r6) == r0) goto L26;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L26
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L8d
        L16:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L63
        L22:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L26:
            p005kotlin.ResultKt.throwOnFailure(r7)
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kotlinx.coroutines.flow.MutableStateFlow r7 = r7.getTtl()
            java.lang.Object r7 = r7.getValue()
            kotlin.time.Duration r7 = (p005kotlin.time.Duration) r7
            if (r7 == 0) goto L3c
        L37:
            long r4 = r7.getRawValue()
            goto L57
        L3c:
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kotlinx.coroutines.flow.MutableStateFlow r7 = r7.getTtl()
            kotlinx.coroutines.flow.Flow r7 = (kotlinx.coroutines.flow.Flow) r7
            kotlinx.coroutines.flow.Flow r7 = kotlinx.coroutines.flow.FlowKt.filterNotNull(r7)
            r1 = r6
            kotlin.coroutines.Continuation r1 = (p005kotlin.coroutines.Continuation) r1
            r6.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1)
            if (r7 != r0) goto L54
            goto L8c
        L54:
            kotlin.time.Duration r7 = (p005kotlin.time.Duration) r7
            goto L37
        L57:
            r7 = r6
            kotlin.coroutines.Continuation r7 = (p005kotlin.coroutines.Continuation) r7
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r4, r7)
            if (r7 != r0) goto L63
            goto L8c
        L63:
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kotlinx.coroutines.flow.MutableStateFlow r7 = r7.getState()
            java.lang.Object r7 = r7.getValue()
            com.unity3d.ads.core.data.model.AdObjectState r1 = com.unity3d.ads.core.data.model.AdObjectState.SHOWING
            if (r7 == r1) goto L8d
            kotlinx.coroutines.NonCancellable r7 = kotlinx.coroutines.NonCancellable.INSTANCE
            kotlin.coroutines.CoroutineContext r7 = (p005kotlin.coroutines.CoroutineContext) r7
            com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1 r1 = new com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1
            com.unity3d.ads.core.data.model.AdObject r3 = r6.$adObject
            com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires r4 = r6.this$0
            r5 = 0
            r1.<init>(r3, r4, r5)
            kotlin.jvm.functions.Function2 r1 = (p005kotlin.jvm.functions.Function2) r1
            r3 = r6
            kotlin.coroutines.Continuation r3 = (p005kotlin.coroutines.Continuation) r3
            r6.label = r2
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r1, r3)
            if (r7 != r0) goto L8d
        L8c:
            return r0
        L8d:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
