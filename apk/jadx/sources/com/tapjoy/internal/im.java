package com.tapjoy.internal;

import android.graphics.Bitmap;
import androidx.fragment.app.FragmentTransaction;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class im {
    private static final String d = "im";
    int a;
    int b;
    io c;
    private int[] e;
    private final int[] f;
    private ByteBuffer g;
    private byte[] h;

    @Nullable
    private byte[] i;
    private int j;
    private int k;
    private ip l;
    private short[] m;
    private byte[] n;
    private byte[] o;
    private byte[] p;
    private int[] q;
    private a r;
    private Bitmap s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private int x;
    private boolean y;

    interface a {
        @Nonnull
        Bitmap a(int i, int i2, Bitmap.Config config);

        byte[] a(int i);

        int[] b(int i);
    }

    im() {
        this(new ir());
    }

    private im(a aVar) {
        this.f = new int[256];
        this.j = 0;
        this.k = 0;
        this.r = aVar;
        this.c = new io();
    }

    im(a aVar, io ioVar, ByteBuffer byteBuffer) {
        this(aVar, ioVar, byteBuffer, (byte) 0);
    }

    private im(a aVar, io ioVar, ByteBuffer byteBuffer, byte b) {
        this(aVar);
        b(ioVar, byteBuffer);
    }

    private static void a(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
    }

    private synchronized void a(io ioVar, ByteBuffer byteBuffer) {
        b(ioVar, byteBuffer);
    }

    private synchronized void a(io ioVar, byte[] bArr) {
        a(ioVar, ByteBuffer.wrap(bArr));
    }

    private void a(int[] iArr, in inVar, int i) {
        int i2 = inVar.d / this.v;
        int i3 = inVar.b / this.v;
        int i4 = inVar.c / this.v;
        int i5 = inVar.a / this.v;
        int i6 = this.x;
        int i7 = (i3 * i6) + i5;
        int i8 = (i2 * i6) + i7;
        while (i7 < i8) {
            int i9 = i7 + i4;
            for (int i10 = i7; i10 < i9; i10++) {
                iArr[i10] = i;
            }
            i7 += this.x;
        }
    }

    private synchronized void b(io ioVar, ByteBuffer byteBuffer) {
        int iHighestOneBit = Integer.highestOneBit(1);
        this.u = 0;
        this.c = ioVar;
        this.y = false;
        this.a = -1;
        this.b = 0;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.g = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.g.order(ByteOrder.LITTLE_ENDIAN);
        this.t = false;
        Iterator<in> it = ioVar.e.iterator();
        while (it.hasNext()) {
            if (it.next().g == 3) {
                this.t = true;
                break;
            }
        }
        this.v = iHighestOneBit;
        this.x = ioVar.f / iHighestOneBit;
        this.w = ioVar.g / iHighestOneBit;
        this.p = this.r.a(ioVar.f * ioVar.g);
        this.q = this.r.b(this.x * this.w);
    }

    private void c() {
        if (this.j > this.k) {
            return;
        }
        if (this.i == null) {
            this.i = this.r.a(16384);
        }
        this.k = 0;
        int iMin = Math.min(this.g.remaining(), 16384);
        this.j = iMin;
        this.g.get(this.i, 0, iMin);
    }

    private int d() {
        try {
            c();
            byte[] bArr = this.i;
            int i = this.k;
            this.k = i + 1;
            return bArr[i] & 255;
        } catch (Exception unused) {
            this.u = 1;
            return 0;
        }
    }

    private int e() {
        int iD = d();
        if (iD > 0) {
            try {
                if (this.h == null) {
                    this.h = this.r.a(255);
                }
                int i = this.j;
                int i2 = this.k;
                int i3 = i - i2;
                if (i3 >= iD) {
                    System.arraycopy(this.i, i2, this.h, 0, iD);
                    this.k += iD;
                    return iD;
                }
                if (this.g.remaining() + i3 < iD) {
                    this.u = 1;
                    return iD;
                }
                System.arraycopy(this.i, this.k, this.h, 0, i3);
                this.k = this.j;
                c();
                int i4 = iD - i3;
                System.arraycopy(this.i, 0, this.h, i3, i4);
                this.k += i4;
                return iD;
            } catch (Exception e) {
                new Object[]{e};
                this.u = 1;
            }
        }
        return iD;
    }

    private Bitmap f() {
        Bitmap bitmapA = this.r.a(this.x, this.w, this.y ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565);
        a(bitmapA);
        return bitmapA;
    }

    final synchronized int a(byte[] bArr) {
        if (this.l == null) {
            this.l = new ip();
        }
        io ioVarA = this.l.a(bArr).a();
        this.c = ioVarA;
        if (bArr != null) {
            a(ioVarA, bArr);
        }
        return this.u;
    }

    final boolean a() {
        if (-1 >= this.c.c) {
            return false;
        }
        this.a = -1;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r23v20 */
    /* JADX WARN: Type inference failed for: r23v22 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v34, types: [short] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v14 */
    final synchronized Bitmap b() {
        int i;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int[] iArr2;
        short s;
        int i6;
        if (this.c.c <= 0 || this.a < 0) {
            new Object[]{Integer.valueOf(this.c.c), Integer.valueOf(this.a)};
            this.u = 1;
        }
        int i7 = this.u;
        if (i7 != 1 && i7 != 2) {
            short s2 = 0;
            this.u = 0;
            in inVar = this.c.e.get(this.a);
            int i8 = this.a - 1;
            in inVar2 = i8 >= 0 ? this.c.e.get(i8) : null;
            int[] iArr3 = inVar.k != null ? inVar.k : this.c.a;
            this.e = iArr3;
            if (iArr3 == null) {
                new Object[]{Integer.valueOf(this.a)};
                this.u = 1;
                return null;
            }
            if (inVar.f) {
                int[] iArr4 = this.e;
                System.arraycopy(iArr4, 0, this.f, 0, iArr4.length);
                int[] iArr5 = this.f;
                this.e = iArr5;
                iArr5[inVar.h] = 0;
            }
            int[] iArr6 = this.q;
            if (inVar2 == null) {
                Arrays.fill(iArr6, 0);
            }
            int i9 = 3;
            if (inVar2 != null && inVar2.g > 0) {
                if (inVar2.g == 2) {
                    if (!inVar.f) {
                        i6 = this.c.l;
                        if (inVar.k != null && this.c.j == inVar.h) {
                        }
                        a(iArr6, inVar2, i6);
                    } else if (this.a == 0) {
                        this.y = true;
                    }
                    i6 = 0;
                    a(iArr6, inVar2, i6);
                } else if (inVar2.g == 3) {
                    if (this.s == null) {
                        a(iArr6, inVar2, 0);
                    } else {
                        int i10 = inVar2.d / this.v;
                        int i11 = inVar2.b / this.v;
                        int i12 = inVar2.c / this.v;
                        int i13 = inVar2.a / this.v;
                        int i14 = this.x;
                        this.s.getPixels(iArr6, (i11 * i14) + i13, i14, i13, i11, i12, i10);
                        iArr6 = iArr6;
                    }
                }
            }
            this.j = 0;
            this.k = 0;
            if (inVar != null) {
                this.g.position(inVar.j);
            }
            if (inVar == null) {
                i = this.c.f;
                i2 = this.c.g;
            } else {
                i = inVar.c;
                i2 = inVar.d;
            }
            int i15 = i * i2;
            byte[] bArr = this.p;
            if (bArr == null || bArr.length < i15) {
                this.p = this.r.a(i15);
            }
            if (this.m == null) {
                this.m = new short[4096];
            }
            if (this.n == null) {
                this.n = new byte[4096];
            }
            if (this.o == null) {
                this.o = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
            }
            int iD = d();
            int i16 = 1 << iD;
            int i17 = i16 + 1;
            int i18 = i16 + 2;
            int i19 = iD + 1;
            int i20 = (1 << i19) - 1;
            int i21 = 0;
            while (i21 < i16) {
                this.m[i21] = s2;
                this.n[i21] = (byte) i21;
                i21++;
                s2 = s2;
            }
            byte b = s2;
            int i22 = -1;
            int i23 = -1;
            int i24 = i19;
            int i25 = i18;
            int i26 = i20;
            int i27 = b;
            int iE = i27 == true ? 1 : 0;
            int i28 = iE;
            int i29 = i28 == true ? 1 : 0;
            int i30 = i29 == true ? 1 : 0;
            int i31 = i30;
            int i32 = i31 == true ? 1 : 0;
            int i33 = i32 == true ? 1 : 0;
            while (i27 < i15) {
                if (iE == 0) {
                    iE = e();
                    if (iE <= 0) {
                        this.u = i9;
                        break;
                    }
                    i30 = b;
                }
                i29 += (this.h[i30] & 255) << i28;
                i30++;
                iE += i22;
                int i34 = i28 + 8;
                i23 = i23;
                i32 = i32;
                i25 = i25;
                int i35 = i24;
                while (true) {
                    int i36 = i34;
                    if (i34 < i35) {
                        i28 = i36;
                        break;
                    }
                    int i37 = i29 & i26;
                    i29 >>= i35;
                    i34 = i36 - i35;
                    if (i37 != i16) {
                        if (i37 > i25) {
                            iArr2 = iArr6;
                            this.u = 3;
                        } else {
                            iArr2 = iArr6;
                            if (i37 != i17) {
                                if (i23 == -1) {
                                    byte[] bArr2 = this.o;
                                    int i38 = (i33 == true ? 1 : 0) + 1;
                                    bArr2[i33 == true ? 1 : 0] = this.n[i37];
                                    i23 = i37;
                                    i33 = i38;
                                    iArr6 = iArr2;
                                    i32 = i23;
                                } else {
                                    if (i37 >= i25) {
                                        byte[] bArr3 = this.o;
                                        int i39 = (i33 == true ? 1 : 0) + 1;
                                        bArr3[i33 == true ? 1 : 0] = i32 == true ? (byte) 1 : (byte) 0;
                                        s = i23;
                                        i33 = i39;
                                    } else {
                                        s = i37;
                                    }
                                    while (s >= i16) {
                                        this.o[i33] = this.n[s];
                                        s = this.m[s];
                                        i33++;
                                        i37 = i37;
                                    }
                                    int i40 = i37;
                                    byte[] bArr4 = this.n;
                                    i32 = bArr4[s] & 255;
                                    byte[] bArr5 = this.o;
                                    int i41 = i33 + 1;
                                    byte b2 = i32 == true ? (byte) 1 : (byte) 0;
                                    bArr5[i33] = b2;
                                    if (i25 < 4096) {
                                        this.m[i25] = (short) i23;
                                        bArr4[i25] = b2;
                                        i25++;
                                        if ((i25 & i26) == 0 && i25 < 4096) {
                                            i35++;
                                            i26 += i25;
                                        }
                                    }
                                    i33 = i41;
                                    while (i33 > 0) {
                                        byte[] bArr6 = this.p;
                                        int i42 = (i31 == true ? 1 : 0) + 1;
                                        byte[] bArr7 = this.o;
                                        i33 = (i33 == true ? 1 : 0) - 1;
                                        bArr6[i31 == true ? 1 : 0] = bArr7[i33];
                                        i27++;
                                        i31 = i42;
                                    }
                                    iArr6 = iArr2;
                                    i23 = i40;
                                }
                            }
                        }
                        i28 = i34;
                        iArr6 = iArr2;
                        break;
                    }
                    i35 = i19;
                    i25 = i18;
                    i26 = i20;
                    i23 = -1;
                }
                i22 = -1;
                i24 = i35;
                i9 = 3;
            }
            int[] iArr7 = iArr6;
            for (int i43 = i31; i43 < i15; i43++) {
                this.p[i43] = b;
            }
            int i44 = inVar.d / this.v;
            int i45 = inVar.b / this.v;
            int i46 = inVar.c / this.v;
            int i47 = inVar.a / this.v;
            ?? r6 = this.a == 0 ? 1 : b;
            int i48 = b;
            int i49 = i48 == true ? 1 : 0;
            int i50 = 8;
            int i51 = 1;
            while (i49 < i44) {
                if (inVar.e) {
                    if (i48 >= i44) {
                        i51++;
                        if (i51 == 2) {
                            i48 = 4;
                        } else if (i51 == 3) {
                            i50 = 4;
                            i48 = 2;
                        } else if (i51 == 4) {
                            i50 = 2;
                            i48 = 1;
                        }
                    }
                    i3 = (i48 == true ? 1 : 0) + i50;
                } else {
                    i3 = i48 == true ? 1 : 0;
                    i48 = i49;
                }
                int i52 = i48 + i45;
                if (i52 < this.w) {
                    int i53 = this.x;
                    int i54 = i52 * i53;
                    int i55 = i54 + i47;
                    int i56 = i55 + i46;
                    if (i54 + i53 < i56) {
                        i56 = i54 + i53;
                    }
                    int i57 = this.v * i49 * inVar.c;
                    int i58 = ((i56 - i55) * this.v) + i57;
                    while (i55 < i56) {
                        int i59 = i44;
                        if (this.v == 1) {
                            i5 = this.e[this.p[i57] & 255];
                            i4 = i45;
                        } else {
                            int i60 = inVar.c;
                            int i61 = i57;
                            int i62 = b;
                            int i63 = i62 == true ? 1 : 0;
                            int i64 = i63 == true ? 1 : 0;
                            int i65 = i64 == true ? 1 : 0;
                            int i66 = i65 == true ? 1 : 0;
                            while (true) {
                                if (i61 >= this.v + i57) {
                                    i4 = i45;
                                    break;
                                }
                                byte[] bArr8 = this.p;
                                i4 = i45;
                                if (i61 >= bArr8.length || i61 >= i58) {
                                    break;
                                }
                                int i67 = this.e[bArr8[i61] & 255];
                                if (i67 != 0) {
                                    i62 += (i67 >> 24) & 255;
                                    i63 += (i67 >> 16) & 255;
                                    i64 += (i67 >> 8) & 255;
                                    i65 += i67 & 255;
                                    i66++;
                                }
                                i61++;
                                i45 = i4;
                            }
                            int i68 = i57 + i60;
                            int i69 = i68;
                            while (i69 < this.v + i68) {
                                byte[] bArr9 = this.p;
                                int i70 = i68;
                                if (i69 >= bArr9.length || i69 >= i58) {
                                    break;
                                }
                                int i71 = this.e[bArr9[i69] & 255];
                                if (i71 != 0) {
                                    i62 += (i71 >> 24) & 255;
                                    i63 += (i71 >> 16) & 255;
                                    i64 += (i71 >> 8) & 255;
                                    i65 += i71 & 255;
                                    i66++;
                                }
                                i69++;
                                i68 = i70;
                            }
                            i5 = i66 == 0 ? b : ((i62 / i66) << 24) | ((i63 / i66) << 16) | ((i64 / i66) << 8) | (i65 / i66);
                        }
                        if (i5 != 0) {
                            iArr7[i55] = i5;
                        } else if (!this.y && r6 != 0) {
                            this.y = true;
                        }
                        i57 += this.v;
                        i55++;
                        i44 = i59;
                        i45 = i4;
                    }
                }
                i49++;
                i48 = i3;
                i44 = i44;
                i45 = i45;
            }
            if (this.t && (inVar.g == 0 || inVar.g == 1)) {
                if (this.s == null) {
                    this.s = f();
                }
                Bitmap bitmap = this.s;
                int i72 = this.x;
                iArr = iArr7;
                bitmap.setPixels(iArr, 0, i72, 0, 0, i72, this.w);
            } else {
                iArr = iArr7;
            }
            Bitmap bitmapF = f();
            int i73 = this.x;
            bitmapF.setPixels(iArr, 0, i73, 0, 0, i73, this.w);
            return bitmapF;
        }
        new Object[]{Integer.valueOf(i7)};
        return null;
    }
}
