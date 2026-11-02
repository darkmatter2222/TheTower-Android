package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum yn implements yh1.a {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6),
    RISCV64(7),
    UNKNOWN(999);

    public final int a;

    yn(int i2) {
        this.a = i2;
    }

    public static yn a(int i2) {
        if (i2 == 0) {
            return UNSUPPORTED;
        }
        if (i2 == 2) {
            return ARM7;
        }
        if (i2 == 999) {
            return UNKNOWN;
        }
        if (i2 == 4) {
            return X86;
        }
        if (i2 == 5) {
            return ARM64;
        }
        if (i2 == 6) {
            return X86_64;
        }
        if (i2 != 7) {
            return null;
        }
        return RISCV64;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(yn.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
