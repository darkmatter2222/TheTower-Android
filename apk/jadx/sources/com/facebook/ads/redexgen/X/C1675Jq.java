package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1675Jq {
    public static String[] A02 = {"Z83feij0dqMnv8l7XVl89aIhxyjz", "u8oh5uJfkP1OwakAOof1LwNo5boOClU", "yXozUpcQSMZIiSk", "KDBXb1XZqcaJTTSqYOkhwvDinfxffYTe", "mkhK4sIrnjp7QVSkZvM93FeO7cTO4tKz", "lbvSelyJg1emT4Vf", "4BaNyIdTI0W5D7I7l9kcM7idxPZMoGd", "mQ3aCX9m3A7eHUDrTuGXcWx8NfMzZPc6"};
    public final float A00;
    public final int A01;

    public C1675Jq(int i, float f) {
        this.A01 = i;
        this.A00 = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1675Jq c1675Jq = (C1675Jq) obj;
        int i = this.A01;
        int i2 = c1675Jq.A01;
        String[] strArr = A02;
        if (strArr[0].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A02[1] = "VrTg1rXCt8VyxQCfbgp8i";
        return i == i2 && Float.compare(c1675Jq.A00, this.A00) == 0;
    }

    public final int hashCode() {
        return (((17 * 31) + this.A01) * 31) + Float.floatToIntBits(this.A00);
    }
}
