package com.unity3d.services;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import p005kotlin.Lazy;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: UnityAdsSDK.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$initialize$1$newInitializationJob$1", f = "UnityAdsSDK.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
final class UnityAdsSDK$initialize$1$newInitializationJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CoroutineScope $initScope;
    final /* synthetic */ Lazy<InitializeBoldSDK> $initializeBoldSDK$delegate;
    final /* synthetic */ long $publicApiEntry;
    final /* synthetic */ Lazy<SendDiagnosticEvent> $sendDiagnosticEvent$delegate;
    final /* synthetic */ String $source;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UnityAdsSDK$initialize$1$newInitializationJob$1(String str, long j, CoroutineScope coroutineScope, Lazy<? extends SendDiagnosticEvent> lazy, Lazy<? extends InitializeBoldSDK> lazy2, Continuation<? super UnityAdsSDK$initialize$1$newInitializationJob$1> continuation) {
        super(2, continuation);
        this.$source = str;
        this.$publicApiEntry = j;
        this.$initScope = coroutineScope;
        this.$sendDiagnosticEvent$delegate = lazy;
        this.$initializeBoldSDK$delegate = lazy2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UnityAdsSDK$initialize$1$newInitializationJob$1(this.$source, this.$publicApiEntry, this.$initScope, this.$sendDiagnosticEvent$delegate, this.$initializeBoldSDK$delegate, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UnityAdsSDK$initialize$1$newInitializationJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SendDiagnosticEvent sendDiagnosticEventInitialize$lambda$7$lambda$6 = UnityAdsSDK.initialize$lambda$7$lambda$6(this.$sendDiagnosticEvent$delegate);
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            InitializeBoldSDK initializeBoldSDKInitialize$lambda$7$lambda$5 = UnityAdsSDK.initialize$lambda$7$lambda$5(this.$initializeBoldSDK$delegate);
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEventInitialize$lambda$7$lambda$6, "native_init_di_resolution_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
            this.label = 1;
            if (initializeBoldSDKInitialize$lambda$7$lambda$5.invoke(this.$source, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(this.$publicApiEntry), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        CoroutineScopeKt.cancel$default(this.$initScope, null, 1, null);
        return Unit.INSTANCE;
    }
}
