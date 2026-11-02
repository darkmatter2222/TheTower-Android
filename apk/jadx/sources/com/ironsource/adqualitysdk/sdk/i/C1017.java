package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1017 extends AbstractC0993 implements InterfaceC0497 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public JSONObject f3613;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f3615;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f3616;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String f3619;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f3612 = StringFog.decrypt("uaERNPBr3h+agBQp8A==\n", "9MR1XZEft3A=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f3611 = StringFog.decrypt("MugBhzf5bNAi+Rq2FvZv0A==\n", "QY11xFiXArU=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f3610 = StringFog.decrypt("BKexyS6K708Atqr4D4XsTw==\n", "Y8LFikHkgSo=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f3609 = StringFog.decrypt("ZCHgOjuD+7ljIfA5O5Plt2Uv2hYzgg==\n", "F0SUd17nktg=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f3608 = StringFog.decrypt("z6G6sTltVDXcoaqyOX1KO9qvgJ0xbA==\n", "qMTO/FwJPVQ=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f3607 = StringFog.decrypt("G1gH2wVqdI0NUwb/\n", "aD1zmmE4Efs=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f3606 = StringFog.decrypt("tS1C7utvVCe3JkPK\n", "0kg2r489MVE=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3605 = StringFog.decrypt("3TdVWJrEGLzCIUJjjOcDkco=\n", "rlIhEemCbdA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f3604 = StringFog.decrypt("dB5mVLlr3Tt/CHFvr0jGFnc=\n", "E3sSHcotqFc=\n");

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3603 = StringFog.decrypt("H7/xE5GHNagBv+s3tII=\n", "bNqFQ/3mVs0=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3602 = StringFog.decrypt("LFqltfGcyzYmWr+R1Jk=\n", "Sz/R5Z39qFM=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3601 = StringFog.decrypt("YYBhxT9mf2Rming=\n", "EuUVjEwlChc=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3600 = StringFog.decrypt("35MkpMmLtaPMmT0=\n", "uPZQ7brIwNA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3599 = StringFog.decrypt("0xB3KL5gD7LNMWIfqg==\n", "oHUDa8sTe90=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3598 = StringFog.decrypt("IwDbe3lhr44pIc5MbQ==\n", "RGWvOAwS2+E=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3597 = StringFog.decrypt("Fl+pBTe/Ch0SW64zAKYOFwV0vCog\n", "cTrdR0XQa3k=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3596 = StringFog.decrypt("IuXrjHXF\n", "Voqh/xqrG3A=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public String f3618 = "";

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public double f3617 = -1.0d;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f3614 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONObject m2409() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(AbstractC0115.f630, this.f3619);
            double d = this.f3617;
            if (d > -1.0d) {
                jSONObject2.put(AbstractC0115.f580, d);
            }
            jSONObject2.put(AbstractC0115.f579, this.f3615);
            JSONObject jSONObject3 = this.f3613;
            if (jSONObject3 != null) {
                jSONObject2.put(AbstractC0115.f577, jSONObject3);
            }
        } catch (JSONException unused) {
        }
        try {
            if (jSONObject2.length() > 0) {
                if (this.f3614) {
                    jSONObject2.put(AbstractC0115.f578, true);
                }
                jSONObject.put(AbstractC0115.f581, jSONObject2);
            }
        } catch (JSONException unused2) {
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00b9  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            switch (str.hashCode()) {
                case -2010356102:
                    if (!str.equals(f3597)) {
                        b = -1;
                    } else {
                        b = Ascii.SO;
                    }
                    break;
                case -1879931215:
                    if (!str.equals(f3598)) {
                        b = -1;
                    } else {
                        b = Ascii.CR;
                    }
                    break;
                case -1679773410:
                    if (!str.equals(f3603)) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case -1457409854:
                    if (!str.equals(f3610)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case -1105800003:
                    if (!str.equals(f3599)) {
                        b = -1;
                    } else {
                        b = Ascii.FF;
                    }
                    break;
                case -1033133001:
                    if (!str.equals(f3607)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case -869156349:
                    if (!str.equals(f3596)) {
                        b = -1;
                    } else {
                        b = Ascii.SI;
                    }
                    break;
                case -303276684:
                    if (!str.equals(f3608)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 91962794:
                    if (!str.equals(f3602)) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case 701278346:
                    if (!str.equals(f3605)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 1006114614:
                    if (!str.equals(f3611)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1009851624:
                    if (!str.equals(f3609)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 1314266045:
                    if (!str.equals(f3601)) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case 1402845873:
                    if (!str.equals(f3600)) {
                        b = -1;
                    } else {
                        b = Ascii.VT;
                    }
                    break;
                case 1641431166:
                    if (!str.equals(f3604)) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 1712841667:
                    if (!str.equals(f3606)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    this.f3619 = (String) AbstractC0993.m2388(arrayList, 0, String.class);
                    return null;
                case 1:
                    return this.f3619;
                case 2:
                    this.f3618 = (String) AbstractC0993.m2388(arrayList, 0, String.class);
                    return null;
                case 3:
                    return this.f3618;
                case 4:
                    this.f3617 = ((Double) AbstractC0993.m2388(arrayList, 0, Double.class)).doubleValue();
                    return null;
                case 5:
                    return Double.valueOf(this.f3617);
                case 6:
                    this.f3616 = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    return null;
                case 7:
                    return Boolean.valueOf(this.f3616);
                case 8:
                    this.f3615 = (String) AbstractC0993.m2388(arrayList, 0, String.class);
                    return null;
                case 9:
                    return this.f3615;
                case 10:
                    this.f3614 = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    return null;
                case 11:
                    return Boolean.valueOf(this.f3614);
                case 12:
                    this.f3613 = (JSONObject) AbstractC0993.m2388(arrayList, 0, JSONObject.class);
                    return null;
                case 13:
                    return this.f3613;
                case 14:
                    return m2410();
                case 15:
                    return m2409();
                default:
                    new C3491q(c0116, c0983, f3612, str).m2264(c0116.m1903());
                    return null;
            }
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("hg==\n", "oag1lDKoKYU=\n", AbstractC0662.m2192("xjj1Mi8Cic7qJuJ9OFqbxfY+7jM6ArPD5yPmKTRNkOLiPuZ9M0OKz/UvpzA4VpbJ52qg\n", "g0qHXV0i/qY=\n", new StringBuilder(), str)), e, null);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2410() {
        return AbstractC0270.m2002("Kw==\n", "BT/O+I6woF4=\n", new StringBuilder().append(StringFog.decrypt("D0IU3SJjvN4MCQ==\n", "YidwtEMX1bE=\n")).append(this.f3618), this.f3616 ? StringFog.decrypt("yj6SYl24DiHJJQ==\n", "rEv+Di7bfEQ=\n") : StringFog.decrypt("KCdghhew\n", "SkYO6HLCo5I=\n"));
    }
}
