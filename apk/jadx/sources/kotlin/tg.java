package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum tg implements yh1.a {
    NETWORK_INTERFACE_UNSPECIFIED(0),
    NETWORK_INTERFACE_NOT_SET(1),
    NETWORK_INTERFACE_ERROR(2),
    NETWORK_INTERFACE_WIFI(3),
    NETWORK_INTERFACE_CELLULAR(4),
    NETWORK_INTERFACE_ETHERNET(5),
    NETWORK_INTERFACE_LOOPBACK(6),
    NETWORK_INTERFACE_OTHER(7),
    NETWORK_INTERFACE_NO_CONNECTION(8);

    public final int a;

    tg(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(tg.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
