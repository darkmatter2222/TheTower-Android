package com.unity3d.ads.core.data.datasource;

import android.os.Bundle;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.G5;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.core.data.model.AdRevenueData;
import com.unity3d.ads.core.data.model.AdRevenueOrigin;
import com.unity3d.ads.core.domain.events.HandleAdRevenueEvent;
import com.unity3d.ads.core.log.Logger;
import gatewayprotocol.v1.ClientInfoOuterClass;
import java.util.Set;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: MaxAdRevenueListener.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u0012*\u00020\u0012H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;", "", "handleAdRevenueEvent", "Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/log/Logger;)V", "onMessageReceived", "", "messageData", "Landroid/os/Bundle;", "parseRevenueBundle", "Lcom/unity3d/ads/core/data/model/AdRevenueData;", TJAdUnitConstants.String.BUNDLE, "bundleToTraceString", "", "validateString", "parseMaxAdFormatString", "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;", "formatStr", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MaxAdRevenueListener {
    private static final String KEY_AD_FORMAT = "ad_format";
    private static final String KEY_COUNTRY_CODE = "country_code";
    private static final String KEY_MAX_AD_UNIT_ID = "max_ad_unit_id";
    private static final String KEY_NETWORK_NAME = "network_name";
    private static final String KEY_REVENUE = "revenue";
    private static final String KEY_THIRD_PARTY_AD_PLACEMENT_ID = "third_party_ad_placement_id";
    private static final int MAX_STRING_LENGTH = 500;
    private final HandleAdRevenueEvent handleAdRevenueEvent;
    private final Logger logger;
    private final CoroutineScope scope;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2, reason: invalid class name */
    /* JADX INFO: compiled from: MaxAdRevenueListener.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2", f = "MaxAdRevenueListener.kt", i = {0}, l = {45}, m = "invokeSuspend", n = {"adRevenueData"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Bundle $messageData;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Bundle bundle, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$messageData = bundle;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MaxAdRevenueListener.this.new AnonymousClass2(this.$messageData, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AdRevenueData adRevenueData;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AdRevenueData revenueBundle = MaxAdRevenueListener.this.parseRevenueBundle(this.$messageData);
                    if (revenueBundle != null) {
                        this.L$0 = revenueBundle;
                        this.label = 1;
                        if (MaxAdRevenueListener.this.handleAdRevenueEvent.invoke(revenueBundle, ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX, AdRevenueOrigin.AUTOMATIC_COLLECTION, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        adRevenueData = revenueBundle;
                    } else {
                        Logger.DefaultImpls.trace$default(MaxAdRevenueListener.this.logger, "Failed to parse revenue event", null, 2, null);
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                adRevenueData = (AdRevenueData) this.L$0;
                ResultKt.throwOnFailure(obj);
                Logger.DefaultImpls.trace$default(MaxAdRevenueListener.this.logger, "Ad revenue event sent: revenue=" + adRevenueData.getRevenue() + ", network=" + adRevenueData.getNetworkName(), null, 2, null);
            } catch (Exception e) {
                MaxAdRevenueListener.this.logger.trace("Failed to process ad revenue event", e);
            }
            return Unit.INSTANCE;
        }
    }

    public MaxAdRevenueListener(HandleAdRevenueEvent handleAdRevenueEvent, CoroutineScope scope, Logger logger) {
        Intrinsics.checkNotNullParameter(handleAdRevenueEvent, "handleAdRevenueEvent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.handleAdRevenueEvent = handleAdRevenueEvent;
        this.scope = scope;
        this.logger = logger;
    }

    private final String bundleToTraceString(final Bundle bundle) {
        try {
            if (bundle.isEmpty()) {
                return JsonUtils.EMPTY_JSON;
            }
            Set<String> setKeySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "keySet(...)");
            return CollectionsKt.joinToString$default(setKeySet, null, "{", "}", 0, null, new Function1() { // from class: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda1
                @Override // p005kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MaxAdRevenueListener.bundleToTraceString$lambda$1(bundle, (String) obj);
                }
            }, 25, null);
        } catch (Throwable unused) {
            return "<error serializing bundle>";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence bundleToTraceString$lambda$1(Bundle bundle, String str) {
        String string;
        try {
            Object obj = bundle.get(str);
            if (obj == null) {
                string = AbstractJsonLexerKt.NULL;
            } else if (obj instanceof String) {
                string = (((String) obj).length() <= 500 ? new StringBuilder("\"").append((String) obj).append('\"') : new StringBuilder("\"").append(StringsKt.take((String) obj, 500)).append("...\"")).toString();
            } else {
                string = obj.toString();
            }
            return str + G5.U + string;
        } catch (Throwable unused) {
            return str + "=<error>";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onMessageReceived$lambda$0(MaxAdRevenueListener maxAdRevenueListener, Bundle bundle) {
        return "Ad revenue subscribed event (raw): " + maxAdRevenueListener.bundleToTraceString(bundle);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (r0.equals("REWARDED_INTERSTITIAL") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
    
        if (r0.equals("REWARDED_INTER") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
    
        if (r0.equals("REWARDED") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
    
        return com.unity3d.ads.core.data.model.AdRevenueAdFormat.REWARDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r0.equals("INTER") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
    
        if (r0.equals("INTERSTITIAL") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
    
        return com.unity3d.ads.core.data.model.AdRevenueAdFormat.INTERSTITIAL;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.unity3d.ads.core.data.model.AdRevenueAdFormat parseMaxAdFormatString(java.lang.String r3) {
        /*
            r2 = this;
            r0 = r3
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            if (r0 == 0) goto L7e
            boolean r0 = p005kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto Ld
            goto L7e
        Ld:
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r0 = r3.toUpperCase(r0)
            java.lang.String r1 = "toUpperCase(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            int r1 = r0.hashCode()
            switch(r1) {
                case -1999289321: goto L6b;
                case -1372958932: goto L5f;
                case 2374915: goto L53;
                case 69823676: goto L4a;
                case 543046670: goto L3e;
                case 1654540619: goto L35;
                case 1854800829: goto L2c;
                case 1951953708: goto L20;
                default: goto L1f;
            }
        L1f:
            goto L77
        L20:
            java.lang.String r1 = "BANNER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L29
            goto L77
        L29:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.BANNER
            return r3
        L2c:
            java.lang.String r1 = "REWARDED_INTERSTITIAL"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L47
            goto L77
        L35:
            java.lang.String r1 = "REWARDED_INTER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L47
            goto L77
        L3e:
            java.lang.String r1 = "REWARDED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L47
            goto L77
        L47:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.REWARDED
            return r3
        L4a:
            java.lang.String r1 = "INTER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L68
            goto L77
        L53:
            java.lang.String r1 = "MREC"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L77
        L5c:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.MREC
            return r3
        L5f:
            java.lang.String r1 = "INTERSTITIAL"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L68
            goto L77
        L68:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.INTERSTITIAL
            return r3
        L6b:
            java.lang.String r1 = "NATIVE"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L74
            goto L77
        L74:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.NATIVE
            return r3
        L77:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat$Companion r0 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.INSTANCE
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = r0.fromString(r3)
            return r3
        L7e:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener.parseMaxAdFormatString(java.lang.String):com.unity3d.ads.core.data.model.AdRevenueAdFormat");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:15:0x0051 A[Catch: Exception -> 0x0099, TryCatch #0 {Exception -> 0x0099, blocks: (B:3:0x0009, B:5:0x0010, B:13:0x0049, B:15:0x0051, B:17:0x0058, B:19:0x0060, B:21:0x0067, B:23:0x006f, B:25:0x0076, B:27:0x007e, B:29:0x0085, B:7:0x0019, B:9:0x0023, B:11:0x0030, B:12:0x0036), top: B:34:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0057  */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[Catch: Exception -> 0x0099, TryCatch #0 {Exception -> 0x0099, blocks: (B:3:0x0009, B:5:0x0010, B:13:0x0049, B:15:0x0051, B:17:0x0058, B:19:0x0060, B:21:0x0067, B:23:0x006f, B:25:0x0076, B:27:0x007e, B:29:0x0085, B:7:0x0019, B:9:0x0023, B:11:0x0030, B:12:0x0036), top: B:34:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0066  */
    /* JADX WARN: Code duplicated, block: B:23:0x006f A[Catch: Exception -> 0x0099, TryCatch #0 {Exception -> 0x0099, blocks: (B:3:0x0009, B:5:0x0010, B:13:0x0049, B:15:0x0051, B:17:0x0058, B:19:0x0060, B:21:0x0067, B:23:0x006f, B:25:0x0076, B:27:0x007e, B:29:0x0085, B:7:0x0019, B:9:0x0023, B:11:0x0030, B:12:0x0036), top: B:34:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x007e A[Catch: Exception -> 0x0099, TryCatch #0 {Exception -> 0x0099, blocks: (B:3:0x0009, B:5:0x0010, B:13:0x0049, B:15:0x0051, B:17:0x0058, B:19:0x0060, B:21:0x0067, B:23:0x006f, B:25:0x0076, B:27:0x007e, B:29:0x0085, B:7:0x0019, B:9:0x0023, B:11:0x0030, B:12:0x0036), top: B:34:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    public final AdRevenueData parseRevenueBundle(Bundle bundle) {
        Double dValueOf;
        String string;
        String strValidateString;
        String string2;
        String strValidateString2;
        String string3;
        String strValidateString3;
        String string4;
        String strValidateString4;
        try {
            if (bundle.containsKey("revenue")) {
                double d = bundle.getDouble("revenue");
                if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || Math.abs(d) > Double.MAX_VALUE) {
                    Logger.DefaultImpls.trace$default(this.logger, "Invalid or missing revenue in revenue event: " + d, null, 2, null);
                } else {
                    dValueOf = Double.valueOf(d);
                }
                string = bundle.getString("country_code");
                if (string != null) {
                    strValidateString = validateString(string);
                } else {
                    strValidateString = null;
                }
                string2 = bundle.getString(KEY_NETWORK_NAME);
                if (string2 != null) {
                    strValidateString2 = validateString(string2);
                } else {
                    strValidateString2 = null;
                }
                string3 = bundle.getString(KEY_MAX_AD_UNIT_ID);
                if (string3 != null) {
                    strValidateString3 = validateString(string3);
                } else {
                    strValidateString3 = null;
                }
                string4 = bundle.getString(KEY_THIRD_PARTY_AD_PLACEMENT_ID);
                if (string4 != null) {
                    strValidateString4 = validateString(string4);
                } else {
                    strValidateString4 = null;
                }
                return new AdRevenueData(null, dValueOf, strValidateString, strValidateString2, strValidateString3, strValidateString4, parseMaxAdFormatString(bundle.getString("ad_format")), 1, null);
            }
            Logger.DefaultImpls.trace$default(this.logger, "Missing revenue key in revenue event", null, 2, null);
            dValueOf = null;
            string = bundle.getString("country_code");
            if (string != null) {
                strValidateString = validateString(string);
            } else {
                strValidateString = null;
            }
            string2 = bundle.getString(KEY_NETWORK_NAME);
            if (string2 != null) {
                strValidateString2 = validateString(string2);
            } else {
                strValidateString2 = null;
            }
            string3 = bundle.getString(KEY_MAX_AD_UNIT_ID);
            if (string3 != null) {
                strValidateString3 = validateString(string3);
            } else {
                strValidateString3 = null;
            }
            string4 = bundle.getString(KEY_THIRD_PARTY_AD_PLACEMENT_ID);
            if (string4 != null) {
                strValidateString4 = validateString(string4);
            } else {
                strValidateString4 = null;
            }
            return new AdRevenueData(null, dValueOf, strValidateString, strValidateString2, strValidateString3, strValidateString4, parseMaxAdFormatString(bundle.getString("ad_format")), 1, null);
        } catch (Exception e) {
            this.logger.trace("Failed to parse revenue Bundle", e);
            return null;
        }
    }

    private final String validateString(String str) {
        if (StringsKt.isBlank(str) || str.length() > 500) {
            return null;
        }
        return str;
    }

    public final void onMessageReceived(final Bundle messageData) {
        Intrinsics.checkNotNullParameter(messageData, "messageData");
        this.logger.trace(new Function0() { // from class: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MaxAdRevenueListener.onMessageReceived$lambda$0(this.f$0, messageData);
            }
        });
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(messageData, null), 3, null);
    }
}
