package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum hg implements yh1.a {
    FUNCTION_UNSPECIFIED(0),
    FUNCTION_METHOD_EXCHANGEIMPLEMENTATIONS(1),
    FUNCTION_METHOD_SETIMPLEMENTATIONS(2),
    FUNCTION_CLASS_ADDMETHOD(3),
    FUNCTION_CLASS_REPLACEMETHOD(4);

    public final int a;

    hg(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(hg.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
