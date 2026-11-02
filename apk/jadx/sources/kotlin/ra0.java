package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ra0 extends vz0 implements uw1 {
    public static final int A = 25;
    public static final int B = 26;
    public static final int C = 27;
    public static final int D = 29;
    private static final ra0 DEFAULT_INSTANCE;
    public static final int E = 30;
    public static final int F = 31;
    public static final int G = 32;
    public static final int H = 33;
    public static final int I = 34;
    public static final int J = 35;
    public static final int K = 36;
    public static final int L = 37;
    public static final int c = 10;
    public static final int d = 11;
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 3;
    public static final int h = 12;
    public static final int i = 4;
    public static final int j = 16;
    public static final int k = 13;
    public static final int l = 14;
    public static final int m = 5;
    public static final int n = 6;
    public static final int o = 7;
    public static final int p = 8;
    public static final int q = 9;
    public static final int r = 15;
    public static final int s = 17;
    public static final int t = 18;
    public static final int u = 19;
    public static final int v = 20;
    public static final int w = 21;
    public static final int x = 22;
    public static final int y = 23;
    public static final int z = 24;
    private int bitField0_;
    private aa0 clientProperties_;
    private boolean complete_;
    private k80 creativeProperties_;
    private boolean didProceed_;
    private o80 downloadItemInfo_;
    private int downloadVerdict_;
    private k90 permissionPromptInfo_;
    private f80 population_;
    private s90 renderedAd_;
    private boolean repeatVisit_;
    private boolean showDownloadInFolder_;
    private int type_;
    private ia0 urlRealTimeAndHashRealTimeDiscrepancyInfo_;
    private int urlRequestDestination_;
    private ma0 userInfo_;
    private qa0 warningShownInfo_;
    private long warningShownTimestampMsec_;
    private byte memoizedIsInitialized = 2;
    private String url_ = "";
    private String pageUrl_ = "";
    private String referrerUrl_ = "";
    private yh1.f<y90> resources_ = vz0.k();
    private yh1.f<va0> dom_ = vz0.k();
    private String clickUrl_ = "";
    private yh1.f<String> clientAsn_ = vz0.k();
    private String clientCountry_ = "";
    private du token_ = du.b;
    private String userAgent_ = "";
    private yh1.f<String> disallowedPermissions_ = vz0.k();
    private yh1.f<String> rejectedPermissions_ = vz0.k();
    private yh1.f<db0> referrerChain_ = vz0.k();
    private String safetyNetId_ = "";
    private yh1.f<u80> downloadWarningActions_ = vz0.k();
    private yh1.f<i90> interstitialInteractions_ = vz0.k();
    private yh1.f<o90> phishySiteInteractions_ = vz0.k();
    private String locale_ = "";
    private yh1.f<ea0> serviceWorkerBehaviors_ = vz0.k();

    static {
        ra0 ra0Var = new ra0();
        DEFAULT_INSTANCE = ra0Var;
        vz0.a((Class<ra0>) ra0.class, ra0Var);
    }

    public static i80 v() {
        return (i80) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 1:
                return new ra0();
            case 2:
                return new i80();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0001$\u0000\u0001\u0001%$\u0000\n\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001d᠌\u0014\u001e\u001b\u001f\u001b ဂ\u0015!ဉ\u0016\"ဉ\u0017#ဈ\u0018$ဉ\u0019%\u001b", new Object[]{"bitField0_", "url_", "pageUrl_", "referrerUrl_", "resources_", y90.class, "complete_", "clientAsn_", "clientCountry_", "didProceed_", "repeatVisit_", "type_", t90.a, "downloadVerdict_", g80.a, "creativeProperties_", "clickUrl_", "renderedAd_", "token_", "dom_", va0.class, "clientProperties_", "showDownloadInFolder_", "userAgent_", "disallowedPermissions_", "rejectedPermissions_", "userInfo_", "referrerChain_", db0.class, "downloadItemInfo_", "safetyNetId_", "population_", "downloadWarningActions_", u80.class, "urlRequestDestination_", ja0.a, "interstitialInteractions_", i90.class, "phishySiteInteractions_", o90.class, "warningShownTimestampMsec_", "warningShownInfo_", "permissionPromptInfo_", "locale_", "urlRealTimeAndHashRealTimeDiscrepancyInfo_", "serviceWorkerBehaviors_", ea0.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(ra0.class);
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                return null;
        }
    }

    public final void a(aa0 aa0Var) {
        Objects.requireNonNull(aa0Var);
        this.clientProperties_ = aa0Var;
        this.bitField0_ |= 8192;
    }

    public final void a(k80 k80Var) {
        Objects.requireNonNull(k80Var);
        this.creativeProperties_ = k80Var;
        this.bitField0_ |= 32;
    }

    public final void a(y90 y90Var) {
        Objects.requireNonNull(y90Var);
        yh1.f<y90> fVar = this.resources_;
        if (!fVar.b()) {
            this.resources_ = vz0.a(fVar);
        }
        this.resources_.add(y90Var);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 64;
        this.clickUrl_ = str;
    }

    public final void c(String str) {
        this.bitField0_ |= 8;
        this.pageUrl_ = str;
    }

    public final void d(String str) {
        this.bitField0_ |= 4;
        this.url_ = str;
    }
}
