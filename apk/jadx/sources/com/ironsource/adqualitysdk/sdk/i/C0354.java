package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ח, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0354 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f1633 = StringFog.decrypt("VzdH\n", "GRgGCmBVN4Q=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public boolean f1637;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public String f1640;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public String f1641;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f1642;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f1643;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f1644;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public String f1645;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String f1646;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public EnumC0367 f1639 = EnumC0367.f1681;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public EnumC0375 f1638 = EnumC0375.f1833;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public long f1636 = 0;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public long f1635 = 0;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public long f1634 = 0;

    public C0354(String str) {
        this.f1646 = str;
        this.f1645 = str;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2060(EnumC0375 enumC0375) {
        if (enumC0375 == null) {
            return null;
        }
        switch (enumC0375.ordinal()) {
            case 1:
                return String.format(StringFog.decrypt("+8EbvFZ0/YG7wEimXXH90q2SSapDarSFu8EbhmFeuaar01emRmb9pJr5G7lXba6esdwb6kE/soX+\n3F64V20=\n", "3rI7zzIf3fc=\n"), this.f1645, this.f1643, this.f1640);
            case 2:
                return String.format(StringFog.decrypt("43yK65IXxqijfdnRuTLG+7Uvw8v2Momq5nbPzPYvk662YNjMszjGvL8v3tCzfIWxqGHP26IzlA==\n", "xg+quNZc5t4=\n"), this.f1645, this.f1643);
            case 3:
                return StringFog.decrypt("xOi1CfpD2QbtqbUL9lOQE+7gpgC/RJYc7Oy/EfBV\n", "goncZZ8n+XI=\n");
            case 4:
                return StringFog.decrypt("1g7lcHDtDA3/T+9ucOhYHLAM43J77E8N/x0=\n", "kG+MHBWJLHk=\n");
            case 5:
                return StringFog.decrypt("bd+2BHvWcqpEnrkNatE6/kjRsQZ70SaxWQ==\n", "K77faB6yUt4=\n");
            case 6:
                return StringFog.decrypt("rNAiGkUx1GCczDsbWGbVI5rLOwZPIg==\n", "+b5JdCpGukA=\n");
            default:
                return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2061(EnumC0367 enumC0367) {
        String strM2002;
        String strDecrypt;
        this.f1639 = enumC0367;
        EnumC0367 enumC0368 = EnumC0367.f1676;
        if (enumC0367 != enumC0368) {
            this.f1638 = EnumC0375.f1833;
        }
        int iOrdinal = enumC0367.ordinal();
        if (iOrdinal == 1) {
            this.f1636 = System.currentTimeMillis();
            return;
        }
        if (iOrdinal == 2) {
            this.f1635 = System.currentTimeMillis();
            return;
        }
        if (iOrdinal == 3) {
            this.f1634 = System.currentTimeMillis();
        } else if (iOrdinal != 4 && iOrdinal != 5) {
            return;
        }
        if (this.f1645.equals(StringFog.decrypt("E7KFD5Imtw==\n", "RNfnWftDwEs=\n"))) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        String strM2299 = AbstractC0897.m2299("KU10Uf9Gp8NmXDs=\n", "CS4bP5EjxLc=\n", new StringBuilder().append(StringFog.decrypt("vODqdBT+8P684Op0FP79\n", "kc3HWTnT3dM=\n")).append(this.f1645));
        if (this.f1644 != null) {
            strM2299 = strM2299 + this.f1644 + " ";
        }
        sb.append(sb2.append(strM2299 + StringFog.decrypt("+HkR+flAXX/4eRH5+UA=\n", "1VQ81NRtcFI=\n")).append("\n").toString());
        String str = null;
        if (this.f1645 == null || (strDecrypt = this.f1643) == null) {
            strM2002 = null;
        } else {
            if (strDecrypt.equals(f1633) && this.f1639 != EnumC0367.f1677) {
                strDecrypt = StringFog.decrypt("4VFFHsXUNNnHW1U=\n", "rz4xPqOxQLo=\n");
            }
            strM2002 = AbstractC0270.m2002("f8OeljX8mpks+bWzL6o=\n", "X5Da3RWK/+s=\n", new StringBuilder().append(this.f1645), strDecrypt);
        }
        if (strM2002 != null) {
            sb.append(strM2002.concat("\n"));
        }
        if (this.f1642 != null && this.f1641 != null) {
            str = StringFog.decrypt("74wp8Dc1/g/VpwyjQSP5DMynEKQENLZc\n", "vMhi0GFQjHw=\n") + this.f1642 + StringFog.decrypt("dOCm\n", "VM2GijOY3lc=\n") + this.f1641;
        }
        if (str != null) {
            sb.append(str.concat("\n"));
        }
        StringBuilder sbAppend = new StringBuilder().append(StringFog.decrypt("bNZte+vVnFM=\n", "P6IMD56mpnM=\n"));
        EnumC0367 enumC0369 = this.f1639;
        sb.append(sbAppend.append(enumC0369 == enumC0368 ? StringFog.decrypt("GRejz5hXFQ==\n", "TlbxgdEZUpY=\n") : enumC0369.name()).append("\n").toString());
        EnumC0367 enumC03610 = this.f1639;
        if (enumC03610 == EnumC0367.f1678 || enumC03610 == EnumC0367.f1677) {
            String strDecrypt2 = StringFog.decrypt("SGG+5DJG5ytwVqva\n", "CQXvkVMqjl8=\n");
            AbstractC0250.m2000(strDecrypt2, strDecrypt2, sb.toString(), true);
            return;
        }
        String strM2060 = m2060(this.f1638);
        if (strM2060 != null) {
            sb.append(StringFog.decrypt("Lvie72mCInhD\n", "Y53tnAjlR0I=\n") + strM2060);
        }
        String string = sb.toString();
        String strDecrypt3 = StringFog.decrypt("4e//vnKVGmPZ2OqA\n", "oIuuyxP5cxc=\n");
        if (AbstractC0250.m1994()) {
            Log.w(AbstractC0250.m1996(strDecrypt3), string);
        } else if (AbstractC0250.m1995().shouldPrintLog(ISAdQualityLogLevel.WARNING)) {
            Log.w(AbstractC0250.m1996(strDecrypt3), string);
        }
    }
}
