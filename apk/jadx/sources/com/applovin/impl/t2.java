package com.applovin.impl;

/* JADX INFO: loaded from: classes2.dex */
public class t2 {
    private String a;
    private String b;
    private int c;
    private int d;

    public static class a {
        private String a;
        private String b;
        private int c;
        private int d;

        a() {
        }

        public a a(int i) {
            this.d = i;
            return this;
        }

        public a a(String str) {
            this.b = str;
            return this;
        }

        public t2 a() {
            return new t2(this.a, this.b, this.c, this.d);
        }

        public a b(int i) {
            this.c = i;
            return this;
        }

        public a b(String str) {
            this.a = str;
            return this;
        }

        public String toString() {
            return "LicenseVerificationObject.LicenseVerificationObjectBuilder(signedData=" + this.a + ", signature=" + this.b + ", responseCode=" + this.c + ", nonce=" + this.d + ")";
        }
    }

    t2(String str, String str2, int i, int i2) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
    }

    public static a a() {
        return new a();
    }

    protected boolean a(Object obj) {
        return obj instanceof t2;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.c;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t2)) {
            return false;
        }
        t2 t2Var = (t2) obj;
        if (!t2Var.a(this) || c() != t2Var.c() || b() != t2Var.b()) {
            return false;
        }
        String strE = e();
        String strE2 = t2Var.e();
        if (strE != null ? !strE.equals(strE2) : strE2 != null) {
            return false;
        }
        String strD = d();
        String strD2 = t2Var.d();
        return strD != null ? strD.equals(strD2) : strD2 == null;
    }

    public int hashCode() {
        int iC = ((c() + 59) * 59) + b();
        String strE = e();
        int iHashCode = (iC * 59) + (strE == null ? 43 : strE.hashCode());
        String strD = d();
        return (iHashCode * 59) + (strD != null ? strD.hashCode() : 43);
    }

    public String toString() {
        return "LicenseVerificationObject(signedData=" + e() + ", signature=" + d() + ", responseCode=" + c() + ", nonce=" + b() + ")";
    }
}
