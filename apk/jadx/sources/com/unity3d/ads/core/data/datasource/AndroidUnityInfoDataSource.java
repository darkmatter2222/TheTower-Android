package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.ironsource.C3510b4;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.preferences.AndroidPreferences;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidUnityInfoDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\bH\u0002R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidUnityInfoDataSource;", "", "contextProvider", "Lkotlin/Function0;", "Landroid/content/Context;", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getUnityInstallationId", "", "getUnityMegaSessionId", "getPlayerPrefId", C3510b4.i.W, "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidUnityInfoDataSource {
    private final Function0<Context> contextProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidUnityInfoDataSource(Function0<? extends Context> contextProvider) {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        this.contextProvider = contextProvider;
    }

    private final String getPlayerPrefId(String key) {
        String packageName;
        String string;
        Context contextInvoke = this.contextProvider.invoke();
        if (contextInvoke == null || (packageName = contextInvoke.getPackageName()) == null || (string = AndroidPreferences.getString(packageName + ".v2.playerprefs", key)) == null) {
            return null;
        }
        String str = string;
        return StringsKt.isBlank(str) ? null : str;
    }

    public final String getUnityInstallationId() {
        return getPlayerPrefId(UnityAdsConstants.Preferences.PREF_KEY_UNITY_INSTALLATION_ID);
    }

    public final String getUnityMegaSessionId() {
        return getPlayerPrefId(UnityAdsConstants.Preferences.PREF_KEY_UNITY_MEGA_SESSION_ID);
    }
}
