package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidWarmNonInitSignals.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0010\u001a\u00020\u0011H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;", "Lcom/unity3d/ads/core/domain/WarmNonInitSignals;", "warmUpScope", "Lkotlinx/coroutines/CoroutineScope;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "privacyDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V", C3510b4.i.d0, "Ljava/util/concurrent/atomic/AtomicBoolean;", "invoke", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidWarmNonInitSignals implements WarmNonInitSignals {
    private final CoroutineDispatcher ioDispatcher;
    private final Logger logger;
    private final PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final AtomicBoolean started;
    private final CoroutineScope warmUpScope;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidWarmNonInitSignals$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWarmNonInitSignals.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidWarmNonInitSignals$invoke$1", f = "AndroidWarmNonInitSignals.kt", i = {0}, l = {36}, m = "invokeSuspend", n = {"startTime"}, s = {"J$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        long J$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWarmNonInitSignals.this.new AnonymousClass1(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            long j;
            Object objM3022constructorimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                    AndroidWarmNonInitSignals androidWarmNonInitSignals = AndroidWarmNonInitSignals.this;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        AnonymousClass1 anonymousClass1 = this;
                        CoroutineDispatcher coroutineDispatcher = androidWarmNonInitSignals.ioDispatcher;
                        AndroidWarmNonInitSignals$invoke$1$result$1$1 androidWarmNonInitSignals$invoke$1$result$1$1 = new AndroidWarmNonInitSignals$invoke$1$result$1$1(androidWarmNonInitSignals, null);
                        this.J$0 = jM4482markNowz9LOYto;
                        this.label = 1;
                        if (BuildersKt.withContext(coroutineDispatcher, androidWarmNonInitSignals$invoke$1$result$1$1, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        j = jM4482markNowz9LOYto;
                    } catch (Throwable th2) {
                        th = th2;
                        j = jM4482markNowz9LOYto;
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j = this.J$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        Result.Companion companion3 = Result.INSTANCE;
                        objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                    }
                }
                objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
                if (thM3025exceptionOrNullimpl != null) {
                    AndroidWarmNonInitSignals.this.logger.error("Failed to warm non-init signals: " + thM3025exceptionOrNullimpl.getMessage(), thM3025exceptionOrNullimpl);
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(AndroidWarmNonInitSignals.this.sendDiagnosticEvent, Result.m3029isSuccessimpl(objM3022constructorimpl) ? "native_warm_non_init_signals_success_time" : "native_warm_non_init_signals_failure_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                return Unit.INSTANCE;
            } catch (CancellationException e) {
                throw e;
            }
        }
    }

    public AndroidWarmNonInitSignals(CoroutineScope warmUpScope, CoroutineDispatcher ioDispatcher, PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource, SendDiagnosticEvent sendDiagnosticEvent, Logger logger) {
        Intrinsics.checkNotNullParameter(warmUpScope, "warmUpScope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(privacyDeviceInfoDataSource, "privacyDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.warmUpScope = warmUpScope;
        this.ioDispatcher = ioDispatcher;
        this.privacyDeviceInfoDataSource = privacyDeviceInfoDataSource;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.started = new AtomicBoolean(false);
    }

    @Override // com.unity3d.ads.core.domain.WarmNonInitSignals
    public void invoke() {
        if (this.started.compareAndSet(false, true)) {
            BuildersKt__Builders_commonKt.launch$default(this.warmUpScope, null, null, new AnonymousClass1(null), 3, null);
        }
    }
}
