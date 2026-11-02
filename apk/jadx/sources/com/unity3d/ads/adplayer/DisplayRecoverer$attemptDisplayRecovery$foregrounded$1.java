package com.unity3d.ads.adplayer;

import android.app.Activity;
import com.unity3d.ads.core.data.repository.FocusState;
import java.lang.ref.WeakReference;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/app/Activity;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1", f = "DisplayRecoverer.kt", i = {}, l = {154}, m = "invokeSuspend", n = {}, s = {})
final class DisplayRecoverer$attemptDisplayRecovery$foregrounded$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Activity>, Object> {
    int label;
    final /* synthetic */ DisplayRecoverer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DisplayRecoverer$attemptDisplayRecovery$foregrounded$1(DisplayRecoverer displayRecoverer, Continuation<? super DisplayRecoverer$attemptDisplayRecovery$foregrounded$1> continuation) {
        super(2, continuation);
        this.this$0 = displayRecoverer;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DisplayRecoverer$attemptDisplayRecovery$foregrounded$1(this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Activity> continuation) {
        return ((DisplayRecoverer$attemptDisplayRecovery$foregrounded$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        final SharedFlow<FocusState> focusState = this.this$0.focusRepository.getFocusState();
        this.label = 1;
        Object objFirst = FlowKt.first(new Flow<Activity>() { // from class: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1

            /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "DisplayRecoverer.kt", i = {}, l = {53}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
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

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    WeakReference<Activity> activity;
                    Activity activity2;
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
                        FocusState focusState = (FocusState) obj;
                        Activity activity3 = null;
                        FocusState.Focused focused = focusState instanceof FocusState.Focused ? (FocusState.Focused) focusState : null;
                        if (focused != null && (activity = focused.getActivity()) != null && (activity2 = activity.get()) != null && !(activity2 instanceof FullScreenWebViewDisplay)) {
                            activity3 = activity2;
                        }
                        if (activity3 != null) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(activity3, anonymousClass1) == coroutine_suspended) {
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
            public Object collect(FlowCollector<? super Activity> flowCollector, Continuation continuation) {
                Object objCollect = focusState.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, this);
        return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
    }
}
