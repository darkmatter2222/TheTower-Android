package com.google.android.play.deku.j$.util.concurrent;

import com.google.android.play.deku.java.util.function.BiConsumer;
import com.google.android.play.deku.java.util.function.BiFunction;
import com.google.android.play.deku.java.util.function.Function;
import com.ironsource.G5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, j$.util.j {
    public static final int g = Runtime.getRuntime().availableProcessors();
    public static final com.google.android.play.deku.j$.sun.misc.a h;
    public static final long i;
    public static final long j;
    public static final long k;
    public static final long l;
    public static final long m;
    public static final int n;
    public static final int o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;
    public volatile transient j[] a;
    public volatile transient j[] b;
    private volatile transient long baseCount;
    public volatile transient c[] c;
    private volatile transient int cellsBusy;
    public transient h d;
    public transient q e;
    public transient e f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    static {
        ObjectStreamField objectStreamField = new ObjectStreamField("segments", l[].class);
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{objectStreamField, new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        com.google.android.play.deku.j$.sun.misc.a aVar = com.google.android.play.deku.j$.sun.misc.a.b;
        h = aVar;
        i = aVar.a(ConcurrentHashMap.class, "sizeCtl");
        j = aVar.a(ConcurrentHashMap.class, "transferIndex");
        k = aVar.a(ConcurrentHashMap.class, "baseCount");
        l = aVar.a(ConcurrentHashMap.class, "cellsBusy");
        m = aVar.a(c.class, "value");
        n = aVar.a.arrayBaseOffset(j[].class);
        int iArrayIndexScale = aVar.a.arrayIndexScale(j[].class);
        if (((iArrayIndexScale - 1) & iArrayIndexScale) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        o = 31 - Integer.numberOfLeadingZeros(iArrayIndexScale);
    }

    public static final boolean b(j[] jVarArr, int i2, j jVar) {
        long j2 = (((long) i2) << o) + ((long) n);
        Unsafe unsafe = h.a;
        while (true) {
            j[] jVarArr2 = jVarArr;
            j jVar2 = jVar;
            if (unsafe.compareAndSwapObject(jVarArr2, j2, (Object) null, jVar2)) {
                return true;
            }
            if (unsafe.getObject(jVarArr2, j2) != null) {
                return false;
            }
            jVarArr = jVarArr2;
            jVar = jVar2;
        }
    }

    public static Class c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls != String.class) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces == null) {
                return null;
            }
            for (Type type : genericInterfaces) {
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    if (parameterizedType.getRawType() != Comparable.class || (actualTypeArguments = parameterizedType.getActualTypeArguments()) == null || actualTypeArguments.length != 1 || actualTypeArguments[0] != cls) {
                    }
                }
            }
            return null;
        }
        return cls;
    }

    public static final void g(j[] jVarArr, int i2, j jVar) {
        h.a.putObjectVolatile(jVarArr, (((long) i2) << o) + ((long) n), jVar);
    }

    public static final int h(int i2) {
        return (i2 ^ (i2 >>> 16)) & Integer.MAX_VALUE;
    }

    public static final j j(j[] jVarArr, int i2) {
        return (j) h.a.getObjectVolatile(jVarArr, (((long) i2) << o) + ((long) n));
    }

    public static j n(p pVar) {
        j jVar = null;
        j jVar2 = null;
        for (j jVar3 = pVar; jVar3 != null; jVar3 = jVar3.d) {
            j jVar4 = new j(jVar3.a, jVar3.b, jVar3.c);
            if (jVar2 == null) {
                jVar = jVar4;
            } else {
                jVar2.d = jVar4;
            }
            jVar2 = jVar4;
        }
        return jVar;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        long j2;
        long j3;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j4 = 0;
        long j5 = 0;
        j jVar = null;
        while (true) {
            Object object = objectInputStream.readObject();
            Object object2 = objectInputStream.readObject();
            j2 = 1;
            if (object == null || object2 == null) {
                break;
            }
            j5++;
            jVar = new j(h(object.hashCode()), object, object2, jVar);
        }
        if (j5 == 0) {
            this.sizeCtl = 0;
            return;
        }
        long j6 = (long) (((double) (j5 / 0.75f)) + 1.0d);
        int i2 = 1073741824;
        boolean z2 = true;
        if (j6 < 1073741824) {
            int iNumberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(((int) j6) - 1);
            if (iNumberOfLeadingZeros < 0) {
                i2 = 1;
            } else if (iNumberOfLeadingZeros < 1073741824) {
                i2 = iNumberOfLeadingZeros + 1;
            }
        }
        j[] jVarArr = new j[i2];
        int i3 = i2 - 1;
        while (jVar != null) {
            j jVar2 = jVar.d;
            int i4 = jVar.a;
            int i5 = i4 & i3;
            j jVarJ = j(jVarArr, i5);
            if (jVarJ == null) {
                j3 = j2;
                z = z2;
            } else {
                Object obj2 = jVar.b;
                if (jVarJ.a < 0) {
                    j3 = j2;
                    if (((o) jVarJ).e(i4, obj2, jVar.c) == null) {
                        j4 += j3;
                    }
                } else {
                    j3 = j2;
                    j jVar3 = jVarJ;
                    int i6 = 0;
                    while (true) {
                        if (jVar3 == null) {
                            z = z2;
                            break;
                        }
                        if (jVar3.a == i4 && ((obj = jVar3.b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        } else {
                            i6++;
                            jVar3 = jVar3.d;
                        }
                    }
                    if (z && i6 >= 8) {
                        j4 += j3;
                        jVar.d = jVarJ;
                        j jVar4 = jVar;
                        p pVar = null;
                        p pVar2 = null;
                        while (jVar4 != null) {
                            p pVar3 = new p(jVar4.a, jVar4.b, jVar4.c, null, null);
                            pVar3.h = pVar2;
                            if (pVar2 == null) {
                                pVar = pVar3;
                            } else {
                                pVar2.d = pVar3;
                            }
                            jVar4 = jVar4.d;
                            pVar2 = pVar3;
                        }
                        g(jVarArr, i5, new o(pVar));
                    }
                }
                z = false;
            }
            if (z) {
                j4 += j3;
                jVar.d = jVarJ;
                g(jVarArr, i5, jVar);
            }
            jVar = jVar2;
            j2 = j3;
            z2 = true;
        }
        this.a = jVarArr;
        this.sizeCtl = i2 - (i2 >>> 2);
        this.baseCount = j4;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        int i2 = 0;
        int i3 = 1;
        while (i3 < 16) {
            i2++;
            i3 <<= 1;
        }
        int i4 = 32 - i2;
        int i5 = i3 - 1;
        l[] lVarArr = new l[16];
        for (int i6 = 0; i6 < 16; i6++) {
            lVarArr[i6] = new l();
        }
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("segments", lVarArr);
        putFieldPutFields.put("segmentShift", i4);
        putFieldPutFields.put("segmentMask", i5);
        objectOutputStream.writeFields();
        j[] jVarArr = this.a;
        if (jVarArr != null) {
            n nVar = new n(jVarArr, jVarArr.length, jVarArr.length);
            while (true) {
                j jVarA = nVar.a();
                if (jVarA == null) {
                    break;
                }
                objectOutputStream.writeObject(jVarA.b);
                objectOutputStream.writeObject(jVarA.c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    /* JADX WARN: Code duplicated, block: B:123:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:148:0x01be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0107  */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        if (r0.a.compareAndSwapLong(r1, r2, r4, r6) == false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r25, int r27) {
        /*
            Method dump skipped, instruction units count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.deku.j$.util.concurrent.ConcurrentHashMap.a(long, int):void");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        j jVarJ;
        j jVar;
        j[] jVarArrD = this.a;
        long j2 = 0;
        loop0: while (true) {
            int i2 = 0;
            while (true) {
                if (jVarArrD == null || i2 >= jVarArrD.length) {
                    break loop0;
                }
                jVarJ = j(jVarArrD, i2);
                if (jVarJ == null) {
                    i2++;
                } else {
                    int i3 = jVarJ.a;
                    if (i3 == -1) {
                        break;
                    }
                    synchronized (jVarJ) {
                        try {
                            if (j(jVarArrD, i2) == jVarJ) {
                                if (i3 >= 0) {
                                    jVar = jVarJ;
                                } else {
                                    jVar = jVarJ instanceof o ? ((o) jVarJ).f : null;
                                }
                                while (jVar != null) {
                                    j2--;
                                    jVar = jVar.d;
                                }
                                g(jVarArrD, i2, null);
                                i2++;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            jVarArrD = d(jVarArrD, jVarJ);
        }
        if (j2 != 0) {
            a(j2, -1);
        }
    }

    public final Object compute(Object obj, BiFunction biFunction) {
        throw null;
    }

    public final Object computeIfAbsent(Object obj, Function function) {
        throw null;
    }

    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        j[] jVarArr = this.a;
        if (jVarArr == null) {
            return false;
        }
        n nVar = new n(jVarArr, jVarArr.length, jVarArr.length);
        while (true) {
            j jVarA = nVar.a();
            if (jVarA == null) {
                return false;
            }
            Object obj2 = jVarA.c;
            if (obj2 == obj) {
                return true;
            }
            if (obj2 != null && obj.equals(obj2)) {
                return true;
            }
        }
    }

    public final j[] d(j[] jVarArr, j jVar) {
        int i2;
        if (!(jVar instanceof f)) {
            return this.a;
        }
        j[] jVarArr2 = ((f) jVar).e;
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(jVarArr.length) | 32768;
        while (jVarArr2 == this.b && this.a == jVarArr && (i2 = this.sizeCtl) < 0 && (i2 >>> 16) == iNumberOfLeadingZeros && i2 != iNumberOfLeadingZeros + 1 && i2 != 65535 + iNumberOfLeadingZeros && this.transferIndex > 0) {
            ConcurrentHashMap<K, V> concurrentHashMap = this;
            if (h.a.compareAndSwapInt(concurrentHashMap, i, i2, i2 + 1)) {
                concurrentHashMap.k(jVarArr, jVarArr2);
                return jVarArr2;
            }
            this = concurrentHashMap;
        }
        return jVarArr2;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0100  */
    /* JADX WARN: Code duplicated, block: B:106:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:97:0x00ee  */
    public final Object e(Object obj, Object obj2, boolean z) {
        int i2;
        ConcurrentHashMap<K, V> concurrentHashMap;
        j[] jVarArr;
        int i3;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (obj == null || obj2 == null) {
            throw null;
        }
        int iH = h(obj.hashCode());
        j[] jVarArrD = this.a;
        int i4 = 0;
        while (true) {
            if (jVarArrD != null) {
                int length = jVarArrD.length;
                if (length == 0) {
                    while (true) {
                        jVarArrD = this.a;
                        if (jVarArrD == null) {
                        }
                        i2 = this.sizeCtl;
                        if (i2 < 0) {
                            Thread.yield();
                        } else {
                            concurrentHashMap = this;
                            if (h.a.compareAndSwapInt(concurrentHashMap, i, i2, -1)) {
                                jVarArr = concurrentHashMap.a;
                                if (jVarArr != null) {
                                    if (i2 > 0) {
                                        i3 = i2;
                                    } else {
                                        i3 = 16;
                                    }
                                    jVarArrD = new j[i3];
                                    concurrentHashMap.a = jVarArrD;
                                    i2 = i3 - (i3 >>> 2);
                                } else {
                                    if (i2 > 0) {
                                        i3 = i2;
                                    } else {
                                        i3 = 16;
                                    }
                                    jVarArrD = new j[i3];
                                    concurrentHashMap.a = jVarArrD;
                                    i2 = i3 - (i3 >>> 2);
                                }
                                concurrentHashMap.sizeCtl = i2;
                                break;
                                break;
                            }
                            this = concurrentHashMap;
                        }
                    }
                } else {
                    int i5 = (length - 1) & iH;
                    j jVarJ = j(jVarArrD, i5);
                    if (jVarJ != null) {
                        int i6 = jVarJ.a;
                        if (i6 == -1) {
                            jVarArrD = this.d(jVarArrD, jVarJ);
                        } else if (!z || i6 != iH || (((obj5 = jVarJ.b) != obj && (obj5 == null || !obj.equals(obj5))) || (obj6 = jVarJ.c) == null)) {
                            synchronized (jVarJ) {
                                try {
                                    if (j(jVarArrD, i5) != jVarJ) {
                                        obj3 = null;
                                    } else if (i6 >= 0) {
                                        i4 = 1;
                                        j jVar = jVarJ;
                                        while (true) {
                                            if (jVar.a != iH || ((obj4 = jVar.b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                j jVar2 = jVar.d;
                                                if (jVar2 == null) {
                                                    jVar.d = new j(iH, obj, obj2);
                                                    obj3 = null;
                                                } else {
                                                    i4++;
                                                    jVar = jVar2;
                                                }
                                            } else {
                                                obj3 = jVar.c;
                                                if (!z) {
                                                    jVar.c = obj2;
                                                }
                                            }
                                        }
                                    } else if (jVarJ instanceof o) {
                                        p pVarE = ((o) jVarJ).e(iH, obj, obj2);
                                        if (pVarE != null) {
                                            Object obj7 = pVarE.c;
                                            if (!z) {
                                                pVarE.c = obj2;
                                            }
                                            obj3 = obj7;
                                        } else {
                                            obj3 = null;
                                        }
                                        i4 = 2;
                                    } else {
                                        if (jVarJ instanceof k) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                        obj3 = null;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i4 != 0) {
                                if (i4 >= 8) {
                                    this.l(jVarArrD, i5);
                                }
                                if (obj3 == null) {
                                    break;
                                }
                                return obj3;
                            }
                        } else {
                            return obj6;
                        }
                    } else if (b(jVarArrD, i5, new j(iH, obj, obj2))) {
                        break;
                    }
                }
                concurrentHashMap = this;
                break;
                break;
            } else {
                while (true) {
                    jVarArrD = this.a;
                    if (jVarArrD == null && jVarArrD.length != 0) {
                        concurrentHashMap = this;
                        break;
                    }
                    i2 = this.sizeCtl;
                    if (i2 < 0) {
                        Thread.yield();
                    } else {
                        concurrentHashMap = this;
                        if (h.a.compareAndSwapInt(concurrentHashMap, i, i2, -1)) {
                            try {
                                jVarArr = concurrentHashMap.a;
                                if (jVarArr != null || jVarArr.length == 0) {
                                    if (i2 > 0) {
                                        i3 = i2;
                                    } else {
                                        i3 = 16;
                                    }
                                    jVarArrD = new j[i3];
                                    concurrentHashMap.a = jVarArrD;
                                    i2 = i3 - (i3 >>> 2);
                                } else {
                                    jVarArrD = jVarArr;
                                }
                                concurrentHashMap.sizeCtl = i2;
                                break;
                            } catch (Throwable th2) {
                                concurrentHashMap.sizeCtl = i2;
                                throw th2;
                            }
                        }
                        this = concurrentHashMap;
                    }
                }
            }
            this = concurrentHashMap;
        }
        this.a(1L, i4);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        e eVar = this.f;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.f = eVar2;
        return eVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        V value;
        Object obj2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            j[] jVarArr = this.a;
            int length = jVarArr == null ? 0 : jVarArr.length;
            n nVar = new n(jVarArr, length, length);
            while (true) {
                j jVarA = nVar.a();
                if (jVarA == null) {
                    for (Map.Entry<K, V> entry : map.entrySet()) {
                        K key = entry.getKey();
                        if (key == null || (value = entry.getValue()) == null || (obj2 = get(key)) == null || (value != obj2 && !value.equals(obj2))) {
                            break;
                        }
                    }
                    return true;
                }
                Object obj3 = jVarA.c;
                Object obj4 = map.get(jVarA.b);
                if (obj4 == null || (obj4 != obj3 && !obj4.equals(obj3))) {
                    break;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x00ae A[PHI: r7
  0x00ae: PHI (r7v3 boolean) = 
  (r7v1 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
  (r7v4 boolean)
 binds: [B:68:0x00ad, B:49:0x0075, B:51:0x007b, B:55:0x0083, B:57:0x0089, B:44:0x0067, B:32:0x004b, B:34:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    public final Object f(Object obj, Object obj2, Object obj3) {
        int length;
        int i2;
        j jVarJ;
        boolean z;
        Object obj4;
        p pVarB;
        Object obj5;
        int iH = h(obj.hashCode());
        j[] jVarArrD = this.a;
        while (jVarArrD != null && (length = jVarArrD.length) != 0 && (jVarJ = j(jVarArrD, (i2 = (length - 1) & iH))) != null) {
            int i3 = jVarJ.a;
            if (i3 == -1) {
                jVarArrD = d(jVarArrD, jVarJ);
            } else {
                synchronized (jVarJ) {
                    try {
                        if (j(jVarArrD, i2) == jVarJ) {
                            z = true;
                            if (i3 >= 0) {
                                j jVar = null;
                                j jVar2 = jVarJ;
                                while (true) {
                                    if (jVar2.a != iH || ((obj5 = jVar2.b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        j jVar3 = jVar2.d;
                                        if (jVar3 != null) {
                                            jVar = jVar2;
                                            jVar2 = jVar3;
                                        }
                                    } else {
                                        obj4 = jVar2.c;
                                        if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                            if (obj2 != null) {
                                                jVar2.c = obj2;
                                            } else {
                                                j jVar4 = jVar2.d;
                                                if (jVar != null) {
                                                    jVar.d = jVar4;
                                                } else {
                                                    g(jVarArrD, i2, jVar4);
                                                }
                                            }
                                        }
                                    }
                                    obj4 = null;
                                }
                            } else if (jVarJ instanceof o) {
                                o oVar = (o) jVarJ;
                                p pVar = oVar.e;
                                if (pVar == null || (pVarB = pVar.b(iH, obj, null)) == null) {
                                    obj4 = null;
                                } else {
                                    obj4 = pVarB.c;
                                    if (obj3 != null && obj3 != obj4 && (obj4 == null || !obj3.equals(obj4))) {
                                        obj4 = null;
                                    } else if (obj2 != null) {
                                        pVarB.c = obj2;
                                    } else if (oVar.f(pVarB)) {
                                        g(jVarArrD, i2, n(oVar.f));
                                    }
                                }
                            } else {
                                if (jVarJ instanceof k) {
                                    throw new IllegalStateException("Recursive update");
                                }
                                z = false;
                                obj4 = null;
                            }
                        } else {
                            z = false;
                            obj4 = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    if (obj4 == null) {
                        break;
                    }
                    if (obj2 == null) {
                        a(-1L, -1);
                    }
                    return obj4;
                }
            }
        }
        return null;
    }

    public final void forEach(BiConsumer biConsumer) {
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        int length;
        j jVarJ;
        Object obj2;
        int iH = h(obj.hashCode());
        j[] jVarArr = this.a;
        if (jVarArr == null || (length = jVarArr.length) <= 0 || (jVarJ = j(jVarArr, (length - 1) & iH)) == null) {
            return null;
        }
        int i2 = jVarJ.a;
        if (i2 == iH) {
            Object obj3 = jVarJ.b;
            if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                return jVarJ.c;
            }
        } else if (i2 < 0) {
            j jVarA = jVarJ.a(iH, obj);
            if (jVarA != null) {
                return jVarA.c;
            }
            return null;
        }
        while (true) {
            jVarJ = jVarJ.d;
            if (jVarJ == null) {
                return null;
            }
            if (jVarJ.a == iH && ((obj2 = jVarJ.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return jVarJ.c;
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? obj2 : obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        j[] jVarArr = this.a;
        int iHashCode = 0;
        if (jVarArr != null) {
            n nVar = new n(jVarArr, jVarArr.length, jVarArr.length);
            while (true) {
                j jVarA = nVar.a();
                if (jVarA == null) {
                    break;
                }
                iHashCode += jVarA.c.hashCode() ^ jVarA.b.hashCode();
            }
        }
        return iHashCode;
    }

    public final long i() {
        c[] cVarArr = this.c;
        long j2 = this.baseCount;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar != null) {
                    j2 += cVar.value;
                }
            }
        }
        return j2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return i() <= 0;
    }

    public final void k(j[] jVarArr, j[] jVarArr2) {
        j[] jVarArr3;
        int i2;
        boolean z;
        char c;
        int i3;
        int i4;
        j oVar;
        j oVar2;
        j jVar;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = jVarArr.length;
        int i5 = g;
        boolean z2 = true;
        int i6 = i5 > 1 ? (length >>> 3) / i5 : length;
        char c2 = 16;
        int i7 = i6 < 16 ? 16 : i6;
        if (jVarArr2 == null) {
            try {
                j[] jVarArr4 = new j[length << 1];
                concurrentHashMap.b = jVarArr4;
                concurrentHashMap.transferIndex = length;
                jVarArr3 = jVarArr4;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            jVarArr3 = jVarArr2;
        }
        int length2 = jVarArr3.length;
        f fVar = new f(jVarArr3);
        boolean zB = true;
        int i8 = 0;
        int i9 = 0;
        boolean z3 = false;
        while (true) {
            if (zB) {
                int i10 = i8 - 1;
                if (i10 >= i9 || z3) {
                    i9 = i9;
                    i8 = i10;
                    zB = false;
                } else {
                    int i11 = concurrentHashMap.transferIndex;
                    if (i11 <= 0) {
                        i8 = -1;
                    } else {
                        com.google.android.play.deku.j$.sun.misc.a aVar = h;
                        long j2 = j;
                        int i12 = i11 > i7 ? i11 - i7 : 0;
                        int i13 = i9;
                        if (aVar.a.compareAndSwapInt(concurrentHashMap, j2, i11, i12)) {
                            i8 = i11 - 1;
                            i9 = i12;
                        } else {
                            i9 = i13;
                            i8 = i10;
                        }
                    }
                    zB = false;
                }
            } else {
                int i14 = i9;
                p pVar = null;
                j jVar2 = null;
                if (i8 < 0 || i8 >= length || (i4 = i8 + length) >= length2) {
                    i2 = length;
                    z = z2;
                    c = c2;
                    i3 = i7;
                    if (z3) {
                        concurrentHashMap.b = null;
                        concurrentHashMap.a = jVarArr3;
                        concurrentHashMap.sizeCtl = (i2 << 1) - (i2 >>> 1);
                        return;
                    }
                    com.google.android.play.deku.j$.sun.misc.a aVar2 = h;
                    long j3 = i;
                    int i15 = concurrentHashMap.sizeCtl;
                    int i16 = i8;
                    if (!aVar2.a.compareAndSwapInt(concurrentHashMap, j3, i15, i15 - 1)) {
                        i8 = i16;
                    } else {
                        if (i15 - 2 != ((Integer.numberOfLeadingZeros(i2) | 32768) << 16)) {
                            return;
                        }
                        zB = z;
                        z3 = zB;
                        i8 = i2;
                    }
                } else {
                    j jVarJ = j(jVarArr, i8);
                    if (jVarJ == null) {
                        zB = b(jVarArr, i8, fVar);
                        i2 = length;
                        z = z2;
                        c = c2;
                        i3 = i7;
                    } else {
                        z = z2;
                        int i17 = jVarJ.a;
                        if (i17 == -1) {
                            i2 = length;
                            c = c2;
                            i3 = i7;
                            zB = z;
                        } else {
                            synchronized (jVarJ) {
                                try {
                                    if (j(jVarArr, i8) == jVarJ) {
                                        if (i17 >= 0) {
                                            int i18 = i17 & length;
                                            j jVar3 = jVarJ.d;
                                            j jVar4 = jVarJ;
                                            while (jVar3 != null) {
                                                char c3 = c2;
                                                int i19 = jVar3.a & length;
                                                if (i19 != i18) {
                                                    jVar4 = jVar3;
                                                    i18 = i19;
                                                }
                                                jVar3 = jVar3.d;
                                                c2 = c3;
                                            }
                                            c = c2;
                                            if (i18 == 0) {
                                                jVar = null;
                                                jVar2 = jVar4;
                                            } else {
                                                jVar = jVar4;
                                            }
                                            j jVar5 = jVarJ;
                                            while (jVar5 != jVar4) {
                                                int i20 = jVar5.a;
                                                Object obj = jVar5.b;
                                                int i21 = length;
                                                Object obj2 = jVar5.c;
                                                if ((i20 & i21) == 0) {
                                                    jVar2 = new j(i20, obj, obj2, jVar2);
                                                } else {
                                                    jVar = new j(i20, obj, obj2, jVar);
                                                }
                                                jVar5 = jVar5.d;
                                                length = i21;
                                                i7 = i7;
                                            }
                                            i2 = length;
                                            i3 = i7;
                                            g(jVarArr3, i8, jVar2);
                                            g(jVarArr3, i4, jVar);
                                            g(jVarArr, i8, fVar);
                                        } else {
                                            i2 = length;
                                            c = c2;
                                            i3 = i7;
                                            if (jVarJ instanceof o) {
                                                o oVar3 = (o) jVarJ;
                                                p pVar2 = null;
                                                p pVar3 = null;
                                                j jVar6 = oVar3.f;
                                                int i22 = 0;
                                                int i23 = 0;
                                                p pVar4 = null;
                                                while (jVar6 != null) {
                                                    o oVar4 = oVar3;
                                                    int i24 = jVar6.a;
                                                    p pVar5 = new p(i24, jVar6.b, jVar6.c, null, null);
                                                    if ((i24 & i2) == 0) {
                                                        pVar5.h = pVar3;
                                                        if (pVar3 == null) {
                                                            pVar = pVar5;
                                                        } else {
                                                            pVar3.d = pVar5;
                                                        }
                                                        i22++;
                                                        pVar3 = pVar5;
                                                    } else {
                                                        pVar5.h = pVar2;
                                                        if (pVar2 == null) {
                                                            pVar4 = pVar5;
                                                        } else {
                                                            pVar2.d = pVar5;
                                                        }
                                                        i23++;
                                                        pVar2 = pVar5;
                                                    }
                                                    jVar6 = jVar6.d;
                                                    oVar3 = oVar4;
                                                }
                                                o oVar5 = oVar3;
                                                if (i22 <= 6) {
                                                    oVar = n(pVar);
                                                } else {
                                                    oVar = i23 != 0 ? new o(pVar) : oVar5;
                                                }
                                                if (i23 <= 6) {
                                                    oVar2 = n(pVar4);
                                                } else {
                                                    oVar2 = i22 != 0 ? new o(pVar4) : oVar5;
                                                }
                                                g(jVarArr3, i8, oVar);
                                                g(jVarArr3, i4, oVar2);
                                                g(jVarArr, i8, fVar);
                                            }
                                        }
                                        zB = z;
                                    } else {
                                        i2 = length;
                                        c = c2;
                                        i3 = i7;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    }
                }
                concurrentHashMap = this;
                i9 = i14;
                z2 = z;
                c2 = c;
                length = i2;
                i7 = i3;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        h hVar = this.d;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(this);
        this.d = hVar2;
        return hVar2;
    }

    public final void l(j[] jVarArr, int i2) {
        int length = jVarArr.length;
        if (length < 64) {
            m(length << 1);
            return;
        }
        j jVarJ = j(jVarArr, i2);
        if (jVarJ == null || jVarJ.a < 0) {
            return;
        }
        synchronized (jVarJ) {
            try {
                if (j(jVarArr, i2) == jVarJ) {
                    p pVar = null;
                    j jVar = jVarJ;
                    p pVar2 = null;
                    while (jVar != null) {
                        p pVar3 = new p(jVar.a, jVar.b, jVar.c, null, null);
                        pVar3.h = pVar2;
                        if (pVar2 == null) {
                            pVar = pVar3;
                        } else {
                            pVar2.d = pVar3;
                        }
                        jVar = jVar.d;
                        pVar2 = pVar3;
                    }
                    g(jVarArr, i2, new o(pVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0017  */
    public final void m(int i2) {
        int i3;
        ConcurrentHashMap<K, V> concurrentHashMap;
        int length;
        if (i2 >= 536870912) {
            i3 = 1073741824;
        } else {
            int iNumberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i2 + (i2 >>> 1));
            i3 = 1;
            if (iNumberOfLeadingZeros >= 0) {
                if (iNumberOfLeadingZeros >= 1073741824) {
                    i3 = 1073741824;
                } else {
                    i3 = 1 + iNumberOfLeadingZeros;
                }
            }
        }
        while (true) {
            int i4 = this.sizeCtl;
            if (i4 < 0) {
                return;
            }
            j[] jVarArr = this.a;
            if (jVarArr == null || (length = jVarArr.length) == 0) {
                concurrentHashMap = this;
                int i5 = i4 > i3 ? i4 : i3;
                if (h.a.compareAndSwapInt(concurrentHashMap, i, i4, -1)) {
                    try {
                        if (concurrentHashMap.a == jVarArr) {
                            concurrentHashMap.a = new j[i5];
                            i4 = i5 - (i5 >>> 2);
                        }
                        concurrentHashMap.sizeCtl = i4;
                    } catch (Throwable th) {
                        concurrentHashMap.sizeCtl = i4;
                        throw th;
                    }
                } else {
                    continue;
                }
            } else {
                if (i3 <= i4 || length >= 1073741824) {
                    return;
                }
                if (jVarArr == this.a) {
                    int iNumberOfLeadingZeros2 = Integer.numberOfLeadingZeros(length) | 32768;
                    com.google.android.play.deku.j$.sun.misc.a aVar = h;
                    long j2 = i;
                    int i6 = (iNumberOfLeadingZeros2 << 16) + 2;
                    Unsafe unsafe = aVar.a;
                    concurrentHashMap = this;
                    if (unsafe.compareAndSwapInt(concurrentHashMap, j2, i4, i6)) {
                        concurrentHashMap.k(jVarArr, null);
                    }
                } else {
                    concurrentHashMap = this;
                }
            }
            this = concurrentHashMap;
        }
    }

    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        return e(obj, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        m(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            e(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        return e(obj, obj2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        return f(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || f(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return f(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return f(obj, obj3, obj2) != null;
    }

    public final void replaceAll(BiFunction biFunction) {
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long jI = i();
        if (jI < 0) {
            return 0;
        }
        if (jI > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jI;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        j[] jVarArr = this.a;
        int length = jVarArr == null ? 0 : jVarArr.length;
        n nVar = new n(jVarArr, length, length);
        StringBuilder sb = new StringBuilder("{");
        j jVarA = nVar.a();
        if (jVarA != null) {
            while (true) {
                Object obj = jVarA.b;
                Object obj2 = jVarA.c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append(G5.U);
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                jVarA = nVar.a();
                if (jVarA == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        q qVar = this.e;
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(this);
        this.e = qVar2;
        return qVar2;
    }
}
