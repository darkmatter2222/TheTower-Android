package com.google.android.play.deku.j$.util.concurrent;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class p extends j {
    public p e;
    public p f;
    public p g;
    public p h;
    public boolean i;

    public p(int i, Object obj, Object obj2, j jVar, p pVar) {
        super(i, obj, obj2, jVar);
        this.e = pVar;
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.j
    public final j a(int i, Object obj) {
        return b(i, obj, null);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0046 A[PHI: r7
  0x0046: PHI (r7v5 java.lang.Class) = (r7v4 java.lang.Class), (r7v6 java.lang.Class) binds: [B:28:0x003f, B:20:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:42:0x004c A[SYNTHETIC] */
    public final p b(int i, Object obj, Class cls) {
        p pVarB;
        if (obj == null) {
            return null;
        }
        do {
            p pVar = this.f;
            p pVar2 = this.g;
            int i2 = this.a;
            if (i2 <= i) {
                if (i2 >= i) {
                    Object obj2 = this.b;
                    if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                        return this;
                    }
                    if (pVar != null) {
                        if (pVar2 != null) {
                            if (cls == null && (cls = ConcurrentHashMap.c(obj)) == null) {
                                pVarB = pVar2.b(i, obj, cls);
                                if (pVarB != null) {
                                    return pVarB;
                                }
                            } else {
                                int i3 = ConcurrentHashMap.g;
                                int iCompareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                                if (iCompareTo == 0) {
                                    pVarB = pVar2.b(i, obj, cls);
                                    if (pVarB != null) {
                                        return pVarB;
                                    }
                                } else if (iCompareTo >= 0) {
                                    pVar = pVar2;
                                }
                            }
                        }
                        this = pVar;
                    }
                }
                this = pVar2;
            } else {
                this = pVar;
            }
        } while (this != null);
        return null;
    }
}
