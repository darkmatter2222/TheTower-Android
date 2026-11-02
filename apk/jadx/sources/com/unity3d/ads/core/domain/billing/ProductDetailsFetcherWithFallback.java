package com.unity3d.ads.core.domain.billing;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductDetailsFetcherWithFallback.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;", "Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;", "primaryFetcher", "secondaryFetcher", "<init>", "(Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;)V", "fetchProductDetails", "Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;", InAppPurchaseMetaData.KEY_PRODUCT_ID, "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProductDetailsFetcherWithFallback implements ProductDetailsFetcher {
    private final ProductDetailsFetcher primaryFetcher;
    private final ProductDetailsFetcher secondaryFetcher;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProductDetailsFetcherWithFallback.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback", f = "ProductDetailsFetcherWithFallback.kt", i = {0, 2}, l = {16, 20, 24}, m = "fetchProductDetails", n = {InAppPurchaseMetaData.KEY_PRODUCT_ID, "primaryResult"}, s = {"L$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ProductDetailsFetcherWithFallback.this.fetchProductDetails(null, this);
        }
    }

    public ProductDetailsFetcherWithFallback(ProductDetailsFetcher primaryFetcher, ProductDetailsFetcher secondaryFetcher) {
        Intrinsics.checkNotNullParameter(primaryFetcher, "primaryFetcher");
        Intrinsics.checkNotNullParameter(secondaryFetcher, "secondaryFetcher");
        this.primaryFetcher = primaryFetcher;
        this.secondaryFetcher = secondaryFetcher;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.billing.ProductDetailsFetcher
    public Object fetchProductDetails(String str, Continuation<? super ProductDetailsResult> continuation) {
        AnonymousClass1 anonymousClass1;
        ProductDetailsResult productDetailsResult;
        ProductDetailsResult productDetailsResult2;
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
        Object objFetchProductDetails = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFetchProductDetails);
            ProductDetailsFetcher productDetailsFetcher = this.primaryFetcher;
            anonymousClass1.L$0 = str;
            anonymousClass1.label = 1;
            objFetchProductDetails = productDetailsFetcher.fetchProductDetails(str, anonymousClass1);
            if (objFetchProductDetails != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            str = (String) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objFetchProductDetails);
        } else {
            if (i == 2) {
                ResultKt.throwOnFailure(objFetchProductDetails);
                return objFetchProductDetails;
            }
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            productDetailsResult = (ProductDetailsResult) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objFetchProductDetails);
        }
        productDetailsResult2 = (ProductDetailsResult) objFetchProductDetails;
        if (productDetailsResult2 instanceof ProductDetailsResult.Success) {
            return productDetailsResult2;
        }
        return productDetailsResult;
        ProductDetailsResult productDetailsResult3 = (ProductDetailsResult) objFetchProductDetails;
        if (productDetailsResult3 instanceof ProductDetailsResult.Success) {
            return productDetailsResult3;
        }
        if (productDetailsResult3 instanceof ProductDetailsResult.NotFound) {
            ProductDetailsFetcher productDetailsFetcher2 = this.secondaryFetcher;
            anonymousClass1.L$0 = null;
            anonymousClass1.label = 2;
            Object objFetchProductDetails2 = productDetailsFetcher2.fetchProductDetails(str, anonymousClass1);
            if (objFetchProductDetails2 != coroutine_suspended) {
                return objFetchProductDetails2;
            }
        } else {
            if (!(productDetailsResult3 instanceof ProductDetailsResult.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            ProductDetailsFetcher productDetailsFetcher3 = this.secondaryFetcher;
            anonymousClass1.L$0 = productDetailsResult3;
            anonymousClass1.label = 3;
            Object objFetchProductDetails3 = productDetailsFetcher3.fetchProductDetails(str, anonymousClass1);
            if (objFetchProductDetails3 != coroutine_suspended) {
                objFetchProductDetails = objFetchProductDetails3;
                productDetailsResult = productDetailsResult3;
                productDetailsResult2 = (ProductDetailsResult) objFetchProductDetails;
                if (productDetailsResult2 instanceof ProductDetailsResult.Success) {
                    return productDetailsResult2;
                }
                return productDetailsResult;
            }
        }
        return coroutine_suspended;
    }
}
