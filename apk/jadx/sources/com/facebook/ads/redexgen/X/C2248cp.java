package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2248cp {
    public static String[] A0D = {"DTulKQrrWb7WgzZwh16YoEcpy778VgMy", "8EjtzI3HlIz4Pm9zhd0onx8Z3l7fT0K4", "hZG7PFSqDvHFx4aZzCCs", "NrBUNAbcM2tXV0XazOUf6pBtZmmB7BuO", "rw6GjiBqQQJEVkZ86xi8", "BAZaFrCayruuOD7F2KUN0A6FB01Uk5HF", "HWz5uYK1hcLDuQI2yRRFXcETfaJzrjnP", "uIyZjA4SaSm7DVUQlHbIfXLJsnmilllF"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final ZP A0C;

    public C2248cp(ZP zp) {
        this.A0C = zp;
    }

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
    private void A00(int i) {
        if (this.A04 == -9223372036854775807L) {
            return;
        }
        boolean z = this.A0B;
        this.A0C.AKC(this.A04, z ? 1 : 0, (int) (this.A01 - this.A03), i, null);
    }

    public static boolean A01(int i) {
        return (32 <= i && i <= 35) || i == 39;
    }

    public static boolean A02(int i) {
        return i < 32 || i == 40;
    }

    public final void A03() {
        this.A07 = false;
        this.A06 = false;
        this.A05 = false;
        this.A0A = false;
        this.A09 = false;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    public final void A04(long j, int i, int i2, long j2, boolean z) {
        boolean z2;
        boolean z3;
        String[] strArr;
        this.A06 = false;
        this.A05 = false;
        this.A02 = j2;
        this.A00 = 0;
        this.A01 = j;
        if (!A02(i2)) {
            if (this.A0A && !this.A09) {
                if (z) {
                    A00(i);
                }
                this.A0A = false;
            }
            if (A01(i2)) {
                this.A05 = !this.A09;
                this.A09 = true;
            }
        }
        if (i2 < 16) {
            z2 = false;
            this.A08 = z2;
            if (!this.A08) {
                strArr = A0D;
                if (strArr[2].length() == strArr[4].length()) {
                    String[] strArr2 = A0D;
                    strArr2[6] = "4Ocv8JF3GKDeC4mKXjD2s8n1gM1kadkJ";
                    strArr2[1] = "fjNjuBzyWMVUxDoBQ51YAFtOMAzxYHsV";
                    if (i2 <= 9) {
                    }
                }
            }
            this.A07 = z3;
            return;
        }
        String[] strArr3 = A0D;
        if (strArr3[3].charAt(3) != strArr3[0].charAt(3)) {
            String[] strArr4 = A0D;
            strArr4[3] = "ZCFeQwj13391vHgWRN0b9uu4saTnirie";
            strArr4[0] = "T77fmyWcZ5yZAw0CyZibU1NLloD5WIOg";
            if (i2 <= 21) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.A08 = z2;
            if (!this.A08) {
                strArr = A0D;
                if (strArr[2].length() == strArr[4].length()) {
                    String[] strArr5 = A0D;
                    strArr5[6] = "4Ocv8JF3GKDeC4mKXjD2s8n1gM1kadkJ";
                    strArr5[1] = "fjNjuBzyWMVUxDoBQ51YAFtOMAzxYHsV";
                    z3 = i2 <= 9;
                }
            }
            this.A07 = z3;
            return;
        }
        throw new RuntimeException();
    }

    public final void A05(long j, int i, boolean z) {
        if (this.A09 && this.A06) {
            this.A0B = this.A08;
            this.A09 = false;
            return;
        }
        boolean z2 = this.A05;
        String[] strArr = A0D;
        if (strArr[3].charAt(3) == strArr[0].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[7] = "0flequyMyfE5xt94RCUdjTeoAwKrmuTb";
        strArr2[5] = "aoZIho4nWCQ4EPCYRAggXfcopQb3mjtK";
        if (z2 || this.A06) {
            if (z && this.A0A) {
                A00(i + ((int) (j - this.A01)));
            }
            this.A03 = this.A01;
            this.A04 = this.A02;
            this.A0B = this.A08;
            this.A0A = true;
        }
    }

    public final void A06(byte[] bArr, int i, int i2) {
        if (this.A07) {
            int i3 = (i + 2) - this.A00;
            if (i3 >= i2) {
                this.A00 += i2 - i;
            } else {
                this.A06 = (bArr[i3] & 128) != 0;
                this.A07 = false;
            }
        }
    }
}
