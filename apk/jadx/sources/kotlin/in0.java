package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum in0 implements yh1.a {
    DEVICE_TYPE_UNKNOWN(0),
    DEVICE_TYPE_PHONE(1),
    DEVICE_TYPE_TABLET(2),
    DEVICE_TYPE_WATCH(3),
    DEVICE_TYPE_AUTO(4),
    DEVICE_TYPE_TV(5),
    DEVICE_TYPE_PC(6);

    public final int a;

    in0(int i2) {
        this.a = i2;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(in0.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
