package com.unity3d.ads.core.domain.capability;

import com.unity3d.ads.core.domain.IsCronetFallbackAvailable;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClassPresenceCapabilitiesChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001d\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0096\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;", "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;", "isClassPresent", "Lkotlin/Function1;", "", "", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "invoke", "", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ClassPresenceCapabilitiesChecker implements CapabilitiesChecker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<Pair<InitializationRequestOuterClass.QuickCapabilities.Android.Capability, String>> PROBES = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_CRONET, "org.chromium.net.CronetEngine"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_CRONET_FALLBACK_PROVIDER, IsCronetFallbackAvailable.FALLBACK_PROVIDER_CLASS), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_OKHTTP3, "okhttp3.OkHttpClient"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_PLAY_SERVICES_BASE, "com.google.android.gms.common.GoogleApiAvailability"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_OMID, "com.iab.omid.library.unity3d.Omid"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_INSTALL_REFERRER, "com.android.installreferrer.api.InstallReferrerClient"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_APP_SET_ID, "com.google.android.gms.appset.AppSet"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_FIREBASE_INSTALLATIONS, "com.google.firebase.installations.FirebaseInstallations"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_BILLING_CLIENT, "com.android.billingclient.api.BillingClient"), TuplesKt.to(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_AD_QUALITY, "com.ironsource.adqualitysdk.sdk.IronSourceAdQuality")});
    private final Function1<String, Boolean> isClassPresent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.capability.ClassPresenceCapabilitiesChecker$1, reason: invalid class name */
    /* JADX INFO: compiled from: ClassPresenceCapabilitiesChecker.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, CapabilitiesCheckerKt.class, "isClassResolvable", "isClassResolvable(Ljava/lang/String;)Z", 1);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public final Boolean invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return Boolean.valueOf(CapabilitiesCheckerKt.isClassResolvable(p0));
        }
    }

    /* JADX INFO: compiled from: ClassPresenceCapabilitiesChecker.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;", "", "<init>", "()V", "PROBES", "", "Lkotlin/Pair;", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;", "", "getPROBES", "()Ljava/util/List;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<Pair<InitializationRequestOuterClass.QuickCapabilities.Android.Capability, String>> getPROBES() {
            return ClassPresenceCapabilitiesChecker.PROBES;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassPresenceCapabilitiesChecker() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassPresenceCapabilitiesChecker(Function1<? super String, Boolean> isClassPresent) {
        Intrinsics.checkNotNullParameter(isClassPresent, "isClassPresent");
        this.isClassPresent = isClassPresent;
    }

    public /* synthetic */ ClassPresenceCapabilitiesChecker(AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AnonymousClass1.INSTANCE : anonymousClass1);
    }

    @Override // com.unity3d.ads.core.domain.capability.CapabilitiesChecker
    public List<InitializationRequestOuterClass.QuickCapabilities.Android.Capability> invoke() {
        List<Pair<InitializationRequestOuterClass.QuickCapabilities.Android.Capability, String>> list = PROBES;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (this.isClassPresent.invoke((String) ((Pair) obj).component2()).booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add((InitializationRequestOuterClass.QuickCapabilities.Android.Capability) ((Pair) it.next()).getFirst());
        }
        return arrayList3;
    }
}
