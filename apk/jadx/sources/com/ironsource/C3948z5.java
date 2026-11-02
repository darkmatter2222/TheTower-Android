package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3948z5 {
    public static final C3948z5 a = new C3948z5();

    private C3948z5() {
    }

    private final IronSourceError a(EnumC3569e8 enumC3569e8, IronSourceError ironSourceError) {
        String strD;
        if (ironSourceError != null) {
            strD = enumC3569e8.d() + " Underlying network error: '" + ironSourceError.getErrorCode() + ":" + ironSourceError.getErrorMessage() + "'";
        } else {
            strD = enumC3569e8.d();
        }
        return new IronSourceError(enumC3569e8.c(), strD);
    }

    private final IronSourceError a(EnumC3569e8 enumC3569e8, String str) {
        if (str == null || str.length() == 0) {
            str = enumC3569e8.d();
        }
        return new IronSourceError(enumC3569e8.c(), str);
    }

    static /* synthetic */ IronSourceError a(C3948z5 c3948z5, EnumC3569e8 enumC3569e8, IronSourceError ironSourceError, int i, Object obj) {
        if ((i & 2) != 0) {
            ironSourceError = null;
        }
        return c3948z5.a(enumC3569e8, ironSourceError);
    }

    public static /* synthetic */ IronSourceError a(C3948z5 c3948z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3948z5.a(str);
    }

    public static /* synthetic */ IronSourceError b(C3948z5 c3948z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3948z5.b(str);
    }

    public static /* synthetic */ IronSourceError c(C3948z5 c3948z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3948z5.d(str);
    }

    public final IronSourceError a() {
        return a(this, EnumC3569e8.ISErrorInitDecryptionFailure, null, 2, null);
    }

    public final IronSourceError a(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(EnumC3569e8.ISErrorInitNetworkFailed, networkError);
    }

    public final IronSourceError a(String str) {
        return a(EnumC3569e8.ISErrorBannerLoadNoConfig, str);
    }

    public final IronSourceError b() {
        return a(this, EnumC3569e8.ISErrorInitHttpRequestFailed, null, 2, null);
    }

    public final IronSourceError b(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return a(EnumC3569e8.ISErrorLoadNetworkFailed, error);
    }

    public final IronSourceError b(String str) {
        return a(EnumC3569e8.ISErrorInterstitialLoadNoConfig, str);
    }

    public final IronSourceError c() {
        return a(this, EnumC3569e8.ISErrorInitInvalidResponse, null, 2, null);
    }

    public final IronSourceError c(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(EnumC3569e8.ISErrorShowNetworkFailed, networkError);
    }

    public final IronSourceError c(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        return a(EnumC3569e8.ISErrorLoadNetworkFailed, description);
    }

    public final IronSourceError d() {
        return a(this, EnumC3569e8.ISErrorLoadADMDecryptionFailure, null, 2, null);
    }

    public final IronSourceError d(String str) {
        return a(EnumC3569e8.ISErrorRewardedLoadNoConfig, str);
    }

    public final IronSourceError e() {
        return a(this, EnumC3569e8.ISErrorLoadADMEmptyServerData, null, 2, null);
    }

    public final IronSourceError f() {
        return a(this, EnumC3569e8.ISErrorLoadADMEmptyWaterfall, null, 2, null);
    }

    public final IronSourceError g() {
        return a(this, EnumC3569e8.ISErrorLoadADMInvalidConfigurationForRequestedNetwork, null, 2, null);
    }

    public final IronSourceError h() {
        return a(this, EnumC3569e8.ISErrorLoadADMInvalidJSON, null, 2, null);
    }

    public final IronSourceError i() {
        return a(this, EnumC3569e8.ISErrorLoadADMNoAuctionID, null, 2, null);
    }

    public final IronSourceError j() {
        return a(this, EnumC3569e8.ISErrorLoadADMNoConfigurationForRequestedNetwork, null, 2, null);
    }

    public final IronSourceError k() {
        return a(this, EnumC3569e8.ISErrorLoadBannerNetworkViewIsNull, null, 2, null);
    }

    public final IronSourceError l() {
        return a(this, EnumC3569e8.ISErrorLoadBannerNotSupportedSize, null, 2, null);
    }

    public final IronSourceError m() {
        return a(this, EnumC3569e8.ISErrorLoadBannerSizeIsNull, null, 2, null);
    }

    public final IronSourceError n() {
        return a(this, EnumC3569e8.ISErrorLoadBiddingInNonBidding, null, 2, null);
    }

    public final IronSourceError o() {
        return a(this, EnumC3569e8.ISErrorLoadInstanceNotInInitResponse, null, 2, null);
    }

    public final IronSourceError p() {
        return a(this, EnumC3569e8.ISErrorLoadNoAdFormatConfigurations, null, 2, null);
    }

    public final IronSourceError q() {
        return a(this, EnumC3569e8.ISErrorLoadNullADM, null, 2, null);
    }

    public final IronSourceError r() {
        return a(this, EnumC3569e8.ISErrorLoadSDKNotInitialized, null, 2, null);
    }

    public final IronSourceError s() {
        return a(this, EnumC3569e8.ISErrorLoadTimedOut, null, 2, null);
    }

    public final IronSourceError t() {
        return a(this, EnumC3569e8.ISErrorShowNotReadyToShowAd, null, 2, null);
    }
}
