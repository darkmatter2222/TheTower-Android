package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1964Vn {
    public static byte[] A00;
    public static String[] A01 = {"9N6fClpvr5LogfhEoC3Ym2ZOcMEkPqse", "x6vATfT7Vf", "aFaZ9dc", "0MkqZTlH9L2nw01RphYptsRi2kX68x5e", "l3MmWfWW1bK2VQW7K4iTAOafgi6wKvuU", "qUnT2LTLLCOBUNZqrcPphJ4Y9y0yxiuE", "FSwRZrZn60", "Ot1RG"};

    static {
        A08();
    }

    public static <T> int A00(Iterator<T> it, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        AbstractC1995Wu.A05(interfaceC1994Wt, A07(0, 9, 101));
        int i = 0;
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[3].charAt(31) != strArr[0].charAt(31)) {
                break;
            }
            A01[7] = "qkIcI";
            if (!zHasNext) {
                return -1;
            }
            boolean zA4d = interfaceC1994Wt.A4d(it.next());
            if (A01[2].length() == 25) {
                break;
            }
            String[] strArr2 = A01;
            strArr2[3] = "KgpdcHP4Qu3Yo9bGKYk4wIx2No7jT03e";
            strArr2[0] = "fT447mfK0jSIpwOFgxTZmIAvIDIY5xBe";
            if (zA4d) {
                return i;
            }
            i++;
        }
        throw new RuntimeException();
    }

    public static <T> VV<T> A01(final Iterator<T> it, final InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        AbstractC1995Wu.A04(it);
        AbstractC1995Wu.A04(interfaceC1994Wt);
        return new A2<T>() { // from class: com.facebook.ads.redexgen.X.4c
            public static String[] A02 = {"PY0ykusbaAzaA0tdkuvjz0VYH", "h7aoUrwlHY9NGl5V3azO8LhtwV4y8foG", "25zZmy69rHYb2WrLrifApLhpHCniZbXh", "f06ulwQ2X5IERHUfRYMq5r1GFhmBB2J1", "", "LVKko7v5T", "6ykFsfQ2ClQma73S90yp2Rj3IMh9zHwC", "16ZsLBVPK0yZwF"};

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.facebook.ads.redexgen.X.A2
            @CheckForNull
            public final T A02() {
                T t;
                do {
                    boolean zHasNext = it.hasNext();
                    if (A02[5].length() == 3) {
                        throw new RuntimeException();
                    }
                    A02[6] = "Y0rbe9DkfNE9HDv49VA4209Q8w546LLU";
                    if (!zHasNext) {
                        return A01();
                    }
                    t = (T) it.next();
                } while (!interfaceC1994Wt.A4d(t));
                return t;
            }
        };
    }

    public static <T> Iterator<T> A02() {
        return EnumC1965Vo.A02;
    }

    public static <T> VV<T> A03(@ParametricNullness final T t) {
        return new VV<T>(t) { // from class: com.facebook.ads.redexgen.X.9j
            public boolean A00;
            public final T A01;

            {
                this.A01 = t;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.A00;
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public final T next() {
                if (this.A00) {
                    throw new NoSuchElementException();
                }
                this.A00 = true;
                return this.A01;
            }
        };
    }

    @CheckForNull
    public static <T> T A04(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    @ParametricNullness
    public static <T> T A05(Iterator<T> it, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        AbstractC1995Wu.A04(it);
        AbstractC1995Wu.A04(interfaceC1994Wt);
        while (it.hasNext()) {
            T next = it.next();
            boolean zA4d = interfaceC1994Wt.A4d(next);
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "TLTDT0em8OPGsvbXN9kIxspoKISGsM7e";
            strArr2[0] = "UEE5niBFp0Eu5JfZ6Tbd8HeREOlvLCve";
            if (zA4d) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @ParametricNullness
    public static <T> T A06(@ParametricNullness Iterator<? extends T> it, T t) {
        return it.hasNext() ? it.next() : t;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "e39X5axlEPHpWOZwt6dGSAqI6KpvofZo";
            strArr2[5] = "PyZJSPVIBtkFnrexwHSJUxDm1MLb3Emp";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 92);
            i4++;
        }
    }

    public static void A08() {
        A00 = new byte[]{49, 51, 38, 37, 42, 36, 34, 53, 38};
    }

    public static void A09(Iterator<?> it) {
        AbstractC1995Wu.A04(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> boolean A0A(Collection<T> collection, Iterator<? extends T> it) {
        AbstractC1995Wu.A04(collection);
        AbstractC1995Wu.A04(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static <T> boolean A0B(Iterator<T> it, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        return A00(it, interfaceC1994Wt) != -1;
    }

    public static <T> boolean A0C(Iterator<T> it, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        AbstractC1995Wu.A04(interfaceC1994Wt);
        boolean z = false;
        while (it.hasNext()) {
            if (interfaceC1994Wt.A4d(it.next())) {
                it.remove();
                if (A01[2].length() == 25) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[3] = "sMZfE14AwjxZOYQOlM9o8PsdLIVrvXme";
                strArr[0] = "mLE0wws09Z1jmvTbLn99AUGk1x8kjTve";
                z = true;
            }
        }
        return z;
    }

    public static boolean A0D(@CheckForNull Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            boolean zEquals = obj.equals(it.next());
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[7] = "MSXYr";
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0E(Iterator<?> it, Collection<?> collection) {
        AbstractC1995Wu.A04(collection);
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            String[] strArr = A01;
            if (strArr[3].charAt(31) != strArr[0].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[6] = "BHcJFk2XLj";
            strArr2[1] = "0i5THSQWJg";
            if (collection.contains(next)) {
                it.remove();
                String[] strArr3 = A01;
                if (strArr3[4].charAt(13) != strArr3[5].charAt(13)) {
                    String[] strArr4 = A01;
                    strArr4[4] = "eL5kF2HBDH4ajEUG2G4UVtUleJgFeXO0";
                    strArr4[5] = "Y3CBehoSs3ZNPfORsVFCdKcVWTzjmRHZ";
                    z = true;
                } else {
                    String[] strArr5 = A01;
                    strArr5[4] = "tvqKMKL5Tu5RfYCa2YiDxaKi6ksjwumI";
                    strArr5[5] = "kw1WU0ltlxVitFrDWdz1MX63AdvZ1m2E";
                    z = false;
                }
            }
        }
        return z;
    }

    public static boolean A0F(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !A6.A01(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }
}
