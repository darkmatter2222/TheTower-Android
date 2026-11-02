package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum ca0 implements yh1.a {
    SAFE_BROWSING_URL_API_TYPE_UNSPECIFIED(0),
    PVER3_NATIVE(1),
    PVER4_NATIVE(2),
    ANDROID_SAFETYNET(3),
    FLYWHEEL(4),
    REAL_TIME(5),
    PVER5_NATIVE_REAL_TIME(6),
    ANDROID_SAFEBROWSING_REAL_TIME(7),
    ANDROID_SAFEBROWSING(8),
    CLIENT_SIDE_DETECTION(9),
    GLIC(10),
    PVER5_NATIVE_LOCAL_BLOCKLIST(11);

    public final int a;

    ca0(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(ca0.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
