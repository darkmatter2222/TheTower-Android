package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
final class ji {
    final byte[] a;
    int b;
    int c;
    boolean d;
    boolean e;
    ji f;
    ji g;

    ji() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }

    ji(ji jiVar) {
        this(jiVar.a, jiVar.b, jiVar.c);
        jiVar.d = true;
    }

    ji(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.e = false;
        this.d = true;
    }

    public final ji a() {
        ji jiVar = this.f;
        ji jiVar2 = jiVar != this ? jiVar : null;
        ji jiVar3 = this.g;
        jiVar3.f = jiVar;
        this.f.g = jiVar3;
        this.f = null;
        this.g = null;
        return jiVar2;
    }

    public final ji a(ji jiVar) {
        jiVar.g = this;
        jiVar.f = this.f;
        this.f.g = jiVar;
        this.f = jiVar;
        return jiVar;
    }

    public final void a(ji jiVar, int i) {
        if (!jiVar.e) {
            throw new IllegalArgumentException();
        }
        int i2 = jiVar.c;
        if (i2 + i > 8192) {
            if (jiVar.d) {
                throw new IllegalArgumentException();
            }
            int i3 = jiVar.b;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = jiVar.a;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            jiVar.c -= jiVar.b;
            jiVar.b = 0;
        }
        System.arraycopy(this.a, this.b, jiVar.a, jiVar.c, i);
        jiVar.c += i;
        this.b += i;
    }
}
