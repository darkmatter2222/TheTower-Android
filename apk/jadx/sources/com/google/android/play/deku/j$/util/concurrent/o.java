package com.google.android.play.deku.j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class o extends j {
    public static final com.google.android.play.deku.j$.sun.misc.a h;
    public static final long i;
    public p e;
    public volatile p f;
    public volatile Thread g;
    volatile int lockState;

    static {
        com.google.android.play.deku.j$.sun.misc.a aVar = com.google.android.play.deku.j$.sun.misc.a.b;
        h = aVar;
        i = aVar.a(o.class, "lockState");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x004b A[PHI: r7
  0x004b: PHI (r7v3 java.lang.Class<?>) = (r7v2 java.lang.Class<?>), (r7v4 java.lang.Class<?>) binds: [B:24:0x0049, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    public o(p pVar) {
        int i2;
        super(-2, null, null);
        this.f = pVar;
        p pVar2 = null;
        while (pVar != null) {
            p pVar3 = (p) pVar.d;
            pVar.g = null;
            pVar.f = null;
            if (pVar2 == null) {
                pVar.e = null;
                pVar.i = false;
            } else {
                Object obj = pVar.b;
                int i3 = pVar.a;
                p pVar4 = pVar2;
                Class<?> clsC = null;
                while (true) {
                    Object obj2 = pVar4.b;
                    int i4 = pVar4.a;
                    if (i4 > i3) {
                        i2 = -1;
                    } else if (i4 < i3) {
                        i2 = 1;
                    } else if (clsC == null && (clsC = ConcurrentHashMap.c(obj)) == null) {
                        i2 = i(obj, obj2);
                    } else {
                        int i5 = ConcurrentHashMap.g;
                        int iCompareTo = (obj2 == null || obj2.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj2);
                        if (iCompareTo == 0) {
                            i2 = i(obj, obj2);
                        } else {
                            i2 = iCompareTo;
                        }
                    }
                    p pVar5 = i2 <= 0 ? pVar4.f : pVar4.g;
                    if (pVar5 == null) {
                        break;
                    } else {
                        pVar4 = pVar5;
                    }
                }
                pVar.e = pVar4;
                if (i2 <= 0) {
                    pVar4.f = pVar;
                } else {
                    pVar4.g = pVar;
                }
                pVar = c(pVar2, pVar);
            }
            pVar2 = pVar;
            pVar = pVar3;
        }
        this.e = pVar2;
    }

    public static p b(p pVar, p pVar2) {
        while (pVar2 != null && pVar2 != pVar) {
            p pVar3 = pVar2.e;
            if (pVar3 == null) {
                pVar2.i = false;
                return pVar2;
            }
            if (pVar2.i) {
                pVar2.i = false;
                return pVar;
            }
            p pVar4 = pVar3.f;
            if (pVar4 == pVar2) {
                p pVar5 = pVar3.g;
                if (pVar5 != null && pVar5.i) {
                    pVar5.i = false;
                    pVar3.i = true;
                    pVar = g(pVar, pVar3);
                    pVar3 = pVar2.e;
                    pVar5 = pVar3 == null ? null : pVar3.g;
                }
                if (pVar5 != null) {
                    p pVar6 = pVar5.f;
                    p pVar7 = pVar5.g;
                    if ((pVar7 == null || !pVar7.i) && (pVar6 == null || !pVar6.i)) {
                        pVar5.i = true;
                    } else {
                        if (pVar7 == null || !pVar7.i) {
                            if (pVar6 != null) {
                                pVar6.i = false;
                            }
                            pVar5.i = true;
                            pVar = h(pVar, pVar5);
                            pVar3 = pVar2.e;
                            pVar5 = pVar3 != null ? pVar3.g : null;
                        }
                        if (pVar5 != null) {
                            pVar5.i = pVar3 == null ? false : pVar3.i;
                            p pVar8 = pVar5.g;
                            if (pVar8 != null) {
                                pVar8.i = false;
                            }
                        }
                        if (pVar3 != null) {
                            pVar3.i = false;
                            pVar = g(pVar, pVar3);
                        }
                        pVar2 = pVar;
                    }
                }
                pVar2 = pVar3;
            } else {
                if (pVar4 != null && pVar4.i) {
                    pVar4.i = false;
                    pVar3.i = true;
                    pVar = h(pVar, pVar3);
                    pVar3 = pVar2.e;
                    pVar4 = pVar3 == null ? null : pVar3.f;
                }
                if (pVar4 != null) {
                    p pVar9 = pVar4.f;
                    p pVar10 = pVar4.g;
                    if ((pVar9 == null || !pVar9.i) && (pVar10 == null || !pVar10.i)) {
                        pVar4.i = true;
                    } else {
                        if (pVar9 == null || !pVar9.i) {
                            if (pVar10 != null) {
                                pVar10.i = false;
                            }
                            pVar4.i = true;
                            pVar = g(pVar, pVar4);
                            pVar3 = pVar2.e;
                            pVar4 = pVar3 != null ? pVar3.f : null;
                        }
                        if (pVar4 != null) {
                            pVar4.i = pVar3 == null ? false : pVar3.i;
                            p pVar11 = pVar4.f;
                            if (pVar11 != null) {
                                pVar11.i = false;
                            }
                        }
                        if (pVar3 != null) {
                            pVar3.i = false;
                            pVar = h(pVar, pVar3);
                        }
                        pVar2 = pVar;
                    }
                }
                pVar2 = pVar3;
            }
        }
        return pVar;
    }

    public static p c(p pVar, p pVar2) {
        p pVar3;
        pVar2.i = true;
        while (true) {
            p pVar4 = pVar2.e;
            if (pVar4 == null) {
                pVar2.i = false;
                return pVar2;
            }
            if (!pVar4.i || (pVar3 = pVar4.e) == null) {
                return pVar;
            }
            p pVar5 = pVar3.f;
            if (pVar4 == pVar5) {
                p pVar6 = pVar3.g;
                if (pVar6 == null || !pVar6.i) {
                    if (pVar2 == pVar4.g) {
                        pVar = g(pVar, pVar4);
                        p pVar7 = pVar4.e;
                        pVar3 = pVar7 == null ? null : pVar7.e;
                        pVar4 = pVar7;
                        pVar2 = pVar4;
                    }
                    if (pVar4 != null) {
                        pVar4.i = false;
                        if (pVar3 != null) {
                            pVar3.i = true;
                            pVar = h(pVar, pVar3);
                        }
                    }
                } else {
                    pVar6.i = false;
                    pVar4.i = false;
                    pVar3.i = true;
                    pVar2 = pVar3;
                }
            } else if (pVar5 == null || !pVar5.i) {
                if (pVar2 == pVar4.f) {
                    pVar = h(pVar, pVar4);
                    p pVar8 = pVar4.e;
                    pVar3 = pVar8 == null ? null : pVar8.e;
                    pVar4 = pVar8;
                    pVar2 = pVar4;
                }
                if (pVar4 != null) {
                    pVar4.i = false;
                    if (pVar3 != null) {
                        pVar3.i = true;
                        pVar = g(pVar, pVar3);
                    }
                }
            } else {
                pVar5.i = false;
                pVar4.i = false;
                pVar3.i = true;
                pVar2 = pVar3;
            }
        }
    }

    public static p g(p pVar, p pVar2) {
        p pVar3;
        if (pVar2 != null && (pVar3 = pVar2.g) != null) {
            p pVar4 = pVar3.f;
            pVar2.g = pVar4;
            if (pVar4 != null) {
                pVar4.e = pVar2;
            }
            p pVar5 = pVar2.e;
            pVar3.e = pVar5;
            if (pVar5 == null) {
                pVar3.i = false;
                pVar = pVar3;
            } else if (pVar5.f == pVar2) {
                pVar5.f = pVar3;
            } else {
                pVar5.g = pVar3;
            }
            pVar3.f = pVar2;
            pVar2.e = pVar3;
        }
        return pVar;
    }

    public static p h(p pVar, p pVar2) {
        p pVar3;
        if (pVar2 != null && (pVar3 = pVar2.f) != null) {
            p pVar4 = pVar3.g;
            pVar2.f = pVar4;
            if (pVar4 != null) {
                pVar4.e = pVar2;
            }
            p pVar5 = pVar2.e;
            pVar3.e = pVar5;
            if (pVar5 == null) {
                pVar3.i = false;
                pVar = pVar3;
            } else if (pVar5.g == pVar2) {
                pVar5.g = pVar3;
            } else {
                pVar5.f = pVar3;
            }
            pVar3.g = pVar2;
            pVar2.e = pVar3;
        }
        return pVar;
    }

    public static int i(Object obj, Object obj2) {
        int iCompareTo;
        if (obj == null || obj2 == null || (iCompareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) {
            return System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1;
        }
        return iCompareTo;
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.j
    public final j a(int i2, Object obj) {
        Object obj2;
        int intVolatile;
        Thread thread;
        j jVar = this.f;
        while (true) {
            j jVar2 = jVar;
            while (true) {
                p pVarB = null;
                if (jVar2 == null) {
                    return null;
                }
                int i3 = this.lockState;
                if ((i3 & 3) != 0) {
                    break;
                }
                if (h.a.compareAndSwapInt(this, i, i3, i3 + 4)) {
                    try {
                        p pVar = this.e;
                        if (pVar != null) {
                            pVarB = pVar.b(i2, obj, null);
                        }
                        return pVarB;
                    } finally {
                        com.google.android.play.deku.j$.sun.misc.a aVar = h;
                        long j = i;
                        do {
                            intVolatile = aVar.a.getIntVolatile(this, j);
                        } while (!aVar.a.compareAndSwapInt(this, j, intVolatile, intVolatile - 4));
                        if (intVolatile == 6 && (thread = this.g) != null) {
                            LockSupport.unpark(thread);
                        }
                    }
                }
            }
            if (jVar2.a == i2 && ((obj2 = jVar2.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return jVar2;
            }
            jVar = jVar2.d;
        }
    }

    public final void d() {
        com.google.android.play.deku.j$.sun.misc.a aVar = h;
        if (aVar.a.compareAndSwapInt(this, i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i2 = this.lockState;
            if ((i2 & (-3)) == 0) {
                com.google.android.play.deku.j$.sun.misc.a aVar2 = h;
                if (aVar2.a.compareAndSwapInt(this, i, i2, 1)) {
                    break;
                }
            } else if ((i2 & 2) == 0) {
                if (h.a.compareAndSwapInt(this, i, i2, i2 | 2)) {
                    this.g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.g = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    /* JADX WARN: Code duplicated, block: B:46:0x0075  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a9 A[LOOP:0: B:3:0x0007->B:65:0x00a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0079 A[SYNTHETIC] */
    public final p e(int i2, Object obj, Object obj2) {
        int i3;
        int i4;
        p pVarB;
        p pVarB2;
        p pVar;
        p pVar2;
        p pVar3;
        p pVar4 = this.e;
        Class<?> clsC = null;
        boolean z = false;
        while (pVar4 != null) {
            int i5 = pVar4.a;
            if (i5 > i2) {
                i4 = -1;
            } else {
                if (i5 < i2) {
                    i3 = 1;
                } else {
                    Object obj3 = pVar4.b;
                    if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                        return pVar4;
                    }
                    if (clsC != null || (clsC = ConcurrentHashMap.c(obj)) != null) {
                        int i6 = ConcurrentHashMap.g;
                        int iCompareTo = (obj3 == null || obj3.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj3);
                        if (iCompareTo != 0) {
                            i3 = iCompareTo;
                        }
                    }
                    if (!z) {
                        p pVar5 = pVar4.f;
                        if (pVar5 != null && (pVarB2 = pVar5.b(i2, obj, clsC)) != null) {
                            return pVarB2;
                        }
                        p pVar6 = pVar4.g;
                        if (pVar6 != null && (pVarB = pVar6.b(i2, obj, clsC)) != null) {
                            return pVarB;
                        }
                        z = true;
                    }
                    i4 = i(obj, obj3);
                }
                if (i3 <= 0) {
                    pVar = pVar4.f;
                } else {
                    pVar = pVar4.g;
                }
                if (pVar == null) {
                    pVar2 = this.f;
                    pVar3 = new p(i2, obj, obj2, pVar2, pVar4);
                    this.f = pVar3;
                    if (pVar2 != null) {
                        pVar2.h = pVar3;
                    }
                    if (i3 <= 0) {
                        pVar4.f = pVar3;
                    } else {
                        pVar4.g = pVar3;
                    }
                    if (!pVar4.i) {
                        pVar3.i = true;
                        return null;
                    }
                    d();
                    try {
                        this.e = c(this.e, pVar3);
                        return null;
                    } finally {
                        this.lockState = 0;
                    }
                }
                pVar4 = pVar;
            }
            i3 = i4;
            if (i3 <= 0) {
                pVar = pVar4.f;
            } else {
                pVar = pVar4.g;
            }
            if (pVar == null) {
                pVar2 = this.f;
                pVar3 = new p(i2, obj, obj2, pVar2, pVar4);
                this.f = pVar3;
                if (pVar2 != null) {
                    pVar2.h = pVar3;
                }
                if (i3 <= 0) {
                    pVar4.f = pVar3;
                } else {
                    pVar4.g = pVar3;
                }
                if (!pVar4.i) {
                    pVar3.i = true;
                    return null;
                }
                d();
                this.e = c(this.e, pVar3);
                return null;
            }
            pVar4 = pVar;
        }
        p pVar7 = new p(i2, obj, obj2, null, null);
        this.e = pVar7;
        this.f = pVar7;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x008b A[PHI: r0
  0x008b: PHI (r0v11 com.google.android.play.deku.j$.util.concurrent.p) = (r0v3 com.google.android.play.deku.j$.util.concurrent.p), (r0v12 com.google.android.play.deku.j$.util.concurrent.p) binds: [B:53:0x0087, B:51:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean f(p pVar) {
        p pVar2;
        p pVar3;
        p pVar4 = (p) pVar.d;
        p pVar5 = pVar.h;
        if (pVar5 == null) {
            this.f = pVar4;
        } else {
            pVar5.d = pVar4;
        }
        if (pVar4 != null) {
            pVar4.h = pVar5;
        }
        if (this.f == null) {
            this.e = null;
            return true;
        }
        p pVarB = this.e;
        if (pVarB == null || pVarB.g == null || (pVar2 = pVarB.f) == null || pVar2.f == null) {
            return true;
        }
        d();
        try {
            p pVar6 = pVar.f;
            p pVar7 = pVar.g;
            if (pVar6 != null) {
                if (pVar7 != null) {
                    p pVar8 = pVar7;
                    while (true) {
                        p pVar9 = pVar8.f;
                        if (pVar9 == null) {
                            break;
                        }
                        pVar8 = pVar9;
                    }
                    boolean z = pVar8.i;
                    pVar8.i = pVar.i;
                    pVar.i = z;
                    p pVar10 = pVar8.g;
                    p pVar11 = pVar.e;
                    if (pVar8 == pVar7) {
                        pVar.e = pVar8;
                        pVar8.g = pVar;
                    } else {
                        p pVar12 = pVar8.e;
                        pVar.e = pVar12;
                        if (pVar12 != null) {
                            if (pVar8 == pVar12.f) {
                                pVar12.f = pVar;
                            } else {
                                pVar12.g = pVar;
                            }
                        }
                        pVar8.g = pVar7;
                        pVar7.e = pVar8;
                    }
                    pVar.f = null;
                    pVar.g = pVar10;
                    if (pVar10 != null) {
                        pVar10.e = pVar;
                    }
                    pVar8.f = pVar6;
                    pVar6.e = pVar8;
                    pVar8.e = pVar11;
                    if (pVar11 == null) {
                        pVarB = pVar8;
                    } else if (pVar == pVar11.f) {
                        pVar11.f = pVar8;
                    } else {
                        pVar11.g = pVar8;
                    }
                    if (pVar10 != null) {
                        pVar6 = pVar10;
                    } else {
                        pVar6 = pVar;
                    }
                }
            } else if (pVar7 != null) {
                pVar6 = pVar7;
            } else {
                pVar6 = pVar;
            }
            if (pVar6 != pVar) {
                p pVar13 = pVar.e;
                pVar6.e = pVar13;
                if (pVar13 == null) {
                    pVarB = pVar6;
                } else if (pVar == pVar13.f) {
                    pVar13.f = pVar6;
                } else {
                    pVar13.g = pVar6;
                }
                pVar.e = null;
                pVar.g = null;
                pVar.f = null;
            }
            if (!pVar.i) {
                pVarB = b(pVarB, pVar6);
            }
            this.e = pVarB;
            if (pVar == pVar6 && (pVar3 = pVar.e) != null) {
                if (pVar == pVar3.f) {
                    pVar3.f = null;
                } else if (pVar == pVar3.g) {
                    pVar3.g = null;
                }
                pVar.e = null;
            }
            return false;
        } finally {
            this.lockState = 0;
        }
    }
}
