package com.unity3d.ads.core.data.manager;

import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1l;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.exception.TransactionException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import com.unity3d.ads.core.domain.billing.IsBillingClientAvailable;
import com.unity3d.ads.core.domain.billing.ProductDetailsFetcher;
import com.unity3d.ads.core.domain.events.GetTransactionData;
import com.unity3d.ads.core.domain.events.GetTransactionRequest;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientAdapter;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionEventManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0018\u001a\u00020\u0019H\u0086\u0002J(\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/unity3d/ads/core/data/manager/TransactionEventManager;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "billingClientAdapter", "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;", "getTransactionData", "Lcom/unity3d/ads/core/domain/events/GetTransactionData;", "getTransactionRequest", "Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;", "transactionEventRepository", "Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;", "iapTransactionStore", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "isBillingClientAvailable", "Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "productDetailsFetcher", "Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;Lcom/unity3d/ads/core/domain/events/GetTransactionData;Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;Lcom/unity3d/ads/core/log/Logger;)V", "invoke", "", "onPurchasesReceived", "billingResult", "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;", AFPurchaseConnectorA1l.getPackageName, "", "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;", "transactionOrigin", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransactionEventManager {
    public static final String BILLING_SERVICE_UNAVAILABLE = "Billing client is not available";
    private static final String INAPP = "inapp";
    private static final String SUBS = "subs";
    private final BillingClientAdapter billingClientAdapter;
    private final GetTransactionData getTransactionData;
    private final GetTransactionRequest getTransactionRequest;
    private final ByteStringDataSource iapTransactionStore;
    private final IsBillingClientAvailable isBillingClientAvailable;
    private final Logger logger;
    private final ProductDetailsFetcher productDetailsFetcher;
    private final CoroutineScope scope;
    private final SessionRepository sessionRepository;
    private final TransactionEventRepository transactionEventRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionEventManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1", f = "TransactionEventManager.kt", i = {}, l = {162}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(TransactionEventManager transactionEventManager, BillingResultBridge billingResultBridge, List list) {
            transactionEventManager.onPurchasesReceived(billingResultBridge, list, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_HISTORICAL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$2(TransactionEventManager transactionEventManager, BillingResultBridge billingResultBridge, List list) {
            transactionEventManager.onPurchasesReceived(billingResultBridge, list, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_HISTORICAL);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionEventManager.this.new AnonymousClass1(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (!TransactionEventManager.this.billingClientAdapter.isInitialized()) {
                        final TransactionEventManager transactionEventManager = TransactionEventManager.this;
                        this.L$0 = transactionEventManager;
                        this.label = 1;
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(this), 1);
                        cancellableContinuationImpl.initCancellability();
                        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                        transactionEventManager.billingClientAdapter.initialize(new BillingInitializationListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$1$1
                            private final MutableStateFlow<Boolean> hasBeenResumed = StateFlowKt.MutableStateFlow(false);

                            private final void tryResume() {
                                Boolean value;
                                Boolean bool;
                                if (cancellableContinuationImpl2.isActive()) {
                                    MutableStateFlow<Boolean> mutableStateFlow = this.hasBeenResumed;
                                    do {
                                        value = mutableStateFlow.getValue();
                                        bool = value;
                                        bool.booleanValue();
                                    } while (!mutableStateFlow.compareAndSet(value, true));
                                    if (bool.booleanValue()) {
                                        return;
                                    }
                                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                                    Result.Companion companion = Result.INSTANCE;
                                    cancellableContinuation.resumeWith(Result.m3022constructorimpl(Unit.INSTANCE));
                                }
                            }

                            private final void tryResumeWithException(Exception exception) {
                                Boolean value;
                                Boolean bool;
                                if (cancellableContinuationImpl2.isActive()) {
                                    MutableStateFlow<Boolean> mutableStateFlow = this.hasBeenResumed;
                                    do {
                                        value = mutableStateFlow.getValue();
                                        bool = value;
                                        bool.booleanValue();
                                    } while (!mutableStateFlow.compareAndSet(value, true));
                                    if (bool.booleanValue()) {
                                        return;
                                    }
                                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                                    Result.Companion companion = Result.INSTANCE;
                                    cancellableContinuation.resumeWith(Result.m3022constructorimpl(ResultKt.createFailure(exception)));
                                }
                            }

                            public final MutableStateFlow<Boolean> getHasBeenResumed() {
                                return this.hasBeenResumed;
                            }

                            @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                            public void onBillingServiceDisconnected() {
                                tryResumeWithException(new TransactionException("Billing service disconnected"));
                            }

                            @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                            public void onBillingSetupFinished(BillingResultBridge billingResult) {
                                Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                                if (billingResult.getResponseCode() != BillingResultResponseCode.OK) {
                                    tryResumeWithException(new TransactionException("Billing setup failed"));
                                } else {
                                    tryResume();
                                }
                            }

                            @Override // com.unity3d.services.store.gpbl.listeners.BillingInitializationListener
                            public void onIsAlreadyInitialized() {
                                tryResume();
                            }

                            @Override // com.unity3d.services.store.gpbl.listeners.PurchaseUpdatedResponseListener
                            public void onPurchaseUpdated(BillingResultBridge billingResult, List<? extends PurchaseBridge> purchases) {
                                Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                                transactionEventManager.onPurchasesReceived(billingResult, purchases, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_LIVE_UPDATE);
                            }
                        });
                        Object result = cancellableContinuationImpl.getResult();
                        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(this);
                        }
                        if (result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (TransactionEventManager.this.sessionRepository.getNativeConfiguration().getFeatureFlags().getShouldSendIapHistory()) {
                    BillingClientAdapter billingClientAdapter = TransactionEventManager.this.billingClientAdapter;
                    final TransactionEventManager transactionEventManager2 = TransactionEventManager.this;
                    billingClientAdapter.queryPurchasesAsync("inapp", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$$ExternalSyntheticLambda0
                        @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
                        public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                            TransactionEventManager.AnonymousClass1.invokeSuspend$lambda$1(transactionEventManager2, billingResultBridge, list);
                        }
                    });
                    BillingClientAdapter billingClientAdapter2 = TransactionEventManager.this.billingClientAdapter;
                    final TransactionEventManager transactionEventManager3 = TransactionEventManager.this;
                    billingClientAdapter2.queryPurchasesAsync("subs", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$$ExternalSyntheticLambda1
                        @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
                        public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                            TransactionEventManager.AnonymousClass1.invokeSuspend$lambda$2(transactionEventManager3, billingResultBridge, list);
                        }
                    });
                }
            } catch (Exception e) {
                TransactionEventManager.this.logger.trace(TransactionEventManager.BILLING_SERVICE_UNAVAILABLE, e);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionEventManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1", f = "TransactionEventManager.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2}, l = {131, 134, 147, 150}, m = "invokeSuspend", n = {"transactionDataList", "deferredPurchaseList", FirebaseAnalytics.Event.PURCHASE, InAppPurchaseMetaData.KEY_PRODUCT_ID, "purchaseTime", "index$iv", FirebaseAnalytics.Param.INDEX, "transactionDataList", "deferredPurchaseList", FirebaseAnalytics.Event.PURCHASE, "index$iv", FirebaseAnalytics.Param.INDEX, "transactionDataList"}, s = {"L$0", "L$1", "L$4", "L$5", "L$6", "I$0", "I$1", "L$0", "L$1", "L$4", "I$0", "I$1", "L$0"})
    static final class C40021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<PurchaseBridge> $purchases;
        final /* synthetic */ TransactionEventRequestOuterClass.TransactionOrigin $transactionOrigin;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        final /* synthetic */ TransactionEventManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C40021(List<? extends PurchaseBridge> list, TransactionEventManager transactionEventManager, TransactionEventRequestOuterClass.TransactionOrigin transactionOrigin, Continuation<? super C40021> continuation) {
            super(2, continuation);
            this.$purchases = list;
            this.this$0 = transactionEventManager;
            this.$transactionOrigin = transactionOrigin;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40021(this.$purchases, this.this$0, this.$transactionOrigin, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40021) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:107:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:28:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:30:0x00d4  */
        /* JADX WARN: Code duplicated, block: B:38:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:43:0x0111  */
        /* JADX WARN: Code duplicated, block: B:46:0x0128  */
        /* JADX WARN: Code duplicated, block: B:47:0x0129  */
        /* JADX WARN: Code duplicated, block: B:49:0x012c A[Catch: Exception -> 0x01dd, TryCatch #2 {Exception -> 0x01dd, blocks: (B:34:0x00e1, B:44:0x0112, B:49:0x012c, B:51:0x0131, B:54:0x0139), top: B:101:0x00e1 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x019e -> B:111:0x01a2). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x01ba -> B:70:0x01be). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x01db -> B:82:0x01f0). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01e3 -> B:81:0x01ee). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 600
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.TransactionEventManager.C40021.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public TransactionEventManager(CoroutineScope scope, BillingClientAdapter billingClientAdapter, GetTransactionData getTransactionData, GetTransactionRequest getTransactionRequest, TransactionEventRepository transactionEventRepository, ByteStringDataSource iapTransactionStore, IsBillingClientAvailable isBillingClientAvailable, SessionRepository sessionRepository, ProductDetailsFetcher productDetailsFetcher, Logger logger) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(getTransactionData, "getTransactionData");
        Intrinsics.checkNotNullParameter(getTransactionRequest, "getTransactionRequest");
        Intrinsics.checkNotNullParameter(transactionEventRepository, "transactionEventRepository");
        Intrinsics.checkNotNullParameter(iapTransactionStore, "iapTransactionStore");
        Intrinsics.checkNotNullParameter(isBillingClientAvailable, "isBillingClientAvailable");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(productDetailsFetcher, "productDetailsFetcher");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scope = scope;
        this.billingClientAdapter = billingClientAdapter;
        this.getTransactionData = getTransactionData;
        this.getTransactionRequest = getTransactionRequest;
        this.transactionEventRepository = transactionEventRepository;
        this.iapTransactionStore = iapTransactionStore;
        this.isBillingClientAvailable = isBillingClientAvailable;
        this.sessionRepository = sessionRepository;
        this.productDetailsFetcher = productDetailsFetcher;
        this.logger = logger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPurchasesReceived(BillingResultBridge billingResult, List<? extends PurchaseBridge> purchases, TransactionEventRequestOuterClass.TransactionOrigin transactionOrigin) {
        List<? extends PurchaseBridge> list;
        if (billingResult.getResponseCode() != BillingResultResponseCode.OK || (list = purchases) == null || list.isEmpty() || this.billingClientAdapter == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C40021(purchases, this, transactionOrigin, null), 3, null);
    }

    public final void invoke() {
        if (!this.isBillingClientAvailable.invoke() || this.billingClientAdapter == null) {
            Logger.DefaultImpls.trace$default(this.logger, BILLING_SERVICE_UNAVAILABLE, null, 2, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
        }
    }
}
