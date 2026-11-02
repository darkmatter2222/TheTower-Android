package com.unity3d.ads.core.domain;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.google.common.net.HttpHeaders;
import com.ironsource.G5;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: GetCachedAsset.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0003J\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0087\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0003J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0003J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0003JH\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u001f2\u0006\u0010 \u001a\u00020!H\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/unity3d/ads/core/domain/GetCachedAsset;", "", "cacheRepository", "Lcom/unity3d/ads/core/data/repository/CacheRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "context", "Landroid/content/Context;", "cacheWebViewAssets", "Lcom/unity3d/ads/core/domain/CacheWebViewAssets;", "getAssetFileName", "Lcom/unity3d/ads/core/domain/GetAssetFileName;", "<init>", "(Lcom/unity3d/ads/core/data/repository/CacheRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Landroid/content/Context;Lcom/unity3d/ads/core/domain/CacheWebViewAssets;Lcom/unity3d/ads/core/domain/GetAssetFileName;)V", "getNotFoundResponse", "Landroid/webkit/WebResourceResponse;", "invoke", "uri", "Landroid/net/Uri;", "webviewType", "", "getLegacyCachedAsset", "getBundledAsset", "tryGetWebViewAsset", "buildWebResourceResponse", "mimeType", "encoding", "statusCode", "", "reasonPhrase", "responseHeaders", "", "data", "Ljava/io/InputStream;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GetCachedAsset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final CacheRepository cacheRepository;
    private final CacheWebViewAssets cacheWebViewAssets;
    private final Context context;
    private final GetAssetFileName getAssetFileName;
    private final SessionRepository sessionRepository;

    /* JADX INFO: compiled from: GetCachedAsset.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/GetCachedAsset$Companion;", "", "<init>", "()V", "reasonPhraseOrDefault", "", "reasonPhrase", "statusCode", "", "reasonPhraseOrDefault$unity_ads_defaultRelease", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String reasonPhraseOrDefault$unity_ads_defaultRelease(String reasonPhrase, int statusCode) {
            Intrinsics.checkNotNullParameter(reasonPhrase, "reasonPhrase");
            String str = reasonPhrase;
            if (StringsKt.isBlank(str)) {
                str = "Status " + statusCode;
            }
            return str;
        }
    }

    public GetCachedAsset(CacheRepository cacheRepository, SessionRepository sessionRepository, Context context, CacheWebViewAssets cacheWebViewAssets, GetAssetFileName getAssetFileName) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        Intrinsics.checkNotNullParameter(getAssetFileName, "getAssetFileName");
        this.cacheRepository = cacheRepository;
        this.sessionRepository = sessionRepository;
        this.context = context;
        this.cacheWebViewAssets = cacheWebViewAssets;
        this.getAssetFileName = getAssetFileName;
    }

    private final WebResourceResponse buildWebResourceResponse(String mimeType, String encoding, int statusCode, String reasonPhrase, Map<String, String> responseHeaders, InputStream data) {
        return new WebResourceResponse(mimeType, encoding, statusCode, INSTANCE.reasonPhraseOrDefault$unity_ads_defaultRelease(reasonPhrase, statusCode), responseHeaders, data);
    }

    private final WebResourceResponse getBundledAsset(Uri uri) {
        String strSubstringAfter$default = StringsKt.substringAfter$default(String.valueOf(uri.getPath()), DomExceptionUtils.SEPARATOR, (String) null, 2, (Object) null);
        try {
            InputStream inputStreamOpen = this.context.getAssets().open(strSubstringAfter$default);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(strSubstringAfter$default), null, inputStreamOpen);
        } catch (Exception unused) {
            return getNotFoundResponse();
        }
    }

    private final WebResourceResponse getLegacyCachedAsset(Uri uri) {
        Object objM3022constructorimpl;
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        CacheResult cacheResult = (CacheResult) BuildersKt__BuildersKt.runBlocking$default(null, new GetCachedAsset$getLegacyCachedAsset$result$1(this, StringsKt.substringAfterLast$default(string, DomExceptionUtils.SEPARATOR, (String) null, 2, (Object) null), null), 1, null);
        if (!(cacheResult instanceof CacheResult.Success)) {
            return getNotFoundResponse();
        }
        File file = ((CacheResult.Success) cacheResult).getCachedFile().getFile();
        if (file == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            GetCachedAsset getCachedAsset = this;
            objM3022constructorimpl = Result.m3022constructorimpl(new FileInputStream(file));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            objM3022constructorimpl = null;
        }
        FileInputStream fileInputStream = (FileInputStream) objM3022constructorimpl;
        if (fileInputStream == null) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        return new WebResourceResponse(StringExtensionsKt.guessMimeType(absolutePath), null, fileInputStream);
    }

    private final WebResourceResponse getNotFoundResponse() {
        return buildWebResourceResponse("text/html", G5.O, InterfaceC3669k1.a.b.d, "Not Found", MapsKt.emptyMap(), new ByteArrayInputStream(new byte[0]));
    }

    public static /* synthetic */ WebResourceResponse invoke$default(GetCachedAsset getCachedAsset, Uri uri, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return getCachedAsset.invoke(uri, str);
    }

    private final WebResourceResponse tryGetWebViewAsset(Uri uri, String webviewType) {
        Object objM3022constructorimpl;
        File file;
        Object objM3022constructorimpl2;
        StringBuilder sbAppend = new StringBuilder().append(webviewType).append('/');
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String string2 = sbAppend.append(StringsKt.substringAfterLast$default(StringsKt.substringBefore$default(string, "?", (String) null, 2, (Object) null), DomExceptionUtils.SEPARATOR, (String) null, 2, (Object) null)).toString();
        File file2 = this.cacheWebViewAssets.getCached().get(string2);
        if (file2 != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                GetCachedAsset getCachedAsset = this;
                objM3022constructorimpl = Result.m3022constructorimpl(new FileInputStream(file2));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
                objM3022constructorimpl = null;
            }
            FileInputStream fileInputStream = (FileInputStream) objM3022constructorimpl;
            if (fileInputStream == null) {
                return null;
            }
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(string2), null, fileInputStream);
        }
        String string3 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        CacheResult cacheResult = (CacheResult) BuildersKt__BuildersKt.runBlocking$default(null, new GetCachedAsset$tryGetWebViewAsset$result$1(this, this.getAssetFileName.invoke(string3), null), 1, null);
        if (!(cacheResult instanceof CacheResult.Success) || (file = ((CacheResult.Success) cacheResult).getCachedFile().getFile()) == null) {
            return null;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            GetCachedAsset getCachedAsset2 = this;
            objM3022constructorimpl2 = Result.m3022constructorimpl(new FileInputStream(file));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m3028isFailureimpl(objM3022constructorimpl2)) {
            objM3022constructorimpl2 = null;
        }
        FileInputStream fileInputStream2 = (FileInputStream) objM3022constructorimpl2;
        if (fileInputStream2 == null) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        return buildWebResourceResponse(StringExtensionsKt.guessMimeType(absolutePath), null, 200, "OK", MapsKt.mapOf(TuplesKt.to(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, ProxyConfig.MATCH_ALL_SCHEMES)), fileInputStream2);
    }

    public final WebResourceResponse invoke(Uri uri, String webviewType) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(webviewType, "webviewType");
        boolean disableCustomScheme = this.sessionRepository.getFeatureFlags().getDisableCustomScheme();
        String host = uri.getHost();
        if (host != null) {
            int iHashCode = host.hashCode();
            if (iHashCode != -1921537799) {
                if (iHashCode == -1920242293 && host.equals(UnityAdsConstants.DefaultUrls.AD_CACHE_DOMAIN)) {
                    return disableCustomScheme ? tryGetWebViewAsset(uri, webviewType) : getLegacyCachedAsset(uri);
                }
            } else if (host.equals(UnityAdsConstants.DefaultUrls.AD_ASSET_DOMAIN)) {
                return getBundledAsset(uri);
            }
        }
        return tryGetWebViewAsset(uri, webviewType);
    }
}
