package com.unity3d.ads;

import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: BannerAd.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.BannerAd$1$1", f = "BannerAd.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
final class BannerAd$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BannerAd this$0;

    /* JADX INFO: renamed from: com.unity3d.ads.BannerAd$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: BannerAd.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass2<T> implements FlowCollector {
        final /* synthetic */ BannerAd this$0;

        AnonymousClass2(BannerAd bannerAd) {
            this.this$0 = bannerAd;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit emit$lambda$0(BannerAd bannerAd) {
            AdExpiredListener<BannerAd> onAdExpired = bannerAd.getOnAdExpired();
            if (onAdExpired != null) {
                onAdExpired.onAdExpired(bannerAd);
            }
            return Unit.INSTANCE;
        }

        public final Object emit(AdObjectState adObjectState, Continuation<? super Unit> continuation) {
            SafeCallbackInvoke safeCallbackInvoke = this.this$0.safeCallbackInvoke;
            final BannerAd bannerAd = this.this$0;
            safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.BannerAd$1$1$2$$ExternalSyntheticLambda0
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BannerAd$1$1.AnonymousClass2.emit$lambda$0(bannerAd);
                }
            });
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((AdObjectState) obj, (Continuation<? super Unit>) continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BannerAd$1$1(BannerAd bannerAd, Continuation<? super BannerAd$1$1> continuation) {
        super(2, continuation);
        this.this$0 = bannerAd;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BannerAd$1$1(this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BannerAd$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final MutableStateFlow<AdObjectState> state = this.this$0.adObject.getState();
            final AdObjectState adObjectState = AdObjectState.EXPIRED;
            this.label = 1;
            if (FlowKt.take(new Flow<AdObjectState>() { // from class: com.unity3d.ads.BannerAd$1$1$invokeSuspend$$inlined$filter$1

                /* JADX INFO: renamed from: com.unity3d.ads.BannerAd$1$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ AdObjectState receiver$inlined;

                    /* JADX INFO: renamed from: com.unity3d.ads.BannerAd$1$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                    @DebugMetadata(c = "com.unity3d.ads.BannerAd$1$1$invokeSuspend$$inlined$filter$1$2", f = "BannerAd.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, AdObjectState adObjectState) {
                        this.$this_unsafeFlow = flowCollector;
                        this.receiver$inlined = adObjectState;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label -= Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = anonymousClass1.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            if (this.receiver$inlined.equals(obj)) {
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super AdObjectState> flowCollector, Continuation continuation) {
                    Object objCollect = state.collect(new AnonymousClass2(flowCollector, adObjectState), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            }, 1).collect(new AnonymousClass2(this.this$0), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
