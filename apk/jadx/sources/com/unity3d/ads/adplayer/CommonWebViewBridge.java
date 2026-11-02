package com.unity3d.ads.adplayer;

import com.google.android.gms.ads.AdSize;
import com.google.protobuf.ByteString;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.JSONArrayExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONArray;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendFunction;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonWebViewBridge.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0082@¢\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0096@¢\u0006\u0002\u00102J8\u00103\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u00104\u001a\u00020\u00152\u0006\u00105\u001a\u00020\u00152\u0012\u00106\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00180\u0017\"\u00020\u0018H\u0096@¢\u0006\u0002\u00107J \u00108\u001a\u00020)2\u0006\u00109\u001a\u00020\u00152\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u0015H\u0016J\u0010\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020\u0015H\u0016J\u001e\u0010>\u001a\u00020)2\u0006\u0010?\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u0015H\u0082@¢\u0006\u0002\u0010@J6\u0010A\u001a\u00020)2\u0006\u00109\u001a\u00020\u00152\u0006\u0010B\u001a\u00020\u00152\u0016\u00106\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00180\u0017\"\u0004\u0018\u00010\u0018H\u0082@¢\u0006\u0002\u00107R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R2\u0010\u0011\u001a&\u0012\"\u0012 \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u00160\u00140\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR,\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"0!X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006C"}, d2 = {"Lcom/unity3d/ads/adplayer/CommonWebViewBridge;", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "webViewContainer", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "adPlayerScope", "Lkotlinx/coroutines/CoroutineScope;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V", "scope", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "callbacks", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lkotlin/Pair;", "", "Lkotlinx/coroutines/CompletableDeferred;", "", "", "_onInvocation", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/adplayer/Invocation;", "onInvocation", "Lkotlinx/coroutines/flow/SharedFlow;", "getOnInvocation", "()Lkotlinx/coroutines/flow/SharedFlow;", "exposedFunctions", "", "Lkotlin/Function0;", "Lcom/unity3d/ads/adplayer/ExposedFunction;", "getExposedFunctions", "()Ljava/util/Map;", "setExposedFunctions", "(Ljava/util/Map;)V", "execute", "", "handlerType", "Lcom/unity3d/ads/adplayer/HandlerType;", TJAdUnitConstants.String.ARGUMENTS, "Lorg/json/JSONArray;", "(Lcom/unity3d/ads/adplayer/HandlerType;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendEvent", "event", "Lcom/unity3d/ads/adplayer/model/WebViewEvent;", "(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "request", "className", "method", "params", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleCallback", TJAdUnitConstants.String.CALLBACK_ID, "callbackStatus", "rawParameters", "handleInvocation", TJAdUnitConstants.String.MESSAGE, "handleInvocationResult", "invocation", "(Lcom/unity3d/ads/adplayer/Invocation;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "respond", "status", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonWebViewBridge implements WebViewBridge {
    private final MutableSharedFlow<Invocation> _onInvocation;
    private final MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> callbacks;
    private Map<String, ? extends Function0<? extends ExposedFunction>> exposedFunctions;
    private final Logger logger;
    private final SharedFlow<Invocation> onInvocation;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final WebViewContainer webViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$1", f = "CommonWebViewBridge.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CommonWebViewBridge.this.new AnonymousClass1(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (CommonWebViewBridge.this.webViewContainer.addJavascriptInterface(CommonWebViewBridge.this, "webviewbridge", this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7", f = "CommonWebViewBridge.kt", i = {0}, l = {133, 134}, m = "invokeSuspend", n = {"invocation"}, s = {"L$0"})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $callback;
        final /* synthetic */ String $location;
        final /* synthetic */ JSONArray $parameters;
        Object L$0;
        int label;
        final /* synthetic */ CommonWebViewBridge this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(String str, JSONArray jSONArray, CommonWebViewBridge commonWebViewBridge, String str2, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$location = str;
            this.$parameters = jSONArray;
            this.this$0 = commonWebViewBridge;
            this.$callback = str2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$location, this.$parameters, this.this$0, this.$callback, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
        
            if (r6.this$0.handleInvocationResult(r1, r6.$callback, r6) == r0) goto L15;
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
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r7)
                goto L59
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                java.lang.Object r1 = r6.L$0
                com.unity3d.ads.adplayer.Invocation r1 = (com.unity3d.ads.adplayer.Invocation) r1
                p005kotlin.ResultKt.throwOnFailure(r7)
                goto L46
            L22:
                p005kotlin.ResultKt.throwOnFailure(r7)
                com.unity3d.ads.adplayer.Invocation r1 = new com.unity3d.ads.adplayer.Invocation
                java.lang.String r7 = r6.$location
                org.json.JSONArray r4 = r6.$parameters
                java.lang.Object[] r4 = com.unity3d.ads.core.extensions.JSONArrayExtensionsKt.toTypedArray(r4)
                r1.<init>(r7, r4)
                com.unity3d.ads.adplayer.CommonWebViewBridge r7 = r6.this$0
                kotlinx.coroutines.flow.MutableSharedFlow r7 = com.unity3d.ads.adplayer.CommonWebViewBridge.access$get_onInvocation$p(r7)
                r4 = r6
                kotlin.coroutines.Continuation r4 = (p005kotlin.coroutines.Continuation) r4
                r6.L$0 = r1
                r6.label = r3
                java.lang.Object r7 = r7.emit(r1, r4)
                if (r7 != r0) goto L46
                goto L58
            L46:
                com.unity3d.ads.adplayer.CommonWebViewBridge r7 = r6.this$0
                java.lang.String r3 = r6.$callback
                r4 = r6
                kotlin.coroutines.Continuation r4 = (p005kotlin.coroutines.Continuation) r4
                r5 = 0
                r6.L$0 = r5
                r6.label = r2
                java.lang.Object r7 = com.unity3d.ads.adplayer.CommonWebViewBridge.access$handleInvocationResult(r7, r1, r3, r4)
                if (r7 != r0) goto L59
            L58:
                return r0
            L59:
                kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.AnonymousClass7.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge", f = "CommonWebViewBridge.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 6}, l = {150, 158, AdSize.WIDE_SKYSCRAPER_WIDTH, 164, 166, 181, 186}, m = "handleInvocationResult", n = {"invocation", TJAdUnitConstants.String.CALLBACK_ID, "invocation", TJAdUnitConstants.String.CALLBACK_ID, "invocation", TJAdUnitConstants.String.CALLBACK_ID, "invocation", TJAdUnitConstants.String.CALLBACK_ID, "invocation", TJAdUnitConstants.String.CALLBACK_ID, "result", "invocation", TJAdUnitConstants.String.CALLBACK_ID, "invocation"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0"})
    static final class C39711 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C39711(Continuation<? super C39711> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonWebViewBridge.this.handleInvocationResult(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$2, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<WebViewEvent, Continuation<? super Unit>, Object>, SuspendFunction {
        AnonymousClass2(Object obj) {
            super(2, obj, CommonWebViewBridge.class, "sendEvent", "sendEvent(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(WebViewEvent webViewEvent, Continuation<? super Unit> continuation) {
            return ((CommonWebViewBridge) this.receiver).sendEvent(webViewEvent, continuation);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$3, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/adplayer/model/WebViewEvent;", "e", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$3", f = "CommonWebViewBridge.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WebViewEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ Invocation $invocation;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Invocation invocation, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$invocation = invocation;
        }

        @Override // p005kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super WebViewEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = CommonWebViewBridge.this.new AnonymousClass3(this.$invocation, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Throwable th = (Throwable) this.L$0;
            CommonWebViewBridge.this.logger.error("Error delivering flow event", th);
            SendDiagnosticEvent sendDiagnosticEvent = CommonWebViewBridge.this.sendDiagnosticEvent;
            Pair[] pairArr = new Pair[2];
            String message = th.getMessage();
            if (message == null) {
                message = th.getClass().getSimpleName();
            }
            pairArr[0] = TuplesKt.to("reason_debug", message);
            pairArr[1] = TuplesKt.to("webview_invocation", this.$invocation.getLocation());
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", (Double) null, MapsKt.mapOf(pairArr), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$request$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge", f = "CommonWebViewBridge.kt", i = {0}, l = {83, 85}, m = "request", n = {"callback"}, s = {"L$0"})
    static final class C39721 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C39721(Continuation<? super C39721> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonWebViewBridge.this.request(null, null, null, this);
        }
    }

    public CommonWebViewBridge(CoroutineDispatcher dispatcher, WebViewContainer webViewContainer, CoroutineScope adPlayerScope, SendDiagnosticEvent sendDiagnosticEvent, Logger logger) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.webViewContainer = webViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.plus(adPlayerScope, dispatcher), new CoroutineName("CommonWebViewBridge"));
        this.scope = coroutineScopePlus;
        this.callbacks = StateFlowKt.MutableStateFlow(SetsKt.emptySet());
        MutableSharedFlow<Invocation> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 64, null, 5, null);
        this._onInvocation = mutableSharedFlowMutableSharedFlow$default;
        this.onInvocation = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.exposedFunctions = MapsKt.emptyMap();
        BuildersKt__Builders_commonKt.launch$default(coroutineScopePlus, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object execute(HandlerType handlerType, JSONArray jSONArray, Continuation<? super Unit> continuation) {
        Object objEvaluateJavascript = this.webViewContainer.evaluateJavascript(handlerType, jSONArray, continuation);
        return objEvaluateJavascript == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEvaluateJavascript : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:55:0x0121 A[Catch: all -> 0x01b9, PHI: r0 r2 r3
  0x0121: PHI (r0v36 java.lang.Object) = (r0v31 java.lang.Object), (r0v32 java.lang.Object), (r0v1 java.lang.Object) binds: [B:53:0x011d, B:50:0x010a, B:28:0x007e] A[DONT_GENERATE, DONT_INLINE]
  0x0121: PHI (r2v12 com.unity3d.ads.adplayer.Invocation) = 
  (r2v32 com.unity3d.ads.adplayer.Invocation)
  (r2v33 com.unity3d.ads.adplayer.Invocation)
  (r2v14 com.unity3d.ads.adplayer.Invocation)
 binds: [B:53:0x011d, B:50:0x010a, B:28:0x007e] A[DONT_GENERATE, DONT_INLINE]
  0x0121: PHI (r3v10 java.lang.String) = (r3v21 java.lang.String), (r3v22 java.lang.String), (r3v12 java.lang.String) binds: [B:53:0x011d, B:50:0x010a, B:28:0x007e] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0125 A[Catch: all -> 0x01b9, TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0134  */
    /* JADX WARN: Code duplicated, block: B:60:0x0136 A[Catch: all -> 0x01b9, TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:62:0x013a A[Catch: all -> 0x01b9, TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0154  */
    /* JADX WARN: Code duplicated, block: B:67:0x0160 A[Catch: all -> 0x01b9, TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0186 A[Catch: all -> 0x01b9, TryCatch #2 {all -> 0x01b9, blocks: (B:65:0x0156, B:67:0x0160, B:55:0x0121, B:57:0x0125, B:60:0x0136, B:62:0x013a, B:68:0x0186, B:41:0x00ca, B:36:0x00aa, B:38:0x00ba, B:43:0x00cd, B:45:0x00dd, B:47:0x00e5, B:49:0x00f5, B:52:0x010e, B:71:0x0198, B:72:0x01b8), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0197  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01dd, code lost:
    
        if (respond(r3, "ERROR", new java.lang.Object[]{r4}, r5) == r6) goto L79;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleInvocationResult(com.unity3d.ads.adplayer.Invocation r24, java.lang.String r25, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r26) {
        /*
            Method dump skipped, instruction units count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.handleInvocationResult(com.unity3d.ads.adplayer.Invocation, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object respond(String str, String str2, Object[] objArr, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(new JSONArray(objArr));
        Object objExecute = execute(HandlerType.CALLBACK, new JSONArray((Collection) CollectionsKt.listOf(jSONArray)), continuation);
        return objExecute == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Map<String, Function0<ExposedFunction>> getExposedFunctions() {
        return this.exposedFunctions;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public SharedFlow<Invocation> getOnInvocation() {
        return this.onInvocation;
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleCallback(String callbackId, String callbackStatus, String rawParameters) {
        Object next;
        Set<Pair<String, CompletableDeferred<Object[]>>> value;
        Intrinsics.checkNotNullParameter(callbackId, "callbackId");
        Intrinsics.checkNotNullParameter(callbackStatus, "callbackStatus");
        Intrinsics.checkNotNullParameter(rawParameters, "rawParameters");
        Object[] typedArray = JSONArrayExtensionsKt.toTypedArray(new JSONArray(rawParameters));
        Iterator<T> it = this.callbacks.getValue().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual((String) ((Pair) next).component1(), callbackId));
        Pair pair = (Pair) next;
        if (pair == null) {
            return;
        }
        CompletableDeferred completableDeferred = (CompletableDeferred) pair.component2();
        int iHashCode = callbackStatus.hashCode();
        if (iHashCode != -1867169789) {
            if (iHashCode != 2524) {
                if (iHashCode == 66247144 ? callbackStatus.equals("ERROR") : iHashCode == 96784904 && callbackStatus.equals("error")) {
                    Object obj = typedArray[0];
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    completableDeferred.completeExceptionally(new Exception((String) obj));
                }
            } else if (callbackStatus.equals("OK")) {
                completableDeferred.complete(typedArray);
            }
        } else if (callbackStatus.equals("success")) {
            completableDeferred.complete(typedArray);
        }
        MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> mutableStateFlow = this.callbacks;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, SetsKt.minus(value, pair)));
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleInvocation(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            try {
                JSONArray jSONArray = new JSONArray(message);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    Object obj = jSONArray.get(i);
                    JSONArray jSONArray2 = obj instanceof JSONArray ? (JSONArray) obj : null;
                    if (jSONArray2 == null) {
                        throw new IllegalArgumentException(("Invalid invocation passed to CommonWebViewBridge: " + message).toString());
                    }
                    if (jSONArray2.length() != 4) {
                        throw new IllegalArgumentException(("Invocation must have 4 elements: " + jSONArray2).toString());
                    }
                    Object obj2 = jSONArray2.get(0);
                    String str = obj2 instanceof String ? (String) obj2 : null;
                    if (str == null) {
                        throw new IllegalArgumentException(("Invalid class name passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj3 = jSONArray2.get(1);
                    String str2 = obj3 instanceof String ? (String) obj3 : null;
                    if (str2 == null) {
                        throw new IllegalArgumentException(("Invalid method name passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj4 = jSONArray2.get(2);
                    JSONArray jSONArray3 = obj4 instanceof JSONArray ? (JSONArray) obj4 : null;
                    if (jSONArray3 == null) {
                        throw new IllegalArgumentException(("Invalid parameters passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj5 = jSONArray2.get(3);
                    String str3 = obj5 instanceof String ? (String) obj5 : null;
                    if (str3 == null) {
                        throw new IllegalArgumentException(("Invalid callback id passed to CommonWebViewBridge: " + message).toString());
                    }
                    String str4 = str + '.' + str2;
                    this.logger.debug("Unity Ads WebView calling for: " + str4 + '(' + jSONArray3 + ')');
                    BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass7(str4, jSONArray3, this, str3, null), 3, null);
                }
            } catch (JSONException e) {
                throw new IllegalArgumentException("Invalid JSON array passed to CommonWebViewBridge: " + message, e);
            }
        } catch (Throwable th) {
            this.logger.error("Error handling invocation from webview (" + message + ')', th);
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            Pair[] pairArr = new Pair[2];
            String message2 = th.getMessage();
            if (message2 == null) {
                message2 = th.getClass().getSimpleName();
            }
            pairArr[0] = TuplesKt.to("reason_debug", message2);
            pairArr[1] = TuplesKt.to("webview_invocation", message);
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", (Double) null, MapsKt.mapOf(pairArr), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
            throw new IllegalArgumentException("Invalid message passed to CommonWebViewBridge: " + message, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Object request(String str, String str2, Object[] objArr, Continuation<? super Object[]> continuation) {
        C39721 c39721;
        Set<Pair<String, CompletableDeferred<Object[]>>> value;
        CompletableDeferred completableDeferred;
        if (continuation instanceof C39721) {
            c39721 = (C39721) continuation;
            if ((c39721.label & Integer.MIN_VALUE) != 0) {
                c39721.label -= Integer.MIN_VALUE;
            } else {
                c39721 = new C39721(continuation);
            }
        } else {
            c39721 = new C39721(continuation);
        }
        Object obj = c39721.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c39721.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            Object objValueOf = String.valueOf(completableDeferredCompletableDeferred$default.hashCode());
            MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> mutableStateFlow = this.callbacks;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, SetsKt.plus(value, TuplesKt.to(objValueOf, completableDeferredCompletableDeferred$default))));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            jSONArray.put(str2);
            jSONArray.put(objValueOf);
            for (Object obj2 : objArr) {
                jSONArray.put(obj2);
            }
            HandlerType handlerType = HandlerType.INVOCATION;
            c39721.L$0 = completableDeferredCompletableDeferred$default;
            c39721.label = 1;
            if (execute(handlerType, jSONArray, c39721) != coroutine_suspended) {
                completableDeferred = completableDeferredCompletableDeferred$default;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        completableDeferred = (CompletableDeferred) c39721.L$0;
        ResultKt.throwOnFailure(obj);
        c39721.L$0 = null;
        c39721.label = 2;
        Object objAwait = completableDeferred.await(c39721);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Object sendEvent(WebViewEvent webViewEvent, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(webViewEvent.getCategory());
        jSONArray.put(webViewEvent.getName());
        for (Object obj : webViewEvent.getParameters()) {
            jSONArray.put(obj);
        }
        Object objExecute = execute(HandlerType.EVENT, jSONArray, continuation);
        return objExecute == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void setExposedFunctions(Map<String, ? extends Function0<? extends ExposedFunction>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.exposedFunctions = map;
    }
}
