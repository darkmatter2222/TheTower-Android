package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.AudienceNetworkAdsApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2661jb implements AudienceNetworkAdsApi {
    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final int getAdFormatForPlacement(String str) {
        AbstractC2971oi.A02(this);
        return 0;
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final void initialize(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        if (initListener == null) {
            try {
                initListener = new C2660ja(this);
            } catch (Throwable th) {
                AbstractC2971oi.A00(th, this);
                return;
            }
        }
        DynamicLoaderFactory.makeLoader(context).getInitApi().initialize(context, multithreadedBundleWrapper, initListener, 1);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final boolean isInitialized() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return false;
        }
        try {
            DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
            if (dynamicLoader == null) {
                return false;
            }
            return dynamicLoader.getInitApi().isInitialized();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return false;
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final void onContentProviderCreated(Context context) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            DynamicLoaderFactory.makeLoader(context).getInitApi().onContentProviderCreated(context);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
