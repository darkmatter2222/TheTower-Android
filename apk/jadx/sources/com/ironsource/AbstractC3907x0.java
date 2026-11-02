package com.ironsource;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC3907x0 {
    public static final a s = new a(null);
    public static final int t = -1;
    private final C3597g0 a;
    private final boolean b;
    private final String c;
    private final List<NetworkSettings> d;
    private final C3845ta e;
    private final A2 f;
    private int g;
    private final int h;
    private boolean i;
    private final int j;
    private final int k;
    private final M0 l;
    private final long m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private boolean q;
    private Eb r;

    /* JADX INFO: renamed from: com.ironsource.x0$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <AdFormatConfig, AdUnitData> AdUnitData a(C3597g0 adProperties, C3456ab c3456ab, Function1<? super S3, ? extends AdFormatConfig> getAdFormatConfig, Function2<? super C3889w0, ? super AdFormatConfig, ? extends AdUnitData> createAdUnitData) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            Intrinsics.checkNotNullParameter(getAdFormatConfig, "getAdFormatConfig");
            Intrinsics.checkNotNullParameter(createAdUnitData, "createAdUnitData");
            AdFormatConfig adformatconfigInvoke = getAdFormatConfig.invoke((c3456ab == null || (ueD = c3456ab.d()) == null) ? null : ueD.c());
            if (adformatconfigInvoke == null) {
                throw new IllegalStateException("Error getting " + adProperties.a() + " configurations");
            }
            if (c3456ab == null || (listEmptyList = c3456ab.d(adProperties.e(), adProperties.c())) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            String strF = IronSourceUtils.f();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listEmptyList, 10));
            Iterator<T> it = listEmptyList.iterator();
            while (it.hasNext()) {
                arrayList.add(((Ec) it.next()).f());
            }
            C3845ta c3845taB = C3845ta.b();
            Intrinsics.checkNotNullExpressionValue(c3845taB, "getInstance(...)");
            return createAdUnitData.invoke(new C3889w0(strF, arrayList, c3845taB), adformatconfigInvoke);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC3907x0(C3597g0 adProperties, boolean z, String str, List<? extends NetworkSettings> providerList, C3845ta publisherDataHolder, A2 auctionSettings, int i, int i2, boolean z2, int i3, int i4, M0 loadingData, long j, boolean z3, boolean z4, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(providerList, "providerList");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        Intrinsics.checkNotNullParameter(auctionSettings, "auctionSettings");
        Intrinsics.checkNotNullParameter(loadingData, "loadingData");
        this.a = adProperties;
        this.b = z;
        this.c = str;
        this.d = providerList;
        this.e = publisherDataHolder;
        this.f = auctionSettings;
        this.g = i;
        this.h = i2;
        this.i = z2;
        this.j = i3;
        this.k = i4;
        this.l = loadingData;
        this.m = j;
        this.n = z3;
        this.o = z4;
        this.p = z5;
        this.q = z6;
    }

    public /* synthetic */ AbstractC3907x0(C3597g0 c3597g0, boolean z, String str, List list, C3845ta c3845ta, A2 a2, int i, int i2, boolean z2, int i3, int i4, M0 m0, long j, boolean z3, boolean z4, boolean z5, boolean z6, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3597g0, z, str, list, c3845ta, a2, i, i2, z2, i3, i4, m0, j, z3, z4, z5, (i5 & 65536) != 0 ? false : z6);
    }

    public final int a() {
        return this.k;
    }

    public AdData a(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        AdData adDataCreateAdDataForNetworkAdapter = AdData.createAdDataForNetworkAdapter(b(providerSettings), b().a(), this.c);
        Intrinsics.checkNotNullExpressionValue(adDataCreateAdDataForNetworkAdapter, "createAdDataForNetworkAdapter(...)");
        return adDataCreateAdDataForNetworkAdapter;
    }

    public final NetworkSettings a(String instanceName) {
        Object next;
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Iterator<T> it = this.d.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((NetworkSettings) next).getProviderInstanceName().equals(instanceName)) {
                return (NetworkSettings) next;
            }
        }
        next = null;
        return (NetworkSettings) next;
    }

    public final void a(int i) {
        this.g = i;
    }

    public final void a(Eb eb) {
        this.r = eb;
    }

    public final void a(boolean z) {
        this.i = z;
    }

    public C3597g0 b() {
        return this.a;
    }

    public abstract JSONObject b(NetworkSettings networkSettings);

    public final void b(boolean z) {
        this.q = z;
    }

    public abstract String c();

    public final boolean d() {
        return this.i;
    }

    public final A2 e() {
        return this.f;
    }

    public final long f() {
        return this.m;
    }

    public final int g() {
        return this.j;
    }

    public final int h() {
        return this.h;
    }

    public final Eb i() {
        return this.r;
    }

    public final M0 j() {
        return this.l;
    }

    public abstract String k();

    public final int l() {
        return this.g;
    }

    public final String m() {
        String strC;
        C3717md c3717mdF = b().f();
        return (c3717mdF == null || (strC = c3717mdF.c()) == null) ? "" : strC;
    }

    public final List<NetworkSettings> n() {
        return this.d;
    }

    public final boolean o() {
        return this.n;
    }

    public final C3845ta p() {
        return this.e;
    }

    public final boolean q() {
        return this.p;
    }

    public final boolean r() {
        return this.q;
    }

    public final String s() {
        return this.c;
    }

    public final boolean t() {
        return this.o;
    }

    public final boolean u() {
        return this.f.g() > 0;
    }

    public boolean v() {
        return this.b;
    }

    public final String w() {
        String element = String.format(Locale.getDefault(), "%s: %d, %s: %b, %s: %b", com.ironsource.mediationsdk.d.x, Integer.valueOf(this.g), com.ironsource.mediationsdk.d.y, Boolean.valueOf(this.i), com.ironsource.mediationsdk.d.z, Boolean.valueOf(this.q));
        Eb eb = this.r;
        if (eb != null) {
            element = ((Object) element) + ", loadGrace: " + eb.b();
        }
        Intrinsics.checkNotNullExpressionValue(element, "element");
        return element;
    }
}
