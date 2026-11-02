package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3735nd {
    private boolean a;
    private boolean b;
    private boolean c;
    private EnumC3810rd d;
    private int e;
    private int f;

    /* JADX INFO: renamed from: com.ironsource.nd$a */
    public static class a {
        private boolean a = true;
        private boolean b = false;
        private boolean c = false;
        private EnumC3810rd d = null;
        private int e = 0;
        private int f = 0;

        public a a(boolean z) {
            this.a = z;
            return this;
        }

        public a a(boolean z, int i) {
            this.c = z;
            this.f = i;
            return this;
        }

        public a a(boolean z, EnumC3810rd enumC3810rd, int i) {
            this.b = z;
            if (enumC3810rd == null) {
                enumC3810rd = EnumC3810rd.PER_DAY;
            }
            this.d = enumC3810rd;
            this.e = i;
            return this;
        }

        public C3735nd a() {
            return new C3735nd(this.a, this.b, this.c, this.d, this.e, this.f);
        }
    }

    private C3735nd(boolean z, boolean z2, boolean z3, EnumC3810rd enumC3810rd, int i, int i2) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = enumC3810rd;
        this.e = i;
        this.f = i2;
    }

    public EnumC3810rd a() {
        return this.d;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.a;
    }

    public boolean f() {
        return this.c;
    }
}
