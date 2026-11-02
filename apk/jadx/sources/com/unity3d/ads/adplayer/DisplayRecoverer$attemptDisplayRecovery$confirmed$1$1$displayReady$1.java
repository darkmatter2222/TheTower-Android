package com.unity3d.ads.adplayer;

import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1", f = "DisplayRecoverer.kt", i = {}, l = {178}, m = "invokeSuspend", n = {}, s = {})
final class DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DisplayMessage>, Object> {
    final /* synthetic */ CompletableDeferred<Unit> $listenerStarted;
    int label;
    final /* synthetic */ DisplayRecoverer this$0;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/adplayer/DisplayMessage;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$1", f = "DisplayRecoverer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super DisplayMessage>, Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<Unit> $listenerStarted;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CompletableDeferred<Unit> completableDeferred, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$listenerStarted = completableDeferred;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$listenerStarted, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super DisplayMessage> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$listenerStarted.complete(Unit.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/adplayer/DisplayMessage;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2", f = "DisplayRecoverer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<DisplayMessage, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DisplayRecoverer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DisplayRecoverer displayRecoverer, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = displayRecoverer;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(DisplayMessage displayMessage, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(displayMessage, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            DisplayMessage displayMessage = (DisplayMessage) this.L$0;
            return Boxing.boxBoolean((displayMessage instanceof DisplayMessage.DisplayReady) && Intrinsics.areEqual(displayMessage.getOpportunityId(), this.this$0.opportunityId));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1(CompletableDeferred<Unit> completableDeferred, DisplayRecoverer displayRecoverer, Continuation<? super DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1> continuation) {
        super(2, continuation);
        this.$listenerStarted = completableDeferred;
        this.this$0 = displayRecoverer;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1(this.$listenerStarted, this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DisplayMessage> continuation) {
        return ((DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objFirst = FlowKt.first(FlowKt.onSubscription(AndroidFullscreenWebViewAdPlayer.INSTANCE.getDisplayMessages(), new AnonymousClass1(this.$listenerStarted, null)), new AnonymousClass2(this.this$0, null), this);
        return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
    }
}
