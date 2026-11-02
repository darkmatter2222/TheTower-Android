package kotlin;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public enum o9 {
    b(TJAdUnitConstants.String.HTML),
    /* JADX INFO: Fake field, exist only in values array */
    EF1("native"),
    c("javascript");

    public final String a;

    o9(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
