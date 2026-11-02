package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2l, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C12512l<ModelType, StateType> {
    public static byte[] A0A;
    public static String[] A0B = {"K3IBH5IY5D9A1s0otTNJJ1EDvo1qLs", "HR7iyfZ1MOS5huP42RSdRpCkeBunQMOf", "", "bEqFTGguyIKgMYqaAFudqvCpFKGvMgpm", "3wGEEC73gwsSkVWXWqLxZk", "wIAJ3aMEmj6qTKsV0aDgjtipvoJzkW0C", "SCvpsyQDnQo4JnEbtI83SB", "GSqpB1BwT3x"};
    public static final C12512l<?, ?> A0C;
    public static volatile boolean A0D;
    public static volatile boolean A0E;
    public EnumC12522m A00;
    public EnumC12472a A01;
    public String A02;
    public boolean A03;
    public final boolean A04;
    public final C12512l<?, ?> A05;
    public final ModelType A06;
    public final StateType A07;
    public final String A08;
    public final List<InterfaceC12592t<ModelType, StateType>> A09;

    static {
        A02();
        A0E = false;
        A0D = false;
        A0C = new C12512l<>(null, null, A01(48, 5, 42), A01(48, 5, 42), Collections.emptyList(), A0C, false);
    }

    public C12512l(C12532n<ModelType, StateType> c12532n) {
        this(c12532n.A03, c12532n.A04, c12532n.A06, c12532n.A06, c12532n.A01 == null ? Collections.emptyList() : c12532n.A01, c12532n.A00, c12532n.A02);
    }

    public C12512l(ModelType modeltype, StateType statetype, String str, String str2, List<InterfaceC12592t<ModelType, StateType>> list, C12512l<?, ?> c12512l, boolean z) {
        this.A00 = EnumC12522m.A02;
        if (modeltype instanceof View) {
            throw new IllegalArgumentException(A01(0, 48, 123));
        }
        this.A06 = modeltype;
        this.A07 = statetype;
        this.A08 = str;
        this.A02 = str2;
        this.A05 = c12512l;
        this.A03 = false;
        this.A09 = list;
        this.A04 = z;
    }

    public static <ModelType, StateType> C12532n<ModelType, StateType> A00(ModelType modeltype, StateType statetype, String str) {
        return new C12532n<>(modeltype, statetype, str);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{66, 85, 81, 99, 92, 91, 85, 90, 96, 48, 77, 96, 77, Ascii.FF, 95, 84, 91, 97, 88, 80, Ascii.FF, 90, 91, 96, Ascii.FF, 79, 91, 90, 96, 77, 85, 90, Ascii.FF, 77, Ascii.FF, 98, 85, 81, 99, Ascii.FF, 77, 95, Ascii.FF, 89, 91, 80, 81, 88, 0, 8, Ascii.VT, Ascii.SI, Ascii.DC4};
    }

    public final void A03(C2Z c2z) {
        EnumC12472a enumC12472aAA7 = c2z.AA7(this);
        for (InterfaceC12592t<ModelType, StateType> interfaceC12592t : this.A09) {
            if (A0E) {
                Set<EnumC12472a> setA4a = interfaceC12592t.A4a();
                String[] strArr = A0B;
                if (strArr[1].charAt(23) == strArr[3].charAt(23)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0B;
                strArr2[7] = "xMDdEaQw2xH";
                strArr2[2] = "";
                if (setA4a == null || setA4a.contains(enumC12472aAA7)) {
                }
            }
            C12562q.A00().A04(interfaceC12592t.getClass(), this, c2z);
            interfaceC12592t.A70(this, c2z);
        }
        this.A01 = enumC12472aAA7;
        if (enumC12472aAA7 == EnumC12472a.A03) {
            if (A0B[5].charAt(21) != 'v') {
                String[] strArr3 = A0B;
                strArr3[1] = "LJtwB8cI3EbfkOtiIJFKIi9o1I2rBJgG";
                strArr3[3] = "0tFf97eAwPB8MQLOAR2OKfdDt5kB7ks6";
                this.A03 = true;
                return;
            }
            String[] strArr4 = A0B;
            strArr4[1] = "QoCj9orT0xNcauAtwsi6fYCGqcPExTzl";
            strArr4[3] = "4ecJvtfrFAWJRsesvTI6QOWRO0XB2mWp";
            this.A03 = true;
        }
    }

    public final boolean A04() {
        return this.A03;
    }
}
