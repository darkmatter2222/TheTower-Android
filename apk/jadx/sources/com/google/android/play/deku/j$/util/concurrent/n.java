package com.google.android.play.deku.j$.util.concurrent;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    public j[] a;
    public m c;
    public m d;
    public final int g;
    public final int h;
    public int e = 0;
    public int f = 0;
    public j b = null;

    public n(j[] jVarArr, int i, int i2) {
        this.a = jVarArr;
        this.h = i;
        this.g = i2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c A[LOOP:1: B:34:0x005f->B:38:0x006c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x005f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0006 A[EDGE_INSN: B:64:0x0006->B:61:0x0006 BREAK  A[LOOP:1: B:34:0x005f->B:38:0x006c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0006 A[EDGE_INSN: B:65:0x0006->B:61:0x0006 BREAK  A[LOOP:1: B:34:0x005f->B:38:0x006c], SYNTHETIC] */
    public final j a() {
        j[] jVarArr;
        int length;
        int i;
        m mVar;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        j jVar = this.b;
        if (jVar != null) {
            jVar = jVar.d;
        }
        while (jVar == null) {
            if (this.f >= this.g || (jVarArr = this.a) == null || (length = jVarArr.length) <= (i = this.e) || i < 0) {
                this.b = null;
                return null;
            }
            j jVarJ = ConcurrentHashMap.j(jVarArr, i);
            if (jVarJ == null || jVarJ.a >= 0) {
                jVar = jVarJ;
                if (this.c != null) {
                    while (true) {
                        mVar = this.c;
                        i2 = this.e;
                        if (mVar != null) {
                            i3 = i2 + this.h;
                            this.e = i3;
                            if (i3 >= length) {
                                break;
                            }
                            int i7 = this.f + 1;
                            this.f = i7;
                            this.e = i7;
                            break;
                        }
                        i4 = mVar.a;
                        i5 = i2 + i4;
                        this.e = i5;
                        if (i5 >= length) {
                            break;
                        }
                        this.e = mVar.b;
                        this.a = mVar.c;
                        mVar.c = null;
                        m mVar2 = mVar.d;
                        mVar.d = this.d;
                        this.c = mVar2;
                        this.d = mVar;
                        length = i4;
                    }
                } else {
                    i6 = i + this.h;
                    this.e = i6;
                    if (i6 >= length) {
                        int i8 = this.f + 1;
                        this.f = i8;
                        this.e = i8;
                    }
                }
            } else if (jVarJ instanceof f) {
                this.a = ((f) jVarJ).e;
                m mVar3 = this.d;
                if (mVar3 != null) {
                    this.d = mVar3.d;
                } else {
                    mVar3 = new m();
                }
                mVar3.c = jVarArr;
                mVar3.a = length;
                mVar3.b = i;
                mVar3.d = this.c;
                this.c = mVar3;
                jVar = null;
            } else {
                jVar = jVarJ instanceof o ? ((o) jVarJ).f : null;
                if (this.c != null) {
                    while (true) {
                        mVar = this.c;
                        i2 = this.e;
                        if (mVar != null) {
                            i3 = i2 + this.h;
                            this.e = i3;
                            if (i3 >= length) {
                                break;
                                break;
                            }
                            int i9 = this.f + 1;
                            this.f = i9;
                            this.e = i9;
                            break;
                            break;
                        }
                        i4 = mVar.a;
                        i5 = i2 + i4;
                        this.e = i5;
                        if (i5 >= length) {
                            break;
                            break;
                        }
                        this.e = mVar.b;
                        this.a = mVar.c;
                        mVar.c = null;
                        m mVar4 = mVar.d;
                        mVar.d = this.d;
                        this.c = mVar4;
                        this.d = mVar;
                        length = i4;
                    }
                } else {
                    i6 = i + this.h;
                    this.e = i6;
                    if (i6 >= length) {
                        int i10 = this.f + 1;
                        this.f = i10;
                        this.e = i10;
                    }
                }
            }
        }
        this.b = jVar;
        return jVar;
    }
}
