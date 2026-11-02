package kotlin;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class ww1<T> implements la3<T> {
    private static final int[] q = new int[0];
    private static final Unsafe r = hw3.c();
    private final int[] a;
    private final Object[] b;
    private final int c;
    private final int d;
    private final tw1 e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final int[] i;
    private final int j;
    private final int k;
    private final eb2 l;
    private final ns1 m;
    private final yv3<?, ?> n;
    private final fr0<?> o;
    private final ku1 p;

    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u24.a.values().length];
            a = iArr;
            try {
                iArr[u24.a.j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u24.a.n.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u24.a.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[u24.a.i.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[u24.a.q.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[u24.a.h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[u24.a.r.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[u24.a.d.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[u24.a.p.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[u24.a.g.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[u24.a.o.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[u24.a.e.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[u24.a.f.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[u24.a.m.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[u24.a.s.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[u24.a.t.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[u24.a.k.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private ww1(int[] iArr, Object[] objArr, int i, int i2, tw1 tw1Var, boolean z, int[] iArr2, int i3, int i4, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = tw1Var instanceof vz0;
        this.f = fr0Var != null && fr0Var.a(tw1Var);
        this.h = z;
        this.i = iArr2;
        this.j = i3;
        this.k = i4;
        this.l = eb2Var;
        this.m = ns1Var;
        this.n = yv3Var;
        this.o = fr0Var;
        this.e = tw1Var;
        this.p = ku1Var;
    }

    private int a(int i, int i2) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return b(i, i2);
    }

    private <UT, UB> int a(yv3<UT, UB> yv3Var, T t) {
        return yv3Var.c(yv3Var.b(t));
    }

    private int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ao.a aVar) throws IOException {
        Unsafe unsafe = r;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(ao.a(bArr, i)));
                int i9 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i9;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(ao.d(bArr, i)));
                int i10 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i10;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iE = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Long.valueOf(aVar.b));
                unsafe.putInt(t, j2, i4);
                return iE;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iD = ao.d(bArr, i, aVar);
                unsafe.putObject(t, j, Integer.valueOf(aVar.a));
                unsafe.putInt(t, j2, i4);
                return iD;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(ao.c(bArr, i)));
                int i11 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i11;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(ao.b(bArr, i)));
                int i12 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i12;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iE2 = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Boolean.valueOf(aVar.b != 0));
                unsafe.putInt(t, j2, i4);
                return iE2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iA = ao.a(bArr, i, bArr.length, aVar);
                int i13 = aVar.a;
                if (i13 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((i6 & 536870912) != 0 && !hx3.b(bArr, iA, iA + i13)) {
                        throw np1.d();
                    }
                    unsafe.putObject(t, j, new String(bArr, iA, i13, StandardCharsets.UTF_8));
                    iA += i13;
                }
                unsafe.putInt(t, j2, i4);
                return iA;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                Object objD = d(t, i4, i8);
                int iA2 = ao.a(objD, c(i8), bArr, i, i2, aVar);
                a(t, i4, i8, objD);
                return iA2;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iA3 = ao.a(bArr, i, aVar);
                unsafe.putObject(t, j, aVar.c);
                unsafe.putInt(t, j2, i4);
                return iA3;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iD2 = ao.d(bArr, i, aVar);
                int i14 = aVar.a;
                yh1.b bVarA = a(i8);
                if (bVarA != null && !bVarA.a(i14)) {
                    f(t).a(i3, Long.valueOf(i14));
                    return iD2;
                }
                unsafe.putObject(t, j, Integer.valueOf(i14));
                unsafe.putInt(t, j2, i4);
                return iD2;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iD3 = ao.d(bArr, i, aVar);
                unsafe.putObject(t, j, Integer.valueOf(my.b(aVar.a)));
                unsafe.putInt(t, j2, i4);
                return iD3;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iE3 = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Long.valueOf(my.a(aVar.b)));
                unsafe.putInt(t, j2, i4);
                return iE3;
            case 68:
                if (i5 == 3) {
                    Object objD2 = d(t, i4, i8);
                    int iA4 = ao.a(objD2, c(i8), bArr, i, i2, (i3 & (-8)) | 4, aVar);
                    a(t, i4, i8, objD2);
                    return iA4;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, ao.a aVar) throws IOException {
        int iK;
        Unsafe unsafe = r;
        yh1.f fVarA2 = (yh1.f) unsafe.getObject(t, j2);
        if (!fVarA2.b()) {
            fVarA2 = fVarA2.a2(fVarA2.size() * 2);
            unsafe.putObject(t, j2, fVarA2);
        }
        yh1.f fVar = fVarA2;
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return ao.b(bArr, i, fVar, aVar);
                }
                if (i5 == 1) {
                    return ao.c(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 19:
            case 36:
                if (i5 == 2) {
                    return ao.e(bArr, i, fVar, aVar);
                }
                if (i5 == 5) {
                    return ao.f(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return ao.i(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.l(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return ao.h(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.k(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return ao.d(bArr, i, fVar, aVar);
                }
                if (i5 == 1) {
                    return ao.e(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return ao.c(bArr, i, fVar, aVar);
                }
                if (i5 == 5) {
                    return ao.d(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 25:
            case 42:
                if (i5 == 2) {
                    return ao.a(bArr, i, (yh1.f<?>) fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.a(i3, bArr, i, i2, (yh1.f<?>) fVar, aVar);
                }
                return i;
            case 26:
                if (i5 == 2) {
                    return (j & 536870912) == 0 ? ao.i(i3, bArr, i, i2, fVar, aVar) : ao.j(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 27:
                if (i5 == 2) {
                    return ao.b(c(i6), i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    return ao.b(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iK = ao.k(i3, bArr, i, i2, fVar, aVar);
                    }
                    return i;
                }
                iK = ao.h(bArr, i, fVar, aVar);
                ma3.a(t, i4, fVar, a(i6), null, this.n);
                return iK;
            case 33:
            case 47:
                if (i5 == 2) {
                    return ao.f(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.g(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 34:
            case 48:
                if (i5 == 2) {
                    return ao.g(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.h(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 49:
                if (i5 == 3) {
                    return ao.a((la3<?>) c(i6), i3, bArr, i, i2, (yh1.f<Object>) fVar, aVar);
                }
                return i;
            default:
                return i;
        }
    }

    private <K, V> int a(T t, byte[] bArr, int i, int i2, int i3, long j, ao.a aVar) throws IOException {
        Unsafe unsafe = r;
        Object objB = b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.p.d(object)) {
            Object objB2 = this.p.b(objB);
            this.p.a(objB2, object);
            unsafe.putObject(t, j, objB2);
            object = objB2;
        }
        return a(bArr, i, i2, this.p.f(objB), this.p.c(object), aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int a(byte[] bArr, int i, int i2, gu1.a<K, V> aVar, Map<K, V> map, ao.a aVar2) throws IOException {
        int iA = ao.a(bArr, i, i2, aVar2);
        int i3 = iA + aVar2.a;
        Object obj = aVar.b;
        Object obj2 = aVar.d;
        while (iA < i3) {
            int iA2 = iA + 1;
            int i4 = bArr[iA];
            if (i4 < 0) {
                iA2 = ao.a(i4, bArr, iA2, aVar2);
                i4 = aVar2.a;
            }
            int i5 = iA2;
            int i6 = i4 >>> 3;
            int i7 = i4 & 7;
            if (i6 != 1) {
                if (i6 == 2 && i7 == aVar.c.f()) {
                    iA = a(bArr, i5, i2, aVar.c, aVar.d.getClass(), aVar2);
                    obj2 = aVar2.c;
                } else {
                    iA = ao.a(i4, bArr, i5, i2, aVar2);
                }
            } else if (i7 == aVar.a.f()) {
                iA = a(bArr, i5, i2, aVar.a, (Class<?>) null, aVar2);
                obj = aVar2.c;
            } else {
                iA = ao.a(i4, bArr, i5, i2, aVar2);
            }
        }
        if (iA != i3) {
            throw np1.h();
        }
        map.put(obj, obj2);
        return i3;
    }

    private int a(byte[] bArr, int i, int i2, u24.a aVar, Class<?> cls, ao.a aVar2) throws IOException {
        switch (a.a[aVar.ordinal()]) {
            case 1:
                int iE = ao.e(bArr, i, aVar2);
                aVar2.c = Boolean.valueOf(aVar2.b != 0);
                return iE;
            case 2:
                return ao.a(bArr, i, aVar2);
            case 3:
                aVar2.c = Double.valueOf(ao.a(bArr, i));
                return i + 8;
            case 4:
            case 5:
                aVar2.c = Integer.valueOf(ao.b(bArr, i));
                return i + 4;
            case 6:
            case 7:
                aVar2.c = Long.valueOf(ao.c(bArr, i));
                return i + 8;
            case 8:
                aVar2.c = Float.valueOf(ao.d(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iD = ao.d(bArr, i, aVar2);
                aVar2.c = Integer.valueOf(aVar2.a);
                return iD;
            case 12:
            case 13:
                int iE2 = ao.e(bArr, i, aVar2);
                aVar2.c = Long.valueOf(aVar2.b);
                return iE2;
            case 14:
                return ao.a(aw2.a().b(cls), bArr, i, i2, aVar2);
            case 15:
                int iD2 = ao.d(bArr, i, aVar2);
                aVar2.c = Integer.valueOf(my.b(aVar2.a));
                return iD2;
            case 16:
                int iE3 = ao.e(bArr, i, aVar2);
                aVar2.c = Long.valueOf(my.a(aVar2.b));
                return iE3;
            case 17:
                return ao.c(bArr, i, aVar2);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x023e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0241  */
    /* JADX WARN: Code duplicated, block: B:124:0x0260  */
    /* JADX WARN: Code duplicated, block: B:125:0x0263  */
    /* JADX WARN: Code duplicated, block: B:162:0x031a  */
    /* JADX WARN: Code duplicated, block: B:176:0x0369  */
    private static <T> ww1<T> a(i13 i13Var, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        char cCharAt;
        int i8;
        int i9;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int i11;
        char cCharAt4;
        int i12;
        char cCharAt5;
        int i13;
        char cCharAt6;
        int i14;
        char cCharAt7;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        int i20;
        int iObjectFieldOffset2;
        int i21;
        int i22;
        int i23;
        Field fieldA;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldA2;
        int i28;
        Object obj2;
        Field fieldA3;
        int i29;
        char cCharAt9;
        int i30;
        char cCharAt10;
        int i31;
        char cCharAt11;
        int i32;
        char cCharAt12;
        String strE = i13Var.e();
        int length = strE.length();
        char c = 55296;
        if (strE.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (strE.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int iCharAt4 = strE.charAt(i);
        if (iCharAt4 >= 55296) {
            int i35 = iCharAt4 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                cCharAt12 = strE.charAt(i34);
                if (cCharAt12 < 55296) {
                    break;
                }
                i35 |= (cCharAt12 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            iCharAt4 = i35 | (cCharAt12 << i36);
            i34 = i32;
        }
        if (iCharAt4 == 0) {
            iCharAt2 = 0;
            iCharAt3 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i2 = i34;
            iArr = q;
            iCharAt = 0;
        } else {
            int i37 = i34 + 1;
            iCharAt = strE.charAt(i34);
            if (iCharAt >= 55296) {
                int i38 = iCharAt & 8191;
                int i39 = 13;
                while (true) {
                    i14 = i37 + 1;
                    cCharAt7 = strE.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i14;
                }
                iCharAt = i38 | (cCharAt7 << i39);
                i37 = i14;
            }
            int i40 = i37 + 1;
            int iCharAt5 = strE.charAt(i37);
            if (iCharAt5 >= 55296) {
                int i41 = iCharAt5 & 8191;
                int i42 = 13;
                while (true) {
                    i13 = i40 + 1;
                    cCharAt6 = strE.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i13;
                }
                iCharAt5 = i41 | (cCharAt6 << i42);
                i40 = i13;
            }
            int i43 = i40 + 1;
            int iCharAt6 = strE.charAt(i40);
            if (iCharAt6 >= 55296) {
                int i44 = iCharAt6 & 8191;
                int i45 = 13;
                while (true) {
                    i12 = i43 + 1;
                    cCharAt5 = strE.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i12;
                }
                iCharAt6 = i44 | (cCharAt5 << i45);
                i43 = i12;
            }
            int i46 = i43 + 1;
            int iCharAt7 = strE.charAt(i43);
            if (iCharAt7 >= 55296) {
                int i47 = iCharAt7 & 8191;
                int i48 = 13;
                while (true) {
                    i11 = i46 + 1;
                    cCharAt4 = strE.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i11;
                }
                iCharAt7 = i47 | (cCharAt4 << i48);
                i46 = i11;
            }
            int i49 = i46 + 1;
            iCharAt2 = strE.charAt(i46);
            if (iCharAt2 >= 55296) {
                int i50 = iCharAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i10 = i49 + 1;
                    cCharAt3 = strE.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i10;
                }
                iCharAt2 = i50 | (cCharAt3 << i51);
                i49 = i10;
            }
            int i52 = i49 + 1;
            iCharAt3 = strE.charAt(i49);
            if (iCharAt3 >= 55296) {
                int i53 = iCharAt3 & 8191;
                int i54 = 13;
                while (true) {
                    i9 = i52 + 1;
                    cCharAt2 = strE.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i9;
                }
                iCharAt3 = i53 | (cCharAt2 << i54);
                i52 = i9;
            }
            int i55 = i52 + 1;
            if (strE.charAt(i52) >= 55296) {
                while (true) {
                    i8 = i55 + 1;
                    if (strE.charAt(i55) < 55296) {
                        break;
                    }
                    i55 = i8;
                }
                i55 = i8;
            }
            i2 = i55 + 1;
            int iCharAt8 = strE.charAt(i55);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i7 = i2 + 1;
                    cCharAt = strE.charAt(i2);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i2 = i7;
                }
                iCharAt8 = i56 | (cCharAt << i57);
                i2 = i7;
            }
            i3 = (iCharAt * 2) + iCharAt5;
            i4 = iCharAt6;
            i5 = iCharAt7;
            i6 = iCharAt8;
            iArr = new int[iCharAt8 + iCharAt3 + iCharAt];
        }
        Unsafe unsafe = r;
        Object[] objArrD = i13Var.d();
        Class<?> cls = i13Var.b().getClass();
        int[] iArr2 = new int[iCharAt2 * 3];
        Object[] objArr = new Object[iCharAt2 * 2];
        int i58 = i6 + iCharAt3;
        int i59 = 0;
        int i60 = 0;
        int i61 = i6;
        int i62 = i58;
        while (i2 < length) {
            int i63 = i2 + 1;
            int iCharAt9 = strE.charAt(i2);
            if (iCharAt9 >= c) {
                int i64 = iCharAt9 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i31 = i65 + 1;
                    cCharAt11 = strE.charAt(i65);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i64 |= (cCharAt11 & 8191) << i66;
                    i66 += 13;
                    i65 = i31;
                }
                iCharAt9 = i64 | (cCharAt11 << i66);
                i15 = i31;
            } else {
                i15 = i63;
            }
            int i67 = i15 + 1;
            int iCharAt10 = strE.charAt(i15);
            if (iCharAt10 >= c) {
                int i68 = iCharAt10 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i30 = i69 + 1;
                    cCharAt10 = strE.charAt(i69);
                    if (cCharAt10 < c) {
                        break;
                    }
                    i68 |= (cCharAt10 & 8191) << i70;
                    i70 += 13;
                    i69 = i30;
                }
                iCharAt10 = i68 | (cCharAt10 << i70);
                i16 = i30;
            } else {
                i16 = i67;
            }
            int i71 = iCharAt10 & 255;
            if ((iCharAt10 & 1024) != 0) {
                iArr[i59] = i60;
                i59++;
            }
            int i72 = length;
            if (i71 >= 51) {
                int i73 = i16 + 1;
                int iCharAt11 = strE.charAt(i16);
                char c2 = 55296;
                if (iCharAt11 >= 55296) {
                    int i74 = iCharAt11 & 8191;
                    int i75 = 13;
                    while (true) {
                        i29 = i73 + 1;
                        cCharAt9 = strE.charAt(i73);
                        if (cCharAt9 < c2) {
                            break;
                        }
                        i74 |= (cCharAt9 & 8191) << i75;
                        i75 += 13;
                        i73 = i29;
                        c2 = 55296;
                    }
                    iCharAt11 = i74 | (cCharAt9 << i75);
                    i73 = i29;
                }
                int i76 = i71 - 51;
                i17 = iCharAt;
                if (i76 == 9 || i76 == 17) {
                    i26 = i3 + 1;
                    objArr[((i60 / 3) * 2) + 1] = objArrD[i3];
                } else {
                    if (i76 == 12 && (i13Var.a().equals(zv2.PROTO2) || (iCharAt10 & 2048) != 0)) {
                        i26 = i3 + 1;
                        objArr[((i60 / 3) * 2) + 1] = objArrD[i3];
                    }
                    i27 = iCharAt11 * 2;
                    obj = objArrD[i27];
                    if (obj instanceof Field) {
                        fieldA2 = (Field) obj;
                    } else {
                        fieldA2 = a(cls, (String) obj);
                        objArrD[i27] = fieldA2;
                        iArr[i62] = i60;
                        i62++;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldA2);
                    i28 = i27 + 1;
                    obj2 = objArrD[i28];
                    if (obj2 instanceof Field) {
                        fieldA3 = (Field) obj2;
                    } else {
                        fieldA3 = a(cls, (String) obj2);
                        objArrD[i28] = fieldA3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA3);
                    i21 = iObjectFieldOffset3;
                    i23 = 0;
                    i20 = i3;
                    objArr = objArr;
                    i22 = i73;
                    i59 = i59;
                }
                i3 = i26;
                i27 = iCharAt11 * 2;
                obj = objArrD[i27];
                if (obj instanceof Field) {
                    fieldA2 = (Field) obj;
                } else {
                    fieldA2 = a(cls, (String) obj);
                    objArrD[i27] = fieldA2;
                    iArr[i62] = i60;
                    i62++;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldA2);
                i28 = i27 + 1;
                obj2 = objArrD[i28];
                if (obj2 instanceof Field) {
                    fieldA3 = (Field) obj2;
                } else {
                    fieldA3 = a(cls, (String) obj2);
                    objArrD[i28] = fieldA3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA3);
                i21 = iObjectFieldOffset4;
                i23 = 0;
                i20 = i3;
                objArr = objArr;
                i22 = i73;
                i59 = i59;
            } else {
                i17 = iCharAt;
                int i77 = i3 + 1;
                Field fieldA4 = a(cls, (String) objArrD[i3]);
                if (i71 == 9 || i71 == 17) {
                    i18 = i77;
                    objArr[((i60 / 3) * 2) + 1] = fieldA4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        i25 = i3 + 2;
                        objArr[((i60 / 3) * 2) + 1] = objArrD[i77];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        i18 = i77;
                        if (i13Var.a() == zv2.PROTO2 || (iCharAt10 & 2048) != 0) {
                            i25 = i3 + 2;
                            objArr[((i60 / 3) * 2) + 1] = objArrD[i18];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                        if ((iCharAt10 & 4096) != 0 || i71 > 17) {
                            i20 = i19;
                            iObjectFieldOffset2 = 1048575;
                            i21 = iObjectFieldOffset;
                            i22 = i16;
                            i23 = 0;
                        } else {
                            i22 = i16 + 1;
                            int iCharAt12 = strE.charAt(i16);
                            if (iCharAt12 >= 55296) {
                                int i78 = iCharAt12 & 8191;
                                int i79 = 13;
                                while (true) {
                                    i24 = i22 + 1;
                                    cCharAt8 = strE.charAt(i22);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i78 |= (cCharAt8 & 8191) << i79;
                                    i79 += 13;
                                    i22 = i24;
                                }
                                iCharAt12 = i78 | (cCharAt8 << i79);
                                i22 = i24;
                            }
                            int i80 = (iCharAt12 / 32) + (i17 * 2);
                            Object obj3 = objArrD[i80];
                            if (obj3 instanceof Field) {
                                fieldA = (Field) obj3;
                            } else {
                                fieldA = a(cls, (String) obj3);
                                objArrD[i80] = fieldA;
                            }
                            i20 = i19;
                            i23 = iCharAt12 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA);
                            i21 = iObjectFieldOffset;
                        }
                    } else if (i71 == 50) {
                        int i81 = i61 + 1;
                        iArr[i61] = i60;
                        int i82 = (i60 / 3) * 2;
                        i18 = i3 + 2;
                        objArr[i82] = objArrD[i77];
                        if ((iCharAt10 & 2048) != 0) {
                            i19 = i3 + 3;
                            objArr[i82 + 1] = objArrD[i18];
                            i61 = i81;
                        } else {
                            i61 = i81;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                        if ((iCharAt10 & 4096) != 0) {
                            i20 = i19;
                            iObjectFieldOffset2 = 1048575;
                            i21 = iObjectFieldOffset;
                            i22 = i16;
                            i23 = 0;
                        } else {
                            i20 = i19;
                            iObjectFieldOffset2 = 1048575;
                            i21 = iObjectFieldOffset;
                            i22 = i16;
                            i23 = 0;
                        }
                    } else {
                        i18 = i77;
                    }
                    i19 = i25;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                    if ((iCharAt10 & 4096) != 0) {
                        i20 = i19;
                        iObjectFieldOffset2 = 1048575;
                        i21 = iObjectFieldOffset;
                        i22 = i16;
                        i23 = 0;
                    } else {
                        i20 = i19;
                        iObjectFieldOffset2 = 1048575;
                        i21 = iObjectFieldOffset;
                        i22 = i16;
                        i23 = 0;
                    }
                }
                i19 = i18;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                if ((iCharAt10 & 4096) != 0) {
                    i20 = i19;
                    iObjectFieldOffset2 = 1048575;
                    i21 = iObjectFieldOffset;
                    i22 = i16;
                    i23 = 0;
                } else {
                    i20 = i19;
                    iObjectFieldOffset2 = 1048575;
                    i21 = iObjectFieldOffset;
                    i22 = i16;
                    i23 = 0;
                }
            }
            int i83 = i60 + 1;
            iArr2[i60] = iCharAt9;
            int i84 = i60 + 2;
            int i85 = iObjectFieldOffset2;
            iArr2[i83] = ((iCharAt10 & 256) != 0 ? 268435456 : 0) | ((iCharAt10 & 512) != 0 ? 536870912 : 0) | ((iCharAt10 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i71 << 20) | i21;
            i60 += 3;
            iArr2[i84] = (i23 << 20) | i85;
            i59 = i59;
            i2 = i22;
            objArr = objArr;
            i3 = i20;
            strE = strE;
            length = i72;
            iCharAt = i17;
            c = 55296;
        }
        return new ww1<>(iArr2, objArr, i4, i5, i13Var.b(), false, iArr, i6, i58, eb2Var, ns1Var, yv3Var, fr0Var, ku1Var);
    }

    private static <T> ww1<T> a(mm3 mm3Var, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        throw null;
    }

    public static <T> ww1<T> a(Class<T> cls, rw1 rw1Var, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        if (r == null) {
            throw new RuntimeException("Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode.");
        }
        if (rw1Var instanceof i13) {
            return a((i13) rw1Var, eb2Var, ns1Var, yv3Var, fr0Var, ku1Var);
        }
        dr0.a(rw1Var);
        return a((mm3) null, eb2Var, ns1Var, yv3Var, fr0Var, ku1Var);
    }

    private yh1.b a(int i) {
        return (yh1.b) this.b[((i / 3) * 2) + 1];
    }

    private <K, V, UT, UB> UB a(int i, int i2, Map<K, V> map, yh1.b bVar, UB ub, yv3<UT, UB> yv3Var, Object obj) {
        gu1.a<?, ?> aVarF = this.p.f(b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!bVar.a(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = yv3Var.a(obj);
                }
                du.h hVarE = du.e(gu1.a(aVarF, next.getKey(), next.getValue()));
                try {
                    gu1.a(hVarE.b(), aVarF, next.getKey(), next.getValue());
                    yv3Var.a(ub, i2, hVarE.a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private <UT, UB> UB a(Object obj, int i, UB ub, yv3<UT, UB> yv3Var, Object obj2) {
        yh1.b bVarA;
        int iG = g(i);
        Object objJ = hw3.j(obj, h(l(i)));
        return (objJ == null || (bVarA = a(i)) == null) ? ub : (UB) a(i, iG, this.p.c(objJ), bVarA, ub, yv3Var, obj2);
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    private void a(int i, Object obj, py pyVar) throws IOException {
        if (obj instanceof String) {
            pyVar.a(i, (String) obj);
        } else {
            pyVar.a(i, (du) obj);
        }
    }

    private <K, V> void a(py pyVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            pyVar.e(i, this.p.f(b(i2)), this.p.a(obj));
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 19701. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private <UT, UB, ET extends ads_mobile_sdk.qr0.b<ET>> void a(kotlin.yv3<UT, UB> r18, kotlin.fr0<ET> r19, T r20, kotlin.ny r21, kotlin.er0 r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ww1.a(ads_mobile_sdk.yv3, ads_mobile_sdk.fr0, java.lang.Object, ads_mobile_sdk.ny, ads_mobile_sdk.er0):void");
    }

    private <UT, UB> void a(yv3<UT, UB> yv3Var, T t, py pyVar) throws IOException {
        yv3Var.b(yv3Var.b(t), pyVar);
    }

    private void a(T t, int i, int i2, Object obj) {
        r.putObject(t, h(l(i2)), obj);
        e(t, i, i2);
    }

    private void a(Object obj, int i, ny nyVar) throws IOException {
        if (d(i)) {
            hw3.a(obj, h(i), nyVar.r());
        } else if (this.g) {
            hw3.a(obj, h(i), nyVar.q());
        } else {
            hw3.a(obj, h(i), nyVar.e());
        }
    }

    private <E> void a(Object obj, int i, ny nyVar, la3<E> la3Var, er0 er0Var) throws IOException {
        nyVar.b((List) this.m.b(obj, h(i)), (la3) la3Var, er0Var);
    }

    private void a(T t, int i, Object obj) {
        r.putObject(t, h(l(i)), obj);
        c((Object) t, i);
    }

    private final <K, V> void a(Object obj, int i, Object obj2, er0 er0Var, ny nyVar) throws IOException {
        long jH = h(l(i));
        Object objJ = hw3.j(obj, jH);
        if (objJ == null) {
            objJ = this.p.b(obj2);
            hw3.a(obj, jH, objJ);
        } else if (this.p.d(objJ)) {
            Object objB = this.p.b(obj2);
            this.p.a(objB, objJ);
            hw3.a(obj, jH, objB);
            objJ = objB;
        }
        nyVar.a(this.p.c(objJ), this.p.f(obj2), er0Var);
    }

    private <E> void a(Object obj, long j, ny nyVar, la3<E> la3Var, er0 er0Var) throws IOException {
        nyVar.a((List) this.m.b(obj, j), (la3) la3Var, er0Var);
    }

    private boolean a(T t, int i) {
        boolean zEquals;
        int iJ = j(i);
        long j = 1048575 & iJ;
        if (j != 1048575) {
            return (hw3.h(t, j) & (1 << (iJ >>> 20))) != 0;
        }
        int iL = l(i);
        long jH = h(iL);
        switch (k(iL)) {
            case 0:
                return Double.doubleToRawLongBits(hw3.f(t, jH)) != 0;
            case 1:
                return Float.floatToRawIntBits(hw3.g(t, jH)) != 0;
            case 2:
                return hw3.i(t, jH) != 0;
            case 3:
                return hw3.i(t, jH) != 0;
            case 4:
                return hw3.h(t, jH) != 0;
            case 5:
                return hw3.i(t, jH) != 0;
            case 6:
                return hw3.h(t, jH) != 0;
            case 7:
                return hw3.a(t, jH);
            case 8:
                Object objJ = hw3.j(t, jH);
                if (objJ instanceof String) {
                    zEquals = ((String) objJ).isEmpty();
                } else {
                    if (!(objJ instanceof du)) {
                        return b();
                    }
                    zEquals = du.b.equals(objJ);
                }
                break;
            case 9:
                return hw3.j(t, jH) != null;
            case 10:
                zEquals = du.b.equals(hw3.j(t, jH));
                break;
            case 11:
                return hw3.h(t, jH) != 0;
            case 12:
                return hw3.h(t, jH) != 0;
            case 13:
                return hw3.h(t, jH) != 0;
            case 14:
                return hw3.i(t, jH) != 0;
            case 15:
                return hw3.h(t, jH) != 0;
            case 16:
                return hw3.i(t, jH) != 0;
            case 17:
                return hw3.j(t, jH) != null;
            default:
                return b();
        }
        return !zEquals;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean a(Object obj, int i, int i2) {
        List list = (List) hw3.j(obj, h(i));
        if (list.isEmpty()) {
            return true;
        }
        la3 la3VarC = c(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!la3VarC.a(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    private boolean a(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return a((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i, la3 la3Var) {
        return la3Var.a(hw3.j(obj, h(i)));
    }

    private static <T> boolean a(T t, long j) {
        return hw3.a(t, j);
    }

    private boolean a(T t, T t2, int i) {
        return a((Object) t, i) == a((Object) t2, i);
    }

    private boolean a(T t, T t2, int i, int i2, long j) {
        switch (i2) {
            case 0:
                return a(t, t2, i) && Double.doubleToLongBits(hw3.f(t, j)) == Double.doubleToLongBits(hw3.f(t2, j));
            case 1:
                return a(t, t2, i) && Float.floatToIntBits(hw3.g(t, j)) == Float.floatToIntBits(hw3.g(t2, j));
            case 2:
                return a(t, t2, i) && hw3.i(t, j) == hw3.i(t2, j);
            case 3:
                return a(t, t2, i) && hw3.i(t, j) == hw3.i(t2, j);
            case 4:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 5:
                return a(t, t2, i) && hw3.i(t, j) == hw3.i(t2, j);
            case 6:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 7:
                return a(t, t2, i) && hw3.a(t, j) == hw3.a(t2, j);
            case 8:
                return a(t, t2, i) && ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 9:
                return a(t, t2, i) && ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 10:
                return a(t, t2, i) && ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 11:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 12:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 13:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 14:
                return a(t, t2, i) && hw3.i(t, j) == hw3.i(t2, j);
            case 15:
                return a(t, t2, i) && hw3.h(t, j) == hw3.h(t2, j);
            case 16:
                return a(t, t2, i) && hw3.i(t, j) == hw3.i(t2, j);
            case 17:
                return a(t, t2, i) && ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 50:
                return ma3.a(hw3.j(t, j), hw3.j(t2, j));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return b(t, t2, i) && ma3.a(hw3.j(t, j), hw3.j(t2, j));
            default:
                return true;
        }
    }

    private static <T> double b(T t, long j) {
        return hw3.f(t, j);
    }

    private int b(int i, int i2) {
        int length = (this.a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int iG = g(i4);
            if (i == iG) {
                return i4;
            }
            if (i < iG) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private Object b(int i) {
        return this.b[(i / 3) * 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object b(T t, int i) {
        la3 la3VarC = c(i);
        long jH = h(l(i));
        if (!a((Object) t, i)) {
            return la3VarC.a();
        }
        Object object = r.getObject(t, jH);
        if (g(object)) {
            return object;
        }
        Object objA = la3VarC.a();
        if (object != null) {
            la3VarC.a(objA, object);
        }
        return objA;
    }

    private void b(Object obj, int i, ny nyVar) throws IOException {
        if (d(i)) {
            nyVar.o(this.m.b(obj, h(i)));
        } else {
            nyVar.n(this.m.b(obj, h(i)));
        }
    }

    private boolean b() {
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [ads_mobile_sdk.la3] */
    private boolean b(T t, int i, int i2) {
        Map<?, ?> mapA = this.p.a(hw3.j(t, h(i)));
        if (mapA.isEmpty()) {
            return true;
        }
        if (this.p.f(b(i2)).c.e() != u24.b.MESSAGE) {
            return true;
        }
        ?? B = 0;
        for (Object obj : mapA.values()) {
            if (B == 0) {
                B = B;
                B = aw2.a().b(((vz0) obj).getClass());
            }
            B = B;
            if (!B.a(obj)) {
                return false;
            }
        }
        return true;
    }

    private boolean b(T t, T t2, int i) {
        long j = j(i) & 1048575;
        return hw3.h(t, j) == hw3.h(t2, j);
    }

    private static <T> float c(T t, long j) {
        return hw3.g(t, j);
    }

    private la3 c(int i) {
        int i2 = (i / 3) * 2;
        la3 la3Var = (la3) this.b[i2];
        if (la3Var != null) {
            return la3Var;
        }
        la3 la3VarB = aw2.a().b((Class) this.b[i2 + 1]);
        this.b[i2] = la3VarB;
        return la3VarB;
    }

    private void c(T t, int i) {
        int iJ = j(i);
        long j = 1048575 & iJ;
        if (j == 1048575) {
            return;
        }
        hw3.a((Object) t, j, (1 << (iJ >>> 20)) | hw3.h(t, j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(T t, T t2, int i) {
        if (a((Object) t2, i)) {
            long jH = h(l(i));
            Unsafe unsafe = r;
            Object object = unsafe.getObject(t2, jH);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + g(i) + " is present but null: " + String.valueOf(t2));
            }
            la3 la3VarC = c(i);
            if (!a((Object) t, i)) {
                if (g(object)) {
                    Object objA = la3VarC.a();
                    la3VarC.a(objA, object);
                    unsafe.putObject(t, jH, objA);
                } else {
                    unsafe.putObject(t, jH, object);
                }
                c((Object) t, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jH);
            if (!g(object2)) {
                Object objA2 = la3VarC.a();
                la3VarC.a(objA2, object2);
                unsafe.putObject(t, jH, objA2);
                object2 = objA2;
            }
            la3VarC.a(object2, object);
        }
    }

    private boolean c(T t, int i, int i2) {
        return hw3.h(t, (long) (j(i2) & 1048575)) == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object d(T t, int i, int i2) {
        la3 la3VarC = c(i2);
        if (!c(t, i, i2)) {
            return la3VarC.a();
        }
        Object object = r.getObject(t, h(l(i2)));
        if (g(object)) {
            return object;
        }
        Object objA = la3VarC.a();
        if (object != null) {
            la3VarC.a(objA, object);
        }
        return objA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d(T t, T t2, int i) {
        int iG = g(i);
        if (c(t2, iG, i)) {
            long jH = h(l(i));
            Unsafe unsafe = r;
            Object object = unsafe.getObject(t2, jH);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + g(i) + " is present but null: " + String.valueOf(t2));
            }
            la3 la3VarC = c(i);
            if (!c(t, iG, i)) {
                if (g(object)) {
                    Object objA = la3VarC.a();
                    la3VarC.a(objA, object);
                    unsafe.putObject(t, jH, objA);
                } else {
                    unsafe.putObject(t, jH, object);
                }
                e(t, iG, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jH);
            if (!g(object2)) {
                Object objA2 = la3VarC.a();
                la3VarC.a(objA2, object2);
                unsafe.putObject(t, jH, objA2);
                object2 = objA2;
            }
            la3VarC.a(object2, object);
        }
    }

    private static boolean d(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> boolean d(T t, long j) {
        return ((Boolean) hw3.j(t, j)).booleanValue();
    }

    private static <T> double e(T t, long j) {
        return ((Double) hw3.j(t, j)).doubleValue();
    }

    private static void e(Object obj) {
        if (g(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    private void e(T t, int i, int i2) {
        hw3.a((Object) t, j(i2) & 1048575, i);
    }

    private void e(T t, T t2, int i) {
        int iL = l(i);
        long jH = h(iL);
        int iG = g(i);
        switch (k(iL)) {
            case 0:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.f(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 1:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.g(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 2:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 3:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 4:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 5:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 6:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 7:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.a(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 8:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 9:
                c(t, t2, i);
                break;
            case 10:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 11:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 12:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 13:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 14:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 15:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 16:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 17:
                c(t, t2, i);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.m.a(t, t2, jH);
                break;
            case 50:
                ma3.a(this.p, t, t2, jH);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (c(t2, iG, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    e(t, iG, i);
                }
                break;
            case 60:
                d(t, t2, i);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (c(t2, iG, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    e(t, iG, i);
                }
                break;
            case 68:
                d(t, t2, i);
                break;
        }
    }

    private static boolean e(int i) {
        return (i & Integer.MIN_VALUE) != 0;
    }

    private static <T> float f(T t, long j) {
        return ((Float) hw3.j(t, j)).floatValue();
    }

    public static zv3 f(Object obj) {
        vz0 vz0Var = (vz0) obj;
        zv3 zv3Var = vz0Var.b;
        if (zv3Var != zv3.b()) {
            return zv3Var;
        }
        zv3 zv3VarF = zv3.f();
        vz0Var.b = zv3VarF;
        return zv3VarF;
    }

    private static boolean f(int i) {
        return (i & 268435456) != 0;
    }

    private int g(int i) {
        return this.a[i];
    }

    private static <T> int g(T t, long j) {
        return ((Integer) hw3.j(t, j)).intValue();
    }

    private static boolean g(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof vz0) {
            return ((vz0) obj).p();
        }
        return true;
    }

    private static long h(int i) {
        return i & 1048575;
    }

    private static <T> long h(T t, long j) {
        return ((Long) hw3.j(t, j)).longValue();
    }

    private int i(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return b(i, 0);
    }

    private int j(int i) {
        return this.a[i + 2];
    }

    private static int k(int i) {
        return (i & 267386880) >>> 20;
    }

    private int l(int i) {
        return this.a[i + 1];
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 11881. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public int a(T r27, byte[] r28, int r29, int r30, int r31, ads_mobile_sdk.ao.a r32) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ww1.a(java.lang.Object, byte[], int, int, int, ads_mobile_sdk.ao$a):int");
    }

    @Override // kotlin.la3
    public T a() {
        return (T) this.l.a(this.e);
    }

    @Override // kotlin.la3
    public void a(T t, ny nyVar, er0 er0Var) throws IOException {
        yh1.a(er0Var);
        e(t);
        a(this.n, this.o, t, nyVar, er0Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    @Override // kotlin.la3
    public void a(T t, py pyVar) throws IOException {
        Map.Entry<?, ?> entry;
        Iterator it;
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        ww1<T> ww1Var = this;
        if (ww1Var.f) {
            qr0<T> qr0VarA = ww1Var.o.a(t);
            if (qr0VarA.c()) {
                entry = null;
                it = null;
            } else {
                Iterator itE = qr0VarA.e();
                entry = (Map.Entry) itE.next();
                it = itE;
            }
        } else {
            entry = null;
            it = null;
        }
        int length = ww1Var.a.length;
        Unsafe unsafe = r;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int iL = ww1Var.l(i5);
            int iG = ww1Var.g(i5);
            int iK = k(iL);
            if (iK <= 17) {
                int i7 = ww1Var.a[i5 + 2];
                z = true;
                int i8 = i7 & 1048575;
                if (i8 != i4) {
                    i6 = i8 == 1048575 ? 0 : unsafe.getInt(t, i8);
                    i4 = i8;
                }
                i = i4;
                i2 = i6;
                i3 = 1 << (i7 >>> 20);
            } else {
                z = true;
                i = i4;
                i2 = i6;
                i3 = 0;
            }
            while (entry != null && ww1Var.o.a(entry) <= iG) {
                ww1Var.o.a(pyVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jH = h(iL);
            switch (iK) {
                case 0:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, b(t, jH));
                    }
                    break;
                case 1:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, c(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 2:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.b(iG, unsafe.getLong(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 3:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.e(iG, unsafe.getLong(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 4:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.c(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 5:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, unsafe.getLong(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 6:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.b(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 7:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, a(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 8:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        ww1Var.a(iG, unsafe.getObject(t, jH), pyVar);
                    }
                    break;
                case 9:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.b(iG, unsafe.getObject(t, jH), ww1Var.c(i5));
                    }
                    break;
                case 10:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, (du) unsafe.getObject(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 11:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.f(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 12:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 13:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.d(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 14:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.c(iG, unsafe.getLong(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 15:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.e(iG, unsafe.getInt(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 16:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.d(iG, unsafe.getLong(t, jH));
                    }
                    ww1Var = this;
                    break;
                case 17:
                    if (ww1Var.a(t, i5, i, i2, i3)) {
                        pyVar.a(iG, unsafe.getObject(t, jH), ww1Var.c(i5));
                    }
                    break;
                case 18:
                    ma3.b(ww1Var.g(i5), (List<Double>) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 19:
                    ma3.f(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 20:
                    ma3.h(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 21:
                    ma3.n(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 22:
                    ma3.g(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 23:
                    ma3.e(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 24:
                    ma3.d(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 25:
                    ma3.a(ww1Var.g(i5), (List<Boolean>) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 26:
                    ma3.b(ww1Var.g(i5), (List<String>) unsafe.getObject(t, jH), pyVar);
                    break;
                case 27:
                    ma3.b(ww1Var.g(i5), (List<?>) unsafe.getObject(t, jH), pyVar, (la3<?>) ww1Var.c(i5));
                    break;
                case 28:
                    ma3.a(ww1Var.g(i5), (List<du>) unsafe.getObject(t, jH), pyVar);
                    break;
                case 29:
                    z2 = false;
                    ma3.m(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 30:
                    z2 = false;
                    ma3.c(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 31:
                    z2 = false;
                    ma3.i(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 32:
                    z2 = false;
                    ma3.j(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 33:
                    z2 = false;
                    ma3.k(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 34:
                    z2 = false;
                    ma3.l(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, false);
                    break;
                case 35:
                    ma3.b(ww1Var.g(i5), (List<Double>) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 36:
                    ma3.f(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 37:
                    ma3.h(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 38:
                    ma3.n(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 39:
                    ma3.g(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 40:
                    ma3.e(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 41:
                    ma3.d(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 42:
                    ma3.a(ww1Var.g(i5), (List<Boolean>) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 43:
                    ma3.m(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 44:
                    ma3.c(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 45:
                    ma3.i(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 46:
                    ma3.j(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 47:
                    ma3.k(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 48:
                    ma3.l(ww1Var.g(i5), (List) unsafe.getObject(t, jH), pyVar, z);
                    break;
                case 49:
                    ma3.a(ww1Var.g(i5), (List<?>) unsafe.getObject(t, jH), pyVar, (la3<?>) ww1Var.c(i5));
                    break;
                case 50:
                    ww1Var.a(pyVar, iG, unsafe.getObject(t, jH), i5);
                    break;
                case 51:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, e(t, jH));
                    }
                    break;
                case 52:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, f(t, jH));
                    }
                    break;
                case 53:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.b(iG, h(t, jH));
                    }
                    break;
                case 54:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.e(iG, h(t, jH));
                    }
                    break;
                case 55:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.c(iG, g(t, jH));
                    }
                    break;
                case 56:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, h(t, jH));
                    }
                    break;
                case 57:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.b(iG, g(t, jH));
                    }
                    break;
                case 58:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, d(t, jH));
                    }
                    break;
                case 59:
                    if (ww1Var.c(t, iG, i5)) {
                        ww1Var.a(iG, unsafe.getObject(t, jH), pyVar);
                    }
                    break;
                case 60:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.b(iG, unsafe.getObject(t, jH), ww1Var.c(i5));
                    }
                    break;
                case 61:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, (du) unsafe.getObject(t, jH));
                    }
                    break;
                case 62:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.f(iG, g(t, jH));
                    }
                    break;
                case 63:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, g(t, jH));
                    }
                    break;
                case 64:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.d(iG, g(t, jH));
                    }
                    break;
                case 65:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.c(iG, h(t, jH));
                    }
                    break;
                case 66:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.e(iG, g(t, jH));
                    }
                    break;
                case 67:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.d(iG, h(t, jH));
                    }
                    break;
                case 68:
                    if (ww1Var.c(t, iG, i5)) {
                        pyVar.a(iG, unsafe.getObject(t, jH), ww1Var.c(i5));
                    }
                    break;
                default:
                    break;
            }
            i5 += 3;
            i6 = i2;
            i4 = i;
            entry = entry;
        }
        while (entry != null) {
            ww1Var.o.a(pyVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        ww1Var.a(ww1Var.n, t, pyVar);
    }

    @Override // kotlin.la3
    public void a(T t, T t2) {
        e(t);
        yh1.a(t2);
        for (int i = 0; i < this.a.length; i += 3) {
            e(t, t2, i);
        }
        ma3.a(this.n, t, t2);
        if (this.f) {
            ma3.a(this.o, t, t2);
        }
    }

    @Override // kotlin.la3
    public void a(T t, byte[] bArr, int i, int i2, ao.a aVar) throws IOException {
        a(t, bArr, i, i2, 0, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x007c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0094 A[SYNTHETIC] */
    @Override // kotlin.la3
    public final boolean a(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.j) {
            int i6 = this.i[i4];
            int iL = l(i6);
            int i7 = this.a[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i5 = r.getInt(t, i8);
                }
                i2 = i5;
                i = i8;
            } else {
                i = i3;
                i2 = i5;
            }
            T t2 = t;
            if (f(iL) && !a(t2, i6, i, i2, i9)) {
                return false;
            }
            int iK = k(iL);
            if (iK == 9 || iK == 17) {
                if (a(t2, i6, i, i2, i9) && !a((Object) t2, iL, c(i6))) {
                    return false;
                }
            } else if (iK == 27) {
                if (!a(t2, iL, i6)) {
                    return false;
                }
            } else if (iK == 60 || iK == 68) {
                if (c(t2, g(i6), i6) && !a((Object) t2, iL, c(i6))) {
                    return false;
                }
            } else if (iK != 49) {
                if (iK == 50 && !b(t2, iL, i6)) {
                    return false;
                }
            } else if (!a(t2, iL, i6)) {
                return false;
            }
            i4++;
            t = t2;
            i3 = i;
            i5 = i2;
        }
        return !this.f || this.o.a(t).d();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:248:0x0552 A[PHI: r0 r1
  0x0552: PHI (r0v2 ads_mobile_sdk.ww1<T>) = 
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v11 ads_mobile_sdk.ww1<T>)
  (r0v14 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
  (r0v1 ads_mobile_sdk.ww1<T>)
 binds: [B:21:0x005a, B:244:0x0546, B:209:0x04a0, B:242:0x053c, B:237:0x0528, B:185:0x0418, B:161:0x032d, B:155:0x0310, B:149:0x02f3, B:143:0x02d6, B:137:0x02b8, B:131:0x029a, B:125:0x027c, B:119:0x025e, B:113:0x0240, B:107:0x0222, B:101:0x0204, B:95:0x01e6, B:89:0x01c8, B:83:0x01aa, B:78:0x0176, B:75:0x016a, B:72:0x015a, B:69:0x014a, B:66:0x013a, B:63:0x012e, B:60:0x0122, B:57:0x0115, B:51:0x00f7, B:48:0x00e3, B:45:0x00d1, B:42:0x00c1, B:39:0x00b1, B:36:0x00a5, B:33:0x0099, B:30:0x0089, B:27:0x0079, B:24:0x0063] A[DONT_GENERATE, DONT_INLINE]
  0x0552: PHI (r1v4 T) = 
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v5 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
  (r1v1 T)
 binds: [B:21:0x005a, B:244:0x0546, B:209:0x04a0, B:242:0x053c, B:237:0x0528, B:185:0x0418, B:161:0x032d, B:155:0x0310, B:149:0x02f3, B:143:0x02d6, B:137:0x02b8, B:131:0x029a, B:125:0x027c, B:119:0x025e, B:113:0x0240, B:107:0x0222, B:101:0x0204, B:95:0x01e6, B:89:0x01c8, B:83:0x01aa, B:78:0x0176, B:75:0x016a, B:72:0x015a, B:69:0x014a, B:66:0x013a, B:63:0x012e, B:60:0x0122, B:57:0x0115, B:51:0x00f7, B:48:0x00e3, B:45:0x00d1, B:42:0x00c1, B:39:0x00b1, B:36:0x00a5, B:33:0x0099, B:30:0x0089, B:27:0x0079, B:24:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.la3
    public int b(T t) {
        int i;
        int iA;
        int iA2;
        int iD;
        int iH;
        int i2;
        int i3;
        ww1<T> ww1Var = this;
        T t2 = t;
        Unsafe unsafe = r;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i5 < ww1Var.a.length) {
            int iL = ww1Var.l(i5);
            int iK = k(iL);
            int iG = ww1Var.g(i5);
            int i9 = ww1Var.a[i5 + 2];
            int i10 = i9 & i4;
            if (iK <= 17) {
                if (i10 != i8) {
                    i6 = i10 == i4 ? 0 : unsafe.getInt(t2, i10);
                    i8 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            int i11 = i7;
            long jH = h(iL);
            if (iK < rr0.O.e() || iK > rr0.b0.e()) {
                i10 = 0;
            }
            switch (iK) {
                case 0:
                    if (!ww1Var.a(t2, i5, i8, i6, i)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 1:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, 0.0f);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 2:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.b(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 3:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.e(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 4:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.c(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 5:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, 0L);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 6:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.b(iG, 0);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 7:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, true);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 8:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        Object object = unsafe.getObject(t2, jH);
                        iA = object instanceof du ? oy.a(iG, (du) object) : oy.a(iG, (String) object);
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 9:
                    if (!ww1Var.a(t2, i5, i8, i6, i)) {
                        i7 = i11;
                    } else {
                        iA2 = ma3.a(iG, unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    break;
                case 10:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, (du) unsafe.getObject(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 11:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.f(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 12:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 13:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.d(iG, 0);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 14:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.c(iG, 0L);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 15:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.e(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 16:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.d(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 17:
                    if (!ww1Var.a(t2, i5, i8, i6, i)) {
                        i7 = i11;
                    } else {
                        iA2 = ma3.a(iG, (tw1) unsafe.getObject(t2, jH), ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    break;
                case 18:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 19:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 20:
                    iA2 = ma3.f(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 21:
                    iA2 = ma3.j(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 22:
                    iA2 = ma3.e(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 23:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 24:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 25:
                    iA2 = ma3.a(iG, (List<?>) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 26:
                    iA2 = ma3.b(iG, (List) unsafe.getObject(t2, jH));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 27:
                    iA2 = ma3.b(iG, (List<?>) unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 28:
                    iA2 = ma3.a(iG, (List<du>) unsafe.getObject(t2, jH));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 29:
                    iA2 = ma3.i(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 30:
                    iA2 = ma3.b(iG, (List<Integer>) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 31:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 32:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 33:
                    iA2 = ma3.g(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 34:
                    iA2 = ma3.h(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 35:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 36:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 37:
                    iD = ma3.f((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 38:
                    iD = ma3.j((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 39:
                    iD = ma3.e((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 40:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 41:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 42:
                    iD = ma3.a((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 43:
                    iD = ma3.i((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 44:
                    iD = ma3.b((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 45:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 46:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 47:
                    iD = ma3.g((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 48:
                    iD = ma3.h((List) unsafe.getObject(t2, jH));
                    if (iD <= 0) {
                        i7 = i11;
                    } else {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 49:
                    iA2 = ma3.a(iG, (List<tw1>) unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 50:
                    iA2 = ww1Var.p.a(iG, unsafe.getObject(t2, jH), ww1Var.b(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 51:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 52:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, 0.0f);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 53:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.b(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 54:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.e(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 55:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.c(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 56:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, 0L);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 57:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.b(iG, 0);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 58:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, true);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 59:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        Object object2 = unsafe.getObject(t2, jH);
                        iA = object2 instanceof du ? oy.a(iG, (du) object2) : oy.a(iG, (String) object2);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 60:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA2 = ma3.a(iG, unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    break;
                case 61:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, (du) unsafe.getObject(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 62:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.f(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 63:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.a(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 64:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.d(iG, 0);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 65:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.c(iG, 0L);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 66:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.e(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 67:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA = oy.d(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    break;
                case 68:
                    if (!ww1Var.c(t2, iG, i5)) {
                        i7 = i11;
                    } else {
                        iA2 = ma3.a(iG, (tw1) unsafe.getObject(t2, jH), ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    break;
                default:
                    i7 = i11;
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        int iA3 = i7 + ww1Var.a(ww1Var.n, (Object) t2);
        return ww1Var.f ? iA3 + ww1Var.o.a(t2).b() : iA3;
    }

    @Override // kotlin.la3
    public boolean b(T t, T t2) {
        T t3;
        T t4;
        int length = this.a.length;
        int i = 0;
        while (i < length) {
            int iL = l(i);
            int iK = k(iL);
            if (iK <= 50 || iK >= 69) {
                t3 = t;
                t4 = t2;
                if (!a(t3, t4, i, iK, h(iL))) {
                    return false;
                }
            } else {
                t3 = t;
                t4 = t2;
            }
            i += 3;
            t = t3;
            t2 = t4;
        }
        T t5 = t;
        T t6 = t2;
        int i2 = this.k;
        while (true) {
            int[] iArr = this.i;
            if (i2 >= iArr.length) {
                if (!this.n.b(t5).equals(this.n.b(t6))) {
                    return false;
                }
                if (this.f) {
                    return this.o.a(t5).equals(this.o.a(t6));
                }
                return true;
            }
            int i3 = iArr[i2];
            if (!b(t5, t6, i3)) {
                return false;
            }
            if (!c(t5, 0, i3)) {
                long jH = h(l(i3));
                if (!ma3.a(hw3.j(t5, jH), hw3.j(t6, jH))) {
                    return false;
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x007d A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.la3
    public void c(T t) {
        if (g(t)) {
            if (t instanceof vz0) {
                vz0 vz0Var = (vz0) t;
                vz0Var.f();
                vz0Var.e();
                vz0Var.r();
            }
            int length = this.a.length;
            for (int i = 0; i < length; i += 3) {
                int iL = l(i);
                long jH = h(iL);
                int iK = k(iL);
                if (iK != 9) {
                    if (iK != 60 && iK != 68) {
                        switch (iK) {
                            case 17:
                                if (a((Object) t, i)) {
                                    c(i).c(r.getObject(t, jH));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.m.a(t, jH);
                                break;
                            case 50:
                                Unsafe unsafe = r;
                                Object object = unsafe.getObject(t, jH);
                                if (object != null) {
                                    unsafe.putObject(t, jH, this.p.e(object));
                                }
                                break;
                        }
                    } else if (c(t, g(i), i)) {
                        c(i).c(r.getObject(t, jH));
                    }
                } else if (a((Object) t, i)) {
                    c(i).c(r.getObject(t, jH));
                }
            }
            this.n.e(t);
            if (this.f) {
                this.o.c(t);
            }
        }
    }

    @Override // kotlin.la3
    public int d(T t) {
        int i;
        int iA;
        int i2;
        int length = this.a.length;
        int iHashCode = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iL = l(i3);
            int iK = k(iL);
            if (iK <= 50 || iK >= 69) {
                long jH = h(iL);
                int iH = 37;
                switch (iK) {
                    case 0:
                        i = iHashCode * 53;
                        iA = yh1.a(Double.doubleToLongBits(hw3.f(t, jH)));
                        iHashCode = iA + i;
                        break;
                    case 1:
                        i = iHashCode * 53;
                        iA = Float.floatToIntBits(hw3.g(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 3:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 4:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 6:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 7:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.a(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 8:
                        i = iHashCode * 53;
                        iA = ((String) hw3.j(t, jH)).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 9:
                        Object objJ = hw3.j(t, jH);
                        if (objJ != null) {
                            iH = objJ.hashCode();
                        }
                        i2 = iHashCode * 53;
                        iHashCode = i2 + iH;
                        break;
                    case 10:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 11:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 12:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 13:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 15:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 17:
                        Object objJ2 = hw3.j(t, jH);
                        if (objJ2 != null) {
                            iH = objJ2.hashCode();
                        }
                        i2 = iHashCode * 53;
                        iHashCode = i2 + iH;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 50:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                }
            }
        }
        int i4 = this.k;
        while (true) {
            int[] iArr = this.i;
            if (i4 >= iArr.length) {
                int iHashCode2 = this.n.b(t).hashCode() + (iHashCode * 53);
                return this.f ? (iHashCode2 * 53) + this.o.a(t).hashCode() : iHashCode2;
            }
            int i5 = iArr[i4];
            if (!c(t, 0, i5)) {
                iHashCode = hw3.j(t, h(l(i5))).hashCode() + (iHashCode * 53);
            }
            i4++;
        }
    }
}
