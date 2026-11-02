package com.google.android.libraries.ads.mobile.sdk.common;

import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.AdFormat[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.AdFormat[]) from 0x0056: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.AdFormat[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;", "", "BANNER", "INTERSTITIAL", "REWARDED", "REWARDED_INTERSTITIAL", "NATIVE", "APP_OPEN_AD", "ICON", "SWIPEABLE_INTERSTITIAL", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdFormat {
    BANNER,
    INTERSTITIAL,
    REWARDED,
    REWARDED_INTERSTITIAL,
    NATIVE,
    APP_OPEN_AD,
    ICON,
    SWIPEABLE_INTERSTITIAL;

    static {
        EnumEntriesKt.enumEntries(adFormatArr);
    }

    private AdFormat() {
        super(str, i);
    }

    public static AdFormat[] values() {
        return (AdFormat[]) a.clone();
    }
}
