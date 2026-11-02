package com.tapjoy.internal;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class el<E> {
    public static final el<Boolean> c = new el<Boolean>(ei.VARINT, Boolean.class) { // from class: com.tapjoy.internal.el.1
        @Override // com.tapjoy.internal.el
        public final /* bridge */ /* synthetic */ int a(Boolean bool) {
            return 1;
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ Boolean a(em emVar) throws IOException {
            int iC = emVar.c();
            if (iC == 0) {
                return Boolean.FALSE;
            }
            if (iC == 1) {
                return Boolean.TRUE;
            }
            throw new IOException(String.format("Invalid boolean value 0x%02x", Integer.valueOf(iC)));
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ void a(en enVar, Boolean bool) {
            enVar.c(bool.booleanValue() ? 1 : 0);
        }
    };
    public static final el<Integer> d = new el<Integer>(ei.VARINT, Integer.class) { // from class: com.tapjoy.internal.el.7
        @Override // com.tapjoy.internal.el
        public final /* synthetic */ int a(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue >= 0) {
                return en.a(iIntValue);
            }
            return 10;
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ Integer a(em emVar) {
            return Integer.valueOf(emVar.c());
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ void a(en enVar, Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue >= 0) {
                enVar.c(iIntValue);
            } else {
                enVar.c(iIntValue);
            }
        }
    };
    public static final el<Integer> e = new el<Integer>(ei.VARINT, Integer.class) { // from class: com.tapjoy.internal.el.8
        @Override // com.tapjoy.internal.el
        public final /* synthetic */ int a(Integer num) {
            return en.a(num.intValue());
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ Integer a(em emVar) {
            return Integer.valueOf(emVar.c());
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ void a(en enVar, Integer num) {
            enVar.c(num.intValue());
        }
    };
    public static final el<Integer> f = new el<Integer>(ei.VARINT, Integer.class) { // from class: com.tapjoy.internal.el.9
        @Override // com.tapjoy.internal.el
        public final /* synthetic */ int a(Integer num) {
            return en.a(en.b(num.intValue()));
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ Integer a(em emVar) {
            int iC = emVar.c();
            return Integer.valueOf((-(iC & 1)) ^ (iC >>> 1));
        }

        @Override // com.tapjoy.internal.el
        public final /* synthetic */ void a(en enVar, Integer num) {
            enVar.c(en.b(num.intValue()));
        }
    };
    public static final el<Integer> g;
    public static final el<Integer> h;
    public static final el<Long> i;
    public static final el<Long> j;
    public static final el<Long> k;
    public static final el<Long> l;
    public static final el<Long> m;
    public static final el<Float> n;
    public static final el<Double> o;
    public static final el<String> p;
    public static final el<je> q;
    final Class<?> a;
    el<List<E>> b;
    private final ei r;

    public static final class a extends IllegalArgumentException {
        public final int a;

        a(int i, Class<?> cls) {
            super("Unknown enum tag " + i + " for " + cls.getCanonicalName());
            this.a = i;
        }
    }

    static {
        el<Integer> elVar = new el<Integer>(ei.FIXED32, Integer.class) { // from class: com.tapjoy.internal.el.10
            @Override // com.tapjoy.internal.el
            public final /* bridge */ /* synthetic */ int a(Integer num) {
                return 4;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Integer a(em emVar) {
                return Integer.valueOf(emVar.e());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Integer num) {
                enVar.d(num.intValue());
            }
        };
        g = elVar;
        h = elVar;
        i = new el<Long>(ei.VARINT, Long.class) { // from class: com.tapjoy.internal.el.11
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(Long l2) {
                return en.a(l2.longValue());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Long a(em emVar) {
                return Long.valueOf(emVar.d());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Long l2) {
                enVar.c(l2.longValue());
            }
        };
        j = new el<Long>(ei.VARINT, Long.class) { // from class: com.tapjoy.internal.el.12
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(Long l2) {
                return en.a(l2.longValue());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Long a(em emVar) {
                return Long.valueOf(emVar.d());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Long l2) {
                enVar.c(l2.longValue());
            }
        };
        k = new el<Long>(ei.VARINT, Long.class) { // from class: com.tapjoy.internal.el.13
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(Long l2) {
                return en.a(en.b(l2.longValue()));
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Long a(em emVar) {
                long jD = emVar.d();
                return Long.valueOf((-(jD & 1)) ^ (jD >>> 1));
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Long l2) {
                enVar.c(en.b(l2.longValue()));
            }
        };
        el<Long> elVar2 = new el<Long>(ei.FIXED64, Long.class) { // from class: com.tapjoy.internal.el.14
            @Override // com.tapjoy.internal.el
            public final /* bridge */ /* synthetic */ int a(Long l2) {
                return 8;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Long a(em emVar) {
                return Long.valueOf(emVar.f());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Long l2) {
                enVar.d(l2.longValue());
            }
        };
        l = elVar2;
        m = elVar2;
        n = new el<Float>(ei.FIXED32, Float.class) { // from class: com.tapjoy.internal.el.2
            @Override // com.tapjoy.internal.el
            public final /* bridge */ /* synthetic */ int a(Float f2) {
                return 4;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Float a(em emVar) {
                return Float.valueOf(Float.intBitsToFloat(emVar.e()));
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Float f2) {
                enVar.d(Float.floatToIntBits(f2.floatValue()));
            }
        };
        o = new el<Double>(ei.FIXED64, Double.class) { // from class: com.tapjoy.internal.el.3
            @Override // com.tapjoy.internal.el
            public final /* bridge */ /* synthetic */ int a(Double d2) {
                return 8;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Double a(em emVar) {
                return Double.valueOf(Double.longBitsToDouble(emVar.f()));
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Double d2) {
                enVar.d(Double.doubleToLongBits(d2.doubleValue()));
            }
        };
        p = new el<String>(ei.LENGTH_DELIMITED, String.class) { // from class: com.tapjoy.internal.el.4
            /* JADX WARN: Code duplicated, block: B:24:0x0043  */
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(String str) {
                int i2;
                String str2 = str;
                int length = str2.length();
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    char cCharAt = str2.charAt(i3);
                    if (cCharAt < 128) {
                        i4++;
                    } else if (cCharAt < 2048) {
                        i4 += 2;
                    } else if (cCharAt < 55296 || cCharAt > 57343) {
                        i4 += 3;
                    } else if (cCharAt > 56319 || (i2 = i3 + 1) >= length || str2.charAt(i2) < 56320 || str2.charAt(i2) > 57343) {
                        i4++;
                    } else {
                        i4 += 4;
                        i3 = i2;
                    }
                    i3++;
                }
                return i4;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ String a(em emVar) {
                return emVar.a.c(emVar.g());
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, String str) {
                enVar.a.b(str);
            }
        };
        q = new el<je>(ei.LENGTH_DELIMITED, je.class) { // from class: com.tapjoy.internal.el.5
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(je jeVar) {
                return jeVar.c();
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ je a(em emVar) {
                return emVar.a.b(emVar.g());
            }

            @Override // com.tapjoy.internal.el
            public final /* bridge */ /* synthetic */ void a(en enVar, je jeVar) {
                enVar.a(jeVar);
            }
        };
    }

    public el(ei eiVar, Class<?> cls) {
        this.r = eiVar;
        this.a = cls;
    }

    public static String c(E e2) {
        return e2.toString();
    }

    public int a(int i2, E e2) {
        int iA = a(e2);
        if (this.r == ei.LENGTH_DELIMITED) {
            iA += en.a(iA);
        }
        return iA + en.a(en.a(i2, ei.VARINT));
    }

    public abstract int a(E e2);

    public final el<List<E>> a() {
        el<List<E>> elVar = this.b;
        if (elVar != null) {
            return elVar;
        }
        el<List<E>> elVar2 = new el<List<E>>(this.r, List.class) { // from class: com.tapjoy.internal.el.6
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(int i2, Object obj) {
                List list = (List) obj;
                int size = list.size();
                int iA = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    iA += el.this.a(i2, list.get(i3));
                }
                return iA;
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ int a(Object obj) {
                throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ Object a(em emVar) {
                return Collections.singletonList(el.this.a(emVar));
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, int i2, Object obj) {
                List list = (List) obj;
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    el.this.a(enVar, i2, list.get(i3));
                }
            }

            @Override // com.tapjoy.internal.el
            public final /* synthetic */ void a(en enVar, Object obj) {
                throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
            }
        };
        this.b = elVar2;
        return elVar2;
    }

    public abstract E a(em emVar);

    public final E a(jd jdVar) {
        ek.a(jdVar, "source == null");
        return a(new em(jdVar));
    }

    public final E a(byte[] bArr) {
        ek.a(bArr, "bytes == null");
        jb jbVar = new jb();
        if (bArr != null) {
            return a((jd) jbVar.a(bArr, 0, bArr.length));
        }
        throw new IllegalArgumentException("source == null");
    }

    public void a(en enVar, int i2, E e2) {
        enVar.c(en.a(i2, this.r));
        if (this.r == ei.LENGTH_DELIMITED) {
            enVar.c(a(e2));
        }
        a(enVar, e2);
    }

    public abstract void a(en enVar, E e2);

    public final void a(jc jcVar, E e2) {
        ek.a(e2, "value == null");
        ek.a(jcVar, "sink == null");
        a(new en(jcVar), e2);
    }

    public final byte[] b(E e2) {
        ek.a(e2, "value == null");
        jb jbVar = new jb();
        try {
            a(jbVar, e2);
            return jbVar.h();
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }
}
