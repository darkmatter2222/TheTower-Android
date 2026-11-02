package com.unity3d.ads.core.data.datasource;

import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.unity3d.ads.core.log.Logger;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidAdQualityVersionDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;", "Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/log/Logger;)V", "cachedVersion", "", "getCachedVersion", "()Ljava/lang/String;", "cachedVersion$delegate", "Lkotlin/Lazy;", "invoke", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidAdQualityVersionDataSource implements AdQualityVersionDataSource {

    /* JADX INFO: renamed from: cachedVersion$delegate, reason: from kotlin metadata */
    private final Lazy cachedVersion;
    private final Logger logger;

    public AndroidAdQualityVersionDataSource(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.cachedVersion = LazyKt.lazy(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4(AndroidAdQualityVersionDataSource androidAdQualityVersionDataSource) {
        try {
            String sDKVersion = IronSourceAdQuality.getSDKVersion();
            if (sDKVersion == null || StringsKt.isBlank(sDKVersion)) {
                return null;
            }
            return sDKVersion;
        } catch (ClassNotFoundException e) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$2(e);
                }
            });
            return null;
        } catch (NoClassDefFoundError e2) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$1(e2);
                }
            });
            return null;
        } catch (NoSuchMethodError e3) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$3(e3);
                }
            });
            return null;
        } catch (Throwable th) {
            androidAdQualityVersionDataSource.logger.error("Failed to get Ad Quality version", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$1(NoClassDefFoundError noClassDefFoundError) {
        return "Ad Quality SDK not available: " + noClassDefFoundError.getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$2(ClassNotFoundException classNotFoundException) {
        return "Ad Quality SDK not available: " + classNotFoundException.getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$3(NoSuchMethodError noSuchMethodError) {
        return "Ad Quality SDK not available: " + noSuchMethodError.getMessage();
    }

    private final String getCachedVersion() {
        return (String) this.cachedVersion.getValue();
    }

    @Override // com.unity3d.ads.core.data.datasource.AdQualityVersionDataSource
    public String invoke() {
        return getCachedVersion();
    }
}
