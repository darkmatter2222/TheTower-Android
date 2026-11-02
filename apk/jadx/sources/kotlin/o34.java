package kotlin;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class o34 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        byte[] bArr;
        p34 p34Var = (p34) obj;
        p34 p34Var2 = (p34) obj2;
        int i = 0;
        int i2 = 0;
        while (true) {
            bArr = p34Var.a;
            if (i >= bArr.length || i2 >= p34Var2.a.length) {
                break;
            }
            int iCompare = Integer.compare(p34.a(p34Var.a(i)), p34.a(p34Var2.a(i2)));
            if (iCompare != 0) {
                return iCompare;
            }
            i++;
            i2++;
        }
        return Integer.compare(bArr.length, p34Var2.a.length);
    }
}
