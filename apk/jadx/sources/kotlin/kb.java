package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum kb implements yh1.a {
    ADSHIELD_VERSION_UNSPECIFIED(0),
    ADSHIELD_VERSION_1(1),
    ADSHIELD_VERSION_2(2),
    ADSHIELD_VERSION_3(3),
    ADSHIELD_VERSION_3_STATIC_PROGRAM(4);

    public final int a;

    kb(int i) {
        this.a = i;
    }

    public static kb a(int i) {
        if (i == 0) {
            return ADSHIELD_VERSION_UNSPECIFIED;
        }
        if (i == 1) {
            return ADSHIELD_VERSION_1;
        }
        if (i == 2) {
            return ADSHIELD_VERSION_2;
        }
        if (i == 3) {
            return ADSHIELD_VERSION_3;
        }
        if (i != 4) {
            return null;
        }
        return ADSHIELD_VERSION_3_STATIC_PROGRAM;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(kb.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
