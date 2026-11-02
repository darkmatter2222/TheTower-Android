package kotlin;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i34 implements d44 {
    public static final /* synthetic */ i34 b;
    public static final /* synthetic */ i34 c;
    public static final /* synthetic */ i34 d;
    public static final /* synthetic */ i34 e;
    public static final /* synthetic */ i34 f;
    public static final /* synthetic */ i34 g;
    public static final /* synthetic */ i34 h;
    public static final /* synthetic */ i34 i;
    public static final /* synthetic */ i34 j;
    public static final /* synthetic */ i34 k;
    public static final /* synthetic */ i34 l;
    public static final /* synthetic */ i34 m;
    public static final /* synthetic */ i34 n;
    public static final /* synthetic */ i34 o;
    public static final /* synthetic */ i34 p;
    public static final /* synthetic */ i34 q;
    public static final /* synthetic */ i34 r;
    public static final /* synthetic */ i34 s;
    public static final /* synthetic */ i34 t;
    public static final /* synthetic */ i34 u;
    public static final /* synthetic */ i34 v;
    public final /* synthetic */ int a;

    static {
        int iA = p30.a(((~1424268980) & 433259076) | 136627722, (1424268980 & 299303110) | 33824130, 606102243, 157354814) ^ (1129566413 % 184803526);
        v = new i34(20);
        u = new i34(19);
        t = new i34(18);
        s = new i34(17);
        r = new i34(16);
        q = new i34(15);
        p = new i34(14);
        o = new i34(13);
        n = new i34(12);
        m = new i34(11);
        l = new i34(10);
        k = new i34(9);
        j = new i34(8);
        i = new i34(7);
        h = new i34(6);
        g = new i34(5);
        f = new i34(4);
        e = new i34(3);
        d = new i34(iA);
        c = new i34(1);
        b = new i34(0);
    }

    public /* synthetic */ i34(int i2) {
        this.a = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:61:0x012f  */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        wu2 wu2Var;
        wu2 wu2Var2;
        wu2 wu2Var3;
        wu2 wu2Var4;
        wu2 wu2Var5;
        wu2 wu2Var6;
        wu2 wu2Var7;
        wu2 wu2Var8;
        wu2 wu2Var9;
        wu2 wu2Var10;
        long j2;
        Object obj2;
        c44 c44Var;
        l44 l44VarA;
        wu2 wu2Var11;
        byte[] bArr;
        wu2 wu2Var12;
        wu2 wu2Var13;
        wu2 wu2Var14;
        wu2 wu2Var15;
        wu2 wu2Var16;
        wu2 wu2Var17;
        wu2 wu2Var18;
        Class<?> cls;
        wu2 wu2Var19;
        wu2 wu2Var20;
        wu2 wu2Var21;
        l44 l44VarA2;
        byte b2 = 8;
        long j3 = 1;
        long j4 = 0;
        switch (this.a) {
            case 0:
                try {
                    c44 c44Var2 = ((g44) obj).a;
                    c44Var2.a(l44.a(c44Var2.a().c() + c44Var2.a().c()));
                    return Optional.empty();
                } catch (a44 unused) {
                    wu2Var = wu2.y;
                    return Optional.of(wu2Var);
                } catch (b44 e2) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e2);
                } catch (i44 unused2) {
                    wu2Var = wu2.z;
                    return Optional.of(wu2Var);
                }
            case 1:
                try {
                    c44 c44Var3 = ((g44) obj).a;
                    c44Var3.a(l44.a(c44Var3.a().g() + c44Var3.a().g()));
                    return Optional.empty();
                } catch (a44 unused3) {
                    wu2Var2 = wu2.y;
                    return Optional.of(wu2Var2);
                } catch (b44 e3) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e3);
                } catch (i44 unused4) {
                    wu2Var2 = wu2.z;
                    return Optional.of(wu2Var2);
                }
            case 2:
                try {
                    c44 c44Var4 = ((g44) obj).a;
                    c44Var4.a(l44.a(c44Var4.a().d().a(c44Var4.a().d())));
                    return Optional.empty();
                } catch (a44 unused5) {
                    wu2Var3 = wu2.y;
                    return Optional.of(wu2Var3);
                } catch (b44 e4) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e4);
                } catch (i44 unused6) {
                    wu2Var3 = wu2.z;
                    return Optional.of(wu2Var3);
                }
            case 3:
                g44 g44Var = (g44) obj;
                try {
                    long jD = g44Var.c.d();
                    for (long j5 = 0; j5 < jD; j5++) {
                        g44Var.a.a(l44.a((Object) null));
                    }
                    return Optional.empty();
                } catch (b44 unused7) {
                    wu2Var4 = wu2.b;
                    return Optional.of(wu2Var4);
                } catch (r34 | t34 unused8) {
                    wu2Var4 = wu2.z;
                    return Optional.of(wu2Var4);
                }
            case 4:
                try {
                    c44 c44Var5 = ((g44) obj).a;
                    c44Var5.a(l44.a(c44Var5.a().c() & c44Var5.a().c()));
                    return Optional.empty();
                } catch (a44 unused9) {
                    wu2Var5 = wu2.y;
                    return Optional.of(wu2Var5);
                } catch (b44 e5) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e5);
                } catch (i44 unused10) {
                    wu2Var5 = wu2.z;
                    return Optional.of(wu2Var5);
                }
            case 5:
                try {
                    c44 c44Var6 = ((g44) obj).a;
                    c44Var6.a(l44.a(~c44Var6.a().c()));
                    return Optional.empty();
                } catch (a44 unused11) {
                    wu2Var6 = wu2.y;
                    return Optional.of(wu2Var6);
                } catch (b44 e6) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e6);
                } catch (i44 unused12) {
                    wu2Var6 = wu2.z;
                    return Optional.of(wu2Var6);
                }
            case 6:
                try {
                    c44 c44Var7 = ((g44) obj).a;
                    c44Var7.a(l44.a(c44Var7.a().c() | c44Var7.a().c()));
                    return Optional.empty();
                } catch (a44 unused13) {
                    wu2Var7 = wu2.y;
                    return Optional.of(wu2Var7);
                } catch (b44 e7) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e7);
                } catch (i44 unused14) {
                    wu2Var7 = wu2.z;
                    return Optional.of(wu2Var7);
                }
            case 7:
                try {
                    c44 c44Var8 = ((g44) obj).a;
                    c44Var8.a(l44.a(c44Var8.a().c() ^ c44Var8.a().c()));
                    return Optional.empty();
                } catch (a44 unused15) {
                    wu2Var8 = wu2.y;
                    return Optional.of(wu2Var8);
                } catch (b44 e8) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e8);
                } catch (i44 unused16) {
                    wu2Var8 = wu2.z;
                    return Optional.of(wu2Var8);
                }
            case 8:
                g44 g44Var2 = (g44) obj;
                try {
                    c44 c44Var9 = g44Var2.a;
                    long jC = c44Var9.a().c();
                    g44Var2.b.a(g44Var2.c.a(), 0L, c44Var9.b);
                    g44Var2.c.a(jC);
                    return Optional.empty();
                } catch (a44 unused17) {
                    wu2Var9 = wu2.y;
                    return Optional.of(wu2Var9);
                } catch (i44 unused18) {
                    wu2Var9 = wu2.z;
                    return Optional.of(wu2Var9);
                } catch (s34 | t34 unused19) {
                    wu2Var9 = wu2.s;
                    return Optional.of(wu2Var9);
                } catch (x34 unused20) {
                    wu2Var9 = wu2.C;
                    return Optional.of(wu2Var9);
                }
            case 9:
                g44 g44Var3 = (g44) obj;
                try {
                    c44 c44Var10 = g44Var3.a;
                    long jC2 = c44Var10.a().c();
                    List listE = c44Var10.a().e();
                    int size = listE.size();
                    Object objA = c44Var10.a().a();
                    Object objB = c44Var10.a().b();
                    if (objB instanceof Method) {
                        Method method = (Method) objB;
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length == size) {
                            Object[] objArr = new Object[size];
                            if (objA instanceof Constructor) {
                                Class<?>[] parameterTypes2 = ((Constructor) objA).getParameterTypes();
                                int length = parameterTypes2.length;
                                Object[] objArr2 = new Object[length];
                                List listE2 = ((l44) listE.get(0)).e();
                                obj2 = null;
                                if (listE2.size() == length) {
                                    int i2 = 0;
                                    while (i2 < listE2.size()) {
                                        objArr2[i2] = ((l44) listE2.get(i2)).a((Class) parameterTypes2[i2]);
                                        i2++;
                                        j4 = j4;
                                    }
                                    j2 = j4;
                                    objArr[0] = objArr2;
                                }
                            } else {
                                j2 = 0;
                                obj2 = null;
                                for (int i3 = 0; i3 < size; i3++) {
                                    objArr[i3] = ((l44) listE.get(i3)).a((Class) parameterTypes[i3]);
                                }
                            }
                            try {
                                Object objInvoke = method.invoke(objA, objArr);
                                try {
                                    if (method.getReturnType() == Void.class || method.getReturnType() == Void.TYPE) {
                                        c44Var = g44Var3.a;
                                        l44VarA = l44.a(obj2);
                                    } else if (jC2 != j2) {
                                        c44Var = g44Var3.a;
                                        l44VarA = l44.b(objInvoke);
                                    } else {
                                        c44Var = g44Var3.a;
                                        l44VarA = l44.a(objInvoke);
                                    }
                                    c44Var.a(l44VarA);
                                    return Optional.empty();
                                } catch (b44 e9) {
                                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e9);
                                }
                            } catch (Throwable unused21) {
                                wu2Var10 = wu2.r;
                                return Optional.of(wu2Var10);
                            }
                        }
                    }
                    return Optional.of(wu2.q);
                } catch (a44 unused22) {
                    wu2Var10 = wu2.y;
                } catch (i44 unused23) {
                    wu2Var10 = wu2.q;
                }
                break;
            case 10:
                g44 g44Var4 = (g44) obj;
                try {
                    c44 c44Var11 = g44Var4.a;
                    int intExact = Math.toIntExact(c44Var11.a().c());
                    p34 p34VarD = c44Var11.a().d();
                    p34 p34VarD2 = c44Var11.a().d();
                    if (p34VarD.a.length != 16) {
                        return Optional.of(wu2.I);
                    }
                    int[] iArr = new int[4];
                    ByteBuffer.wrap(p34VarD.a()).asIntBuffer().get(iArr);
                    h34 h34Var = new h34(iArr, intExact);
                    byte[] bArrA = p34VarD2.a();
                    byte[] bArr2 = new byte[8];
                    int i4 = 0;
                    while (i4 < bArrA.length) {
                        if (i4 % 8 == 0) {
                            h34Var.a(bArr2, i4 >>> 3);
                        } else if (i4 == 0) {
                            i4 = 0;
                            h34Var.a(bArr2, i4 >>> 3);
                        }
                        bArrA[i4] = (byte) (((bArrA[i4] ^ bArr2[i4 % 8]) << 24) >> 24);
                        i4++;
                    }
                    int length2 = bArrA.length;
                    if (length2 == 0) {
                        bArr = new byte[0];
                    } else {
                        byte[] bArr3 = new byte[length2];
                        System.arraycopy(bArrA, 0, bArr3, 0, length2);
                        bArr = bArr3;
                    }
                    try {
                        g44Var4.a.a(l44.a(new p34(bArr)));
                        return Optional.empty();
                    } catch (b44 e10) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e10);
                    }
                } catch (a44 unused24) {
                    wu2Var11 = wu2.y;
                    return Optional.of(wu2Var11);
                } catch (i44 unused25) {
                    wu2Var11 = wu2.z;
                    return Optional.of(wu2Var11);
                }
            case 11:
                try {
                    c44 c44Var12 = ((g44) obj).a;
                    double dG = c44Var12.a().g();
                    double dG2 = c44Var12.a().g();
                    if (dG == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                        return Optional.of(wu2.G);
                    }
                    c44Var12.a(l44.a(dG2 / dG));
                    return Optional.empty();
                } catch (a44 unused26) {
                    wu2Var12 = wu2.y;
                    return Optional.of(wu2Var12);
                } catch (b44 e11) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e11);
                } catch (i44 unused27) {
                    wu2Var12 = wu2.z;
                    return Optional.of(wu2Var12);
                }
            case 12:
                try {
                    c44 c44Var13 = ((g44) obj).a;
                    long jC3 = c44Var13.a().c();
                    long jC4 = c44Var13.a().c();
                    if (jC3 == 0) {
                        return Optional.of(wu2.G);
                    }
                    c44Var13.a(l44.a(jC4 / jC3));
                    return Optional.empty();
                } catch (a44 unused28) {
                    wu2Var13 = wu2.y;
                    return Optional.of(wu2Var13);
                } catch (b44 e12) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e12);
                } catch (i44 unused29) {
                    wu2Var13 = wu2.z;
                    return Optional.of(wu2Var13);
                }
            case 13:
                try {
                    ((g44) obj).a.a();
                    return Optional.empty();
                } catch (a44 unused30) {
                    return Optional.of(wu2.B);
                }
            case 14:
                g44 g44Var5 = (g44) obj;
                try {
                    long jC5 = g44Var5.a.a().c();
                    try {
                        c44 c44Var14 = g44Var5.a;
                        c44Var14.a(l44.a((l44) c44Var14.a.get(c44Var14.a(jC5))));
                        return Optional.empty();
                    } catch (a44 unused31) {
                        wu2Var14 = wu2.g;
                        return Optional.of(wu2Var14);
                    } catch (b44 e13) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e13);
                    }
                } catch (a44 unused32) {
                    wu2Var14 = wu2.y;
                } catch (i44 unused33) {
                    wu2Var14 = wu2.z;
                }
                break;
            case 15:
                g44 g44Var6 = (g44) obj;
                try {
                    long jC6 = g44Var6.b.a().b + g44Var6.a.a().c();
                    try {
                        c44 c44Var15 = g44Var6.a;
                        c44Var15.a(l44.a((l44) c44Var15.a.get(c44Var15.a(-jC6))));
                        return Optional.empty();
                    } catch (a44 unused34) {
                        wu2Var15 = wu2.g;
                        return Optional.of(wu2Var15);
                    } catch (b44 e14) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e14);
                    }
                } catch (a44 | y34 unused35) {
                    wu2Var15 = wu2.y;
                } catch (i44 unused36) {
                    wu2Var15 = wu2.z;
                }
                break;
            case 16:
                g44 g44Var7 = (g44) obj;
                try {
                    long jD2 = g44Var7.b.a().b + g44Var7.c.d();
                    try {
                        c44 c44Var16 = g44Var7.a;
                        c44Var16.a(l44.a((l44) c44Var16.a.get(c44Var16.a(-jD2))));
                        return Optional.empty();
                    } catch (a44 unused37) {
                        wu2Var16 = wu2.g;
                        return Optional.of(wu2Var16);
                    } catch (b44 e15) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e15);
                    }
                } catch (r34 | t34 unused38) {
                    wu2Var16 = wu2.z;
                } catch (y34 unused39) {
                    wu2Var16 = wu2.y;
                }
                break;
            case 17:
                try {
                    c44 c44Var17 = ((g44) obj).a;
                    if (new h44(true).compare(c44Var17.a(), c44Var17.a()) != 0) {
                        j3 = 0;
                    }
                    c44Var17.a(l44.a(j3));
                    return Optional.empty();
                } catch (a44 unused40) {
                    wu2Var17 = wu2.y;
                    return Optional.of(wu2Var17);
                } catch (b44 e16) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e16);
                } catch (IllegalArgumentException unused41) {
                    wu2Var17 = wu2.e;
                    return Optional.of(wu2Var17);
                }
            case 18:
                try {
                    c44 c44Var18 = ((g44) obj).a;
                    p34 p34VarD3 = c44Var18.a().d();
                    p34VarD3.getClass();
                    Charset charsetForName = Charset.forName(n34.a("Hn2H4l0="));
                    byte[] bArr4 = p34VarD3.a;
                    String str = new String(bArr4, 0, bArr4.length, charsetForName);
                    switch (str.hashCode()) {
                        case -1325958191:
                            if (str.equals("double")) {
                                b2 = 3;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 104431:
                            if (str.equals("int")) {
                                b2 = 0;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 3039496:
                            if (str.equals("byte")) {
                                b2 = 7;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 3052374:
                            if (str.equals("char")) {
                                b2 = 5;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 3327612:
                            if (str.equals("long")) {
                                b2 = 1;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 3625364:
                            if (!str.equals("void")) {
                                b2 = -1;
                            }
                            break;
                        case 64711720:
                            if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                                b2 = 4;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 97526364:
                            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                                b2 = 2;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 109413500:
                            if (str.equals("short")) {
                                b2 = 6;
                            } else {
                                b2 = -1;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    switch (b2) {
                        case 0:
                            cls = Integer.TYPE;
                            break;
                        case 1:
                            cls = Long.TYPE;
                            break;
                        case 2:
                            cls = Float.TYPE;
                            break;
                        case 3:
                            cls = Double.TYPE;
                            break;
                        case 4:
                            cls = Boolean.TYPE;
                            break;
                        case 5:
                            cls = Character.TYPE;
                            break;
                        case 6:
                            cls = Short.TYPE;
                            break;
                        case 7:
                            cls = Byte.TYPE;
                            break;
                        case 8:
                            cls = Void.TYPE;
                            break;
                        default:
                            cls = Class.forName(str);
                            break;
                    }
                    c44Var18.a(l44.a((Object) cls));
                    return Optional.empty();
                } catch (a44 unused42) {
                    wu2Var18 = wu2.y;
                    return Optional.of(wu2Var18);
                } catch (b44 e17) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e17);
                } catch (i44 unused43) {
                    wu2Var18 = wu2.m;
                    return Optional.of(wu2Var18);
                } catch (ClassNotFoundException unused44) {
                    wu2Var18 = wu2.n;
                    return Optional.of(wu2Var18);
                }
            case 19:
                try {
                    c44 c44Var19 = ((g44) obj).a;
                    List listE3 = c44Var19.a().e();
                    Class<?>[] clsArr = new Class[listE3.size()];
                    for (int i5 = 0; i5 < listE3.size(); i5++) {
                        Object objB2 = ((l44) listE3.get(i5)).b();
                        if (!(objB2 instanceof Class)) {
                            wu2Var20 = wu2.o;
                            return Optional.of(wu2Var20);
                        }
                        clsArr[i5] = (Class) objB2;
                    }
                    p34 p34VarD4 = c44Var19.a().d();
                    p34VarD4.getClass();
                    Charset charsetForName2 = Charset.forName(n34.a("Hn2H4l0="));
                    byte[] bArr5 = p34VarD4.a;
                    String str2 = new String(bArr5, 0, bArr5.length, charsetForName2);
                    Object objB3 = c44Var19.a().b();
                    if (objB3 instanceof Class) {
                        c44Var19.a(l44.a(((Class) objB3).getMethod(str2, clsArr)));
                        return Optional.empty();
                    }
                    wu2Var20 = wu2.o;
                    return Optional.of(wu2Var20);
                } catch (a44 unused45) {
                    wu2Var19 = wu2.y;
                    return Optional.of(wu2Var19);
                } catch (b44 e18) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e18);
                } catch (i44 unused46) {
                    wu2Var19 = wu2.o;
                    return Optional.of(wu2Var19);
                } catch (NoSuchMethodException unused47) {
                    wu2Var19 = wu2.p;
                    return Optional.of(wu2Var19);
                } catch (SecurityException unused48) {
                    wu2Var19 = wu2.D;
                    return Optional.of(wu2Var19);
                }
            default:
                try {
                    c44 c44Var20 = ((g44) obj).a;
                    long jC7 = c44Var20.a().c();
                    l44 l44VarA3 = c44Var20.a();
                    l44 l44VarA4 = c44Var20.a();
                    int i6 = l44VarA4.g;
                    int i7 = i6 - 1;
                    if (i6 == 0) {
                        throw null;
                    }
                    if (i7 == 3) {
                        p34 p34VarD5 = l44VarA4.d();
                        if (jC7 < 0) {
                            jC7 += (long) p34VarD5.a.length;
                        }
                        if (l44VarA3.g != 4) {
                            throw new i44();
                        }
                        if (jC7 >= 0 && jC7 < p34VarD5.a.length) {
                            Charset charsetForName3 = Charset.forName(n34.a("Hn2H4l0="));
                            byte[] bArr6 = p34VarD5.a;
                            char cCharAt = new String(bArr6, 0, bArr6.length, charsetForName3).charAt((int) jC7);
                            StringBuilder sb = new StringBuilder(String.valueOf(cCharAt).length());
                            sb.append(cCharAt);
                            l44VarA2 = l44.a(p34.a(sb.toString()));
                            l44VarA3 = l44VarA2;
                        }
                    } else {
                        if (i7 != 4) {
                            throw new i44();
                        }
                        List listE4 = l44VarA4.e();
                        if (jC7 < 0) {
                            jC7 += (long) listE4.size();
                        }
                        if (jC7 >= 0 && jC7 < listE4.size()) {
                            l44VarA2 = (l44) listE4.get((int) jC7);
                            l44VarA3 = l44VarA2;
                        }
                    }
                    c44Var20.a(l44VarA3);
                    return Optional.empty();
                } catch (a44 unused49) {
                    wu2Var21 = wu2.y;
                    return Optional.of(wu2Var21);
                } catch (b44 e19) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e19);
                } catch (i44 unused50) {
                    wu2Var21 = wu2.z;
                    return Optional.of(wu2Var21);
                }
        }
    }
}
