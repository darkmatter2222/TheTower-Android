package com.unity3d.ads.core.domain;

import android.content.Context;
import android.content.Intent;
import com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidHandleOpenUrl.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007JR\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\tH\u0096B¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;", "Lcom/unity3d/ads/core/domain/HandleOpenUrl;", "context", "Landroid/content/Context;", "intentCreation", "Lcom/unity3d/ads/core/domain/IntentCreation;", "<init>", "(Landroid/content/Context;Lcom/unity3d/ads/core/domain/IntentCreation;)V", "invoke", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", "packageName", "action", HandleInvocationsFromAdViewer.KEY_EXTRAS, "", "", HandleInvocationsFromAdViewer.KEY_USE_ACTIVITY_FOR_RESULT, "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidHandleOpenUrl implements HandleOpenUrl {
    private final Context context;
    private final IntentCreation intentCreation;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleOpenUrl$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleOpenUrl.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleOpenUrl", f = "AndroidHandleOpenUrl.kt", i = {}, l = {52}, m = "invoke", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleOpenUrl.this.invoke(null, null, null, null, null, false, this);
        }
    }

    public AndroidHandleOpenUrl(Context context, IntentCreation intentCreation) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intentCreation, "intentCreation");
        this.context = context;
        this.intentCreation = intentCreation;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.HandleOpenUrl
    public Object invoke(final AdObject adObject, String str, String str2, String str3, Map<String, ? extends Object> map, boolean z, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objM3022constructorimpl;
        boolean zM3029isSuccessimpl;
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
        Object objFirst = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFirst);
            Intent intentInvoke = this.intentCreation.invoke(str, str2, str3, map);
            if (adObject.getAdType() == DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER) {
                intentInvoke.setFlags(268435456);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AndroidHandleOpenUrl androidHandleOpenUrl = this;
                    this.context.startActivity(intentInvoke);
                    objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                }
                zM3029isSuccessimpl = Result.m3029isSuccessimpl(objM3022constructorimpl);
            } else {
                final SharedFlow sharedFlowOnSubscription = FlowKt.onSubscription(AndroidFullscreenWebViewAdPlayer.INSTANCE.getDisplayMessages(), new AndroidHandleOpenUrl$invoke$result$1(adObject, intentInvoke, z, null));
                Flow<DisplayMessage> flow = new Flow<DisplayMessage>() { // from class: com.unity3d.ads.core.domain.AndroidHandleOpenUrl$invoke$$inlined$filter$1

                    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleOpenUrl$invoke$$inlined$filter$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector {
                        final /* synthetic */ AdObject $adObject$inlined;
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleOpenUrl$invoke$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleOpenUrl$invoke$$inlined$filter$1$2", f = "AndroidHandleOpenUrl.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
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

                        public AnonymousClass2(FlowCollector flowCollector, AdObject adObject) {
                            this.$this_unsafeFlow = flowCollector;
                            this.$adObject$inlined = adObject;
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
                                DisplayMessage displayMessage = (DisplayMessage) obj;
                                if ((displayMessage instanceof DisplayMessage.OpenUrlResult) && Intrinsics.areEqual(displayMessage.getOpportunityId(), ProtobufExtensionsKt.toUUID(this.$adObject$inlined.getOpportunityId()).toString())) {
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
                    public Object collect(FlowCollector<? super DisplayMessage> flowCollector, Continuation continuation2) {
                        Object objCollect = sharedFlowOnSubscription.collect(new AnonymousClass2(flowCollector, adObject), continuation2);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                };
                anonymousClass1.label = 1;
                objFirst = FlowKt.first(flow, anonymousClass1);
                if (objFirst == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Boxing.boxBoolean(zM3029isSuccessimpl);
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(objFirst);
        Intrinsics.checkNotNull(objFirst, "null cannot be cast to non-null type com.unity3d.ads.adplayer.DisplayMessage.OpenUrlResult");
        zM3029isSuccessimpl = ((DisplayMessage.OpenUrlResult) objFirst).getSuccess();
        return Boxing.boxBoolean(zM3029isSuccessimpl);
    }
}
