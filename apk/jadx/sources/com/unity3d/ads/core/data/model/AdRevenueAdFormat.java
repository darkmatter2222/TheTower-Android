package com.unity3d.ads.core.data.model;

import java.util.Locale;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueAdFormat.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;", "", "<init>", "(Ljava/lang/String;I)V", "BANNER", "MREC", "INTERSTITIAL", "REWARDED", "NATIVE", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum AdRevenueAdFormat {
    BANNER,
    MREC,
    INTERSTITIAL,
    REWARDED,
    NATIVE;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: AdRevenueAdFormat.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;", "", "<init>", "()V", "fromString", "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;", "value", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AdRevenueAdFormat fromString(String value) {
            Object objM3022constructorimpl;
            if (value == null) {
                return null;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                String upperCase = value.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                objM3022constructorimpl = Result.m3022constructorimpl(AdRevenueAdFormat.valueOf(upperCase));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
            return (AdRevenueAdFormat) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
        }
    }

    public static EnumEntries<AdRevenueAdFormat> getEntries() {
        return $ENTRIES;
    }
}
