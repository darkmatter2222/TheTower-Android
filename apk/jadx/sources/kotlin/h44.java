package kotlin;

import com.google.common.collect.Comparators;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class h44 implements Comparator {
    public final boolean a;

    public h44(boolean z) {
        this.a = z;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        byte[] bArr;
        int[] iArr = {446703183, 1862618146, 1081639777, -1087935358, -803036955, 1104011716, 5522510, 2017461929, 496612959};
        int i = 0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int iA = p30.a((i3 & (~i2)) | iArr[2], (i2 & iArr[3]) | iArr[4], iArr[5], iArr[6]) ^ (iArr[7] % iArr[8]);
        l44 l44Var = (l44) obj;
        l44 l44Var2 = (l44) obj2;
        int i4 = l44Var.g;
        if (i4 != l44Var2.g) {
            throw new IllegalArgumentException();
        }
        int i5 = iA + i4;
        try {
            if (i4 == 0) {
                throw null;
            }
            switch (i5) {
                case 0:
                    return 0;
                case 1:
                    if (this.a) {
                        return l44Var.b() != l44Var2.b() ? 1 : 0;
                    }
                    throw new IllegalArgumentException();
                case 2:
                    return Long.compare(l44Var.c(), l44Var2.c());
                case 3:
                    p34 p34VarD = l44Var.d();
                    p34 p34VarD2 = l44Var2.d();
                    int i6 = 0;
                    while (true) {
                        bArr = p34VarD.a;
                        if (i < bArr.length && i6 < p34VarD2.a.length) {
                            int iCompare = Integer.compare(p34.a(p34VarD.a(i)), p34.a(p34VarD2.a(i6)));
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            i++;
                            i6++;
                        }
                    }
                    return Integer.compare(bArr.length, p34VarD2.a.length);
                case 4:
                    return Comparators.lexicographical(this).compare(l44Var.e(), l44Var2.e());
                case 5:
                    if (!this.a) {
                        throw new IllegalArgumentException();
                    }
                    if (l44Var.f() == l44Var2.f()) {
                        return 0;
                    }
                case 6:
                    return Double.compare(l44Var.g(), l44Var2.g());
                default:
                    return 0;
            }
        } catch (i44 e) {
            throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
        }
    }
}
