package com.unity3d.ads.core.data.datasource;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.ReferrerDetails;
import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.InstallReferrerKt;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1", f = "AndroidInstallReferrerDataSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<InitializationRequestOuterClass.InstallReferrer> $continuation;
    final /* synthetic */ InstallReferrerClient $referrerClient;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidInstallReferrerDataSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1(InstallReferrerClient installReferrerClient, AndroidInstallReferrerDataSource androidInstallReferrerDataSource, CancellableContinuation<? super InitializationRequestOuterClass.InstallReferrer> cancellableContinuation, Continuation<? super AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1> continuation) {
        super(2, continuation);
        this.$referrerClient = installReferrerClient;
        this.this$0 = androidInstallReferrerDataSource;
        this.$continuation = cancellableContinuation;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 = new AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1(this.$referrerClient, this.this$0, this.$continuation, continuation);
        androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1.L$0 = obj;
        return androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM3022constructorimpl;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            try {
                ReferrerDetails installReferrer = this.$referrerClient.getInstallReferrer();
                CancellableContinuation<InitializationRequestOuterClass.InstallReferrer> cancellableContinuation = this.$continuation;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    CancellableContinuation<InitializationRequestOuterClass.InstallReferrer> cancellableContinuation2 = cancellableContinuation;
                    InstallReferrerKt.Dsl.Companion companion2 = InstallReferrerKt.Dsl.INSTANCE;
                    InitializationRequestOuterClass.InstallReferrer.Builder builderNewBuilder = InitializationRequestOuterClass.InstallReferrer.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                    InstallReferrerKt.Dsl dsl_create = companion2._create(builderNewBuilder);
                    String installReferrer2 = installReferrer.getInstallReferrer();
                    if (installReferrer2 != null) {
                        dsl_create.setUrl(installReferrer2);
                    }
                    dsl_create.setClickTime(installReferrer.getReferrerClickTimestampSeconds());
                    dsl_create.setInstallTime(installReferrer.getInstallBeginTimestampServerSeconds());
                    dsl_create.setInstantExperienceLunch(installReferrer.getGooglePlayInstantParam());
                    InitializationRequestOuterClass.InstallReferrer installReferrer_build = dsl_create._build();
                    Result.Companion companion3 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m3022constructorimpl(installReferrer_build));
                    objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m3029isSuccessimpl(objM3022constructorimpl)) {
                    SendDiagnosticEvent.DefaultImpls.invoke$default(this.this$0.sendDiagnosticEvent, "install_referral_fetch_completed", (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 254, (Object) null);
                }
            } catch (Throwable th2) {
                try {
                    this.$referrerClient.endConnection();
                    throw th2;
                } catch (Throwable unused) {
                    throw th2;
                }
            }
        } catch (RemoteException unused2) {
            this.this$0.onError(this.$continuation);
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable unused3) {
            this.this$0.onError(this.$continuation);
        }
        try {
            this.$referrerClient.endConnection();
        } catch (Throwable unused4) {
        }
        return Unit.INSTANCE;
    }
}
