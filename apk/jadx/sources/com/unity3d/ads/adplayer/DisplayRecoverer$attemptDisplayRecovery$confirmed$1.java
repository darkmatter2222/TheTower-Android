package com.unity3d.ads.adplayer;

import android.app.Activity;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1", f = "DisplayRecoverer.kt", i = {}, l = {173}, m = "invokeSuspend", n = {}, s = {})
final class DisplayRecoverer$attemptDisplayRecovery$confirmed$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DisplayMessage>, Object> {
    final /* synthetic */ Activity $foregrounded;
    int label;
    final /* synthetic */ DisplayRecoverer this$0;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1", f = "DisplayRecoverer.kt", i = {0}, l = {180, ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", n = {"displayReady"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DisplayMessage>, Object> {
        final /* synthetic */ Activity $foregrounded;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DisplayRecoverer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DisplayRecoverer displayRecoverer, Activity activity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = displayRecoverer;
            this.$foregrounded = activity;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$foregrounded, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DisplayMessage> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        
            if (r12 == r0) goto L19;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L23
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                p005kotlin.ResultKt.throwOnFailure(r12)
                goto L73
            L13:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1b:
                java.lang.Object r1 = r11.L$0
                kotlinx.coroutines.Deferred r1 = (kotlinx.coroutines.Deferred) r1
                p005kotlin.ResultKt.throwOnFailure(r12)
                goto L4f
            L23:
                p005kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.L$0
                r5 = r12
                kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
                kotlinx.coroutines.CompletableDeferred r12 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r3, r4)
                com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1 r1 = new com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1
                com.unity3d.ads.adplayer.DisplayRecoverer r6 = r11.this$0
                r1.<init>(r12, r6, r4)
                r8 = r1
                kotlin.jvm.functions.Function2 r8 = (p005kotlin.jvm.functions.Function2) r8
                r9 = 3
                r10 = 0
                r6 = 0
                r7 = 0
                kotlinx.coroutines.Deferred r1 = kotlinx.coroutines.BuildersKt.async$default(r5, r6, r7, r8, r9, r10)
                r5 = r11
                kotlin.coroutines.Continuation r5 = (p005kotlin.coroutines.Continuation) r5
                r11.L$0 = r1
                r11.label = r3
                java.lang.Object r12 = r12.await(r5)
                if (r12 != r0) goto L4f
                goto L72
            L4f:
                com.unity3d.ads.adplayer.DisplayRecoverer r12 = r11.this$0
                android.app.Activity r5 = r11.$foregrounded
                android.content.Context r5 = (android.content.Context) r5
                java.lang.Object r12 = com.unity3d.ads.adplayer.DisplayRecoverer.m2722access$launchDisplayIoAF18A(r12, r5)
                boolean r12 = p005kotlin.Result.m3028isFailureimpl(r12)
                if (r12 == 0) goto L65
                kotlinx.coroutines.Job r1 = (kotlinx.coroutines.Job) r1
                kotlinx.coroutines.Job.DefaultImpls.cancel$default(r1, r4, r3, r4)
                return r4
            L65:
                r12 = r11
                kotlin.coroutines.Continuation r12 = (p005kotlin.coroutines.Continuation) r12
                r11.L$0 = r4
                r11.label = r2
                java.lang.Object r12 = r1.await(r12)
                if (r12 != r0) goto L73
            L72:
                return r0
            L73:
                com.unity3d.ads.adplayer.DisplayMessage r12 = (com.unity3d.ads.adplayer.DisplayMessage) r12
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DisplayRecoverer$attemptDisplayRecovery$confirmed$1(DisplayRecoverer displayRecoverer, Activity activity, Continuation<? super DisplayRecoverer$attemptDisplayRecovery$confirmed$1> continuation) {
        super(2, continuation);
        this.this$0 = displayRecoverer;
        this.$foregrounded = activity;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DisplayRecoverer$attemptDisplayRecovery$confirmed$1(this.this$0, this.$foregrounded, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DisplayMessage> continuation) {
        return ((DisplayRecoverer$attemptDisplayRecovery$confirmed$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass1(this.this$0, this.$foregrounded, null), this);
        return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
    }
}
