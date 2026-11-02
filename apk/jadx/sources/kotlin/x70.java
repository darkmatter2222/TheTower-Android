package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum x70 implements yh1.a {
    SOURCE_UNSPECIFIED(0),
    CLIENT_GENERATION(1);

    public final int a;

    x70(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(x70.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
