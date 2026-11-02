package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.AdError;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ApicFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.InternalFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MdtaMetadataEntry;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3664je;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ax, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2132ax {
    public static byte[] A00;
    public static String[] A01 = {"XE3w1pSjCQo3hLlIoA55xP49kJ3BkSnY", "baRB23iYXTg6uVneWVkjKaQ", "IXE4EH8VoW1ijaf8rBiMsozdK53249zi", "vIiZ", "cTc3vWE5yBIjdcJPEGdnbwU", "Q8OUIPFHckvWbgWURK16177sFLZY80jh", "77QJfVKomQ8gyNDsDPpoE27s59uX6Mz9", "1O7bpVORNKyiBM35cRci1yrFequ1m31t"};
    public static final String[] A02;

    static {
        A0B();
        A02 = new String[]{A0A(199, 5, 100), A0A(325, 12, 6), A0A(388, 7, 69), A0A(InterfaceC3669k1.a.b.h, 5, 127), A0A(442, 5, 49), A0A(887, 4, 117), A0A(963, 6, 48), A0A(997, 7, 24), A0A(1144, 4, 2), A0A(1240, 5, 25), A0A(1311, 7, 97), A0A(1352, 6, 12), A0A(1363, 5, 53), A0A(1390, 3, 39), A0A(1535, 3, 65), A0A(1538, 3, 105), A0A(1545, 6, 2), A0A(1576, 4, 85), A0A(1868, 6, 7), A0A(1068, 10, 124), A0A(67, 11, kotlin.fh.h1), A0A(1624, 3, 104), A0A(431, 11, 17), A0A(1450, 6, 48), A0A(1696, 10, 9), A0A(568, 11, 12), A0A(78, 7, 54), A0A(1934, 8, 94), A0A(1985, 5, 52), A0A(1148, 9, 100), A0A(891, 6, 37), A0A(1922, 6, 23), A0A(337, 9, 14), A0A(1091, 12, 32), A0A(18, 4, 96), A0A(1004, 5, 85), A0A(TypedValues.Custom.TYPE_STRING, 4, 73), A0A(1686, 10, 5), A0A(940, 6, 65), A0A(1338, 5, 21), A0A(57, 10, InterfaceC3669k1.d.b.k), A0A(143, 4, 16), A0A(1682, 4, 6), A0A(1522, 4, 98), A0A(1719, 5, 126), A0A(InterfaceC3664je.a.j, 10, 105), A0A(1103, 16, 83), A0A(1119, 17, kotlin.fh.h1), A0A(552, 6, 42), A0A(946, 6, 50), A0A(TypedValues.CycleType.TYPE_WAVE_PERIOD, 8, 55), A0A(1874, 17, 118), A0A(539, 10, 62), A0A(1393, 8, 7), A0A(579, 9, kotlin.fh.h1), A0A(456, 5, 38), A0A(1706, 13, 20), A0A(360, 6, 20), A0A(InterfaceC3669k1.a.b.d, 4, 46), A0A(907, 7, 2), A0A(1909, 6, 10), A0A(298, 13, 104), A0A(1401, 8, 23), A0A(1161, 6, 3), A0A(1265, 15, 6), A0A(230, 7, 124), A0A(1330, 8, 105), A0A(1486, 11, 30), A0A(1541, 4, 67), A0A(1615, 9, InterfaceC3669k1.d.b.j), A0A(1915, 7, 125), A0A(1190, 5, 7), A0A(1928, 6, 38), A0A(31, 9, 28), A0A(22, 9, 83), A0A(1375, 5, 19), A0A(1551, 5, 91), A0A(1245, 7, 55), A0A(1580, 11, 17), A0A(969, 9, 42), A0A(857, 4, 93), A0A(861, 9, 89), A0A(1252, 13, 104), A0A(1740, 5, 75), A0A(846, 11, 1), A0A(151, 5, 53), A0A(1176, 5, 69), A0A(1556, 7, 94), A0A(237, 6, 49), A0A(190, 9, 103), A0A(120, 10, 89), A0A(952, 11, 56), A0A(1462, 16, 39), A0A(1497, 16, 8), A0A(1745, 14, 57), A0A(1667, 9, 42), A0A(163, 8, 85), A0A(271, 6, 53), A0A(498, 14, 67), A0A(40, 8, 8), A0A(1009, 6, 6), A0A(1734, 6, 78), A0A(256, 7, InterfaceC3669k1.d.b.k), A0A(1358, 5, 123), A0A(243, 13, 27), A0A(1676, 6, 12), A0A(1759, 8, 24), A0A(204, 10, 55), A0A(1456, 6, 45), A0A(1409, 11, 96), A0A(1601, 6, 92), A0A(1659, 8, 81), A0A(346, 4, InterfaceC3669k1.d.b.j), A0A(1863, 5, 80), A0A(1596, 5, 23), A0A(870, 8, 30), A0A(130, 6, 0), A0A(1438, 12, 71), A0A(1563, 13, 75), A0A(878, 9, 3), A0A(491, 4, 95), A0A(1526, 9, 18), A0A(472, 9, 31), A0A(1, 9, 82), A0A(558, 10, 3), A0A(413, 10, 19), A0A(937, 3, kotlin.fh.h1), A0A(461, 11, 53), A0A(350, 10, 12), A0A(978, 8, 123), A0A(1891, 6, 67), A0A(1053, 5, 91), A0A(223, 7, 87), A0A(48, 9, 18), A0A(1380, 10, 95), A0A(147, 4, 16), A0A(277, 21, kotlin.fh.g1), A0A(986, 11, 91), A0A(179, 11, 43), A0A(395, 9, 14), A0A(366, 22, 116), A0A(311, 14, 117), A0A(1220, 8, 59), A0A(1591, 5, 110), A0A(1897, 12, 30), A0A(85, 5, 35), A0A(1157, 4, 7), A0A(1767, 8, 4), A0A(10, 8, 97), A0A(90, 8, 90), A0A(136, 7, 91), A0A(156, 7, 39), A0A(171, 8, 64), A0A(214, 9, 18), A0A(263, 8, 28), A0A(447, 9, 63), A0A(481, 3, 35), A0A(495, 3, 118), A0A(512, 8, 76), A0A(IronSourceError.ERROR_NO_INTERNET_CONNECTION, 7, 86), A0A(IronSourceError.ERROR_NON_EXISTENT_INSTANCE, 12, 67), A0A(549, 3, 56), A0A(588, 12, 16), A0A(914, 6, 50), A0A(931, 6, 77), A0A(1015, 3, 10), A0A(IronSourceError.ERROR_NT_LOAD_FAILED_NO_CANDIDATES, 8, 79), A0A(1078, 13, 109), A0A(1136, 8, 116), A0A(1167, 9, 114), A0A(1181, 9, 29), A0A(1195, 6, 119), A0A(InterfaceC3664je.a.b, 9, 2), A0A(1318, 12, 37), A0A(1343, 9, 12), A0A(1420, 9, 57), A0A(1429, 9, 102), A0A(1513, 9, 30), A0A(1607, 8, 45), A0A(IronSourceConstants.errorCode_TEST_SUITE_WEB_CONTROLLER_NOT_LOADED, 10, 91), A0A(1942, 9, 81), A0A(1990, 11, 29), A0A(1280, 12, 88), A0A(111, 9, 36), A0A(98, 13, 20), A0A(1292, 19, 71), A0A(1368, 7, 10), A0A(1058, 10, 3), A0A(897, 6, 92), A0A(484, 7, 79), A0A(920, 11, 14), A0A(1478, 8, 68)};
    }

    public static int A00(C1744Mk c1744Mk) {
        c1744Mk.A0g(4);
        if (c1744Mk.A0C() == 1684108385) {
            c1744Mk.A0g(8);
            return c1744Mk.A0I();
        }
        if (A01[3].length() != 4) {
            throw new RuntimeException();
        }
        A01[2] = "XaMzyHdgkqhaEyy2SVeTQIf9E8KoBNys";
        MV.A07(A0A(1228, 12, 94), A0A(776, 37, 71));
        return -1;
    }

    public static ApicFrame A01(C1744Mk c1744Mk) {
        String strA0A;
        int iA0C = c1744Mk.A0C();
        int iA0C2 = c1744Mk.A0C();
        String strA0A2 = A0A(1228, 12, 94);
        if (iA0C2 != 1684108385) {
            MV.A07(strA0A2, A0A(635, 35, InterfaceC3669k1.d.b.j));
            return null;
        }
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        if (iA02 == 13) {
            strA0A = A0A(2024, 10, 81);
        } else {
            strA0A = iA02 == 14 ? A0A(2034, 9, 101) : null;
        }
        if (strA0A == null) {
            MV.A07(strA0A2, A0A(1955, 30, 39) + iA02);
            return null;
        }
        c1744Mk.A0g(4);
        byte[] bArr = new byte[iA0C - 16];
        c1744Mk.A0k(bArr, 0, bArr.length);
        return new ApicFrame(strA0A, null, 3, bArr);
    }

    public static CommentFrame A02(int i, C1744Mk c1744Mk) {
        int iA0C = c1744Mk.A0C();
        if (c1744Mk.A0C() == 1684108385) {
            c1744Mk.A0g(8);
            String strA0V = c1744Mk.A0V(iA0C - 16);
            return new CommentFrame(A0A(2043, 3, 77), strA0V, strA0V);
        }
        MV.A07(A0A(1228, 12, 94), A0A(600, 35, 14) + AbstractC2115ag.A04(i));
        return null;
    }

    @MetaExoPlayerCustomization
    public static Id3Frame A03(int i, String str, C1744Mk c1744Mk, boolean z, boolean z2) {
        int iA00 = A00(c1744Mk);
        if (z2) {
            iA00 = Math.min(1, iA00);
        }
        if (iA00 >= 0) {
            return z ? new TextInformationFrame(str, null, XR.A03(Integer.toString(iA00))) : new CommentFrame(A0A(2043, 3, 77), str, Integer.toString(iA00));
        }
        MV.A07(A0A(1228, 12, 94), A0A(813, 33, 17) + AbstractC2115ag.A04(i));
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x021e, code lost:
    
        if (r3 == 1936682605) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x022d, code lost:
    
        if (r3 == 1936682605) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x022f, code lost:
    
        r0 = A07(r3, A0A(1839, 4, 74), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023c, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x023f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0243, code lost:
    
        if (r3 != 1936679276) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0245, code lost:
    
        r0 = A07(r3, A0A(1823, 4, 64), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0252, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0255, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0259, code lost:
    
        if (r3 != 1936679282) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x025b, code lost:
    
        r0 = A07(r3, A0A(1827, 4, 95), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0268, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x026b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x026f, code lost:
    
        if (r3 != 1936679265) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0271, code lost:
    
        r0 = A07(r3, A0A(1835, 4, 42), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x027e, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0281, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0285, code lost:
    
        if (r3 != 1936679791) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0287, code lost:
    
        r0 = A07(r3, A0A(1831, 4, 93), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0294, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0297, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x029b, code lost:
    
        if (r3 != 1920233063) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x029d, code lost:
    
        r0 = A03(r3, A0A(1018, 14, 79), r8, false, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02ab, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02ae, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02b2, code lost:
    
        if (r3 != 1885823344) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02b4, code lost:
    
        r0 = A03(r3, A0A(com.ironsource.mediationsdk.logger.IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT, 13, 55), r8, false, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02c2, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02c5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02c9, code lost:
    
        if (r3 != 1936683886) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02cb, code lost:
    
        r0 = A07(r3, A0A(1853, 10, 61), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02d9, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02dc, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02e0, code lost:
    
        if (r3 != 1953919848) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02e2, code lost:
    
        r0 = A07(r3, A0A(1847, 6, 78), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02ef, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02f2, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02f6, code lost:
    
        if (r3 != 757935405) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02f8, code lost:
    
        r0 = A05(r8, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02fc, code lost:
    
        r8.A0f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ff, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame A04(com.facebook.ads.redexgen.X.C1744Mk r8) {
        /*
            Method dump skipped, instruction units count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2132ax.A04(com.facebook.ads.redexgen.X.Mk):com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame");
    }

    public static InternalFrame A05(C1744Mk c1744Mk, int i) {
        String strA0V = null;
        String strA0V2 = null;
        int i2 = -1;
        int i3 = -1;
        while (c1744Mk.A09() < i) {
            int iA09 = c1744Mk.A09();
            int iA0C = c1744Mk.A0C();
            int iA0C2 = c1744Mk.A0C();
            c1744Mk.A0g(4);
            if (iA0C2 == 1835360622) {
                strA0V = c1744Mk.A0V(iA0C - 12);
            } else if (iA0C2 == 1851878757) {
                strA0V2 = c1744Mk.A0V(iA0C - 12);
            } else {
                if (iA0C2 == 1684108385) {
                    i2 = iA09;
                    i3 = iA0C;
                }
                c1744Mk.A0g(iA0C - 12);
            }
        }
        if (strA0V != null && strA0V2 != null && i2 != -1) {
            c1744Mk.A0f(i2);
            c1744Mk.A0g(16);
            return new InternalFrame(strA0V, strA0V2, c1744Mk.A0V(i3 - 16));
        }
        String[] strArr = A01;
        if (strArr[1].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "mPqBJr9ky0q8BpyItX9uPH6";
        strArr2[4] = "acubDfMUUA1dwZa6H5BNJTH";
        return null;
    }

    @MetaExoPlayerCustomization
    public static TextInformationFrame A06(int i, String str, C1744Mk c1744Mk) {
        int iA0C = c1744Mk.A0C();
        if (c1744Mk.A0C() == 1684108385 && iA0C >= 22) {
            c1744Mk.A0g(10);
            int iA0M = c1744Mk.A0M();
            if (iA0M > 0) {
                String str2 = A0A(0, 0, 94) + iA0M;
                int iA0M2 = c1744Mk.A0M();
                if (iA0M2 > 0) {
                    str2 = str2 + A0A(0, 1, 20) + iA0M2;
                }
                return new TextInformationFrame(str, null, XR.A03(str2));
            }
        }
        MV.A07(A0A(1228, 12, 94), A0A(670, 39, 31) + AbstractC2115ag.A04(i));
        return null;
    }

    @MetaExoPlayerCustomization
    public static TextInformationFrame A07(int i, String str, C1744Mk c1744Mk) {
        int iA0C = c1744Mk.A0C();
        if (c1744Mk.A0C() == 1684108385) {
            c1744Mk.A0g(8);
            return new TextInformationFrame(str, null, XR.A03(c1744Mk.A0V(iA0C - 16)));
        }
        MV.A07(A0A(1228, 12, 94), A0A(744, 32, 73) + AbstractC2115ag.A04(i));
        return null;
    }

    @MetaExoPlayerCustomization
    public static TextInformationFrame A08(C1744Mk c1744Mk) {
        String str;
        int iA00 = A00(c1744Mk);
        if (iA00 <= 0 || iA00 > A02.length) {
            str = null;
        } else {
            String[] strArr = A02;
            int i = iA00 - 1;
            String[] strArr2 = A01;
            if (strArr2[6].charAt(20) == strArr2[5].charAt(20)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A01;
            strArr3[6] = "5CZbBKurLkHWFO6LQvyJOnScleb8radY";
            strArr3[5] = "tdp6LdBimujhPWvaq0xQXTEnHoyrm2LN";
            str = strArr[i];
        }
        if (str != null) {
            return new TextInformationFrame(A0A(1791, 4, 60), null, XR.A03(str));
        }
        MV.A07(A0A(1228, 12, 94), A0A(709, 35, 45));
        return null;
    }

    public static MdtaMetadataEntry A09(C1744Mk c1744Mk, int i, String str) {
        while (true) {
            int iA09 = c1744Mk.A09();
            if (iA09 >= i) {
                return null;
            }
            int iA0C = c1744Mk.A0C();
            int iA0C2 = c1744Mk.A0C();
            String[] strArr = A01;
            if (strArr[7].charAt(13) == strArr[0].charAt(13)) {
                throw new RuntimeException();
            }
            A01[3] = "TINK";
            if (iA0C2 == 1684108385) {
                int iA0C3 = c1744Mk.A0C();
                int iA0C4 = c1744Mk.A0C();
                int i2 = iA0C - 16;
                byte[] bArr = new byte[i2];
                c1744Mk.A0k(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, iA0C4, iA0C3);
            }
            c1744Mk.A0f(iA09 + iA0C);
        }
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{-96, -16, -49, Ascii.DC2, Ascii.DLE, Ascii.US, Ascii.DC4, Ascii.ESC, Ascii.ESC, Ascii.DLE, -1, 32, 49, 50, 48, Ascii.US, 33, 50, -2, 32, 38, 33, -15, 19, Ascii.EM, Ascii.DC4, -48, -6, 17, 42, 42, -70, -36, -30, -35, -103, -55, -18, -25, -28, -90, -56, -44, -38, -40, -39, -50, -56, -80, -43, -31, -34, -100, -65, -28, -35, -38, Ascii.SI, 58, 66, 51, SignedBytes.MAX_POWER_OF_TWO, 60, 32, Base64.padSymbol, 49, 57, 9, 52, 60, 45, 58, 54, 41, 60, 49, 62, 45, -44, 0, -11, -4, -8, 1, 7, -63, -18, -23, -19, -27, -8, 41, 43, -41, 9, 38, Ascii.SUB, 34, -78, -26, -43, -38, -32, -111, -27, -39, -42, -46, -27, -29, -42, -62, -10, -27, -22, -16, -29, -16, -16, -20, -9, 44, Ascii.ETB, 36, 42, Ascii.GS, Ascii.ETB, 40, Ascii.SUB, Ascii.ESC, -97, -66, -55, -55, -66, -63, -6, Ascii.EM, 42, 39, 41, 45, Ascii.GS, -81, -50, -32, -32, -81, -46, -50, -31, -44, -9, -12, 1, -12, -58, -20, -27, -14, -21, -10, -27, -12, Ascii.ESC, Ascii.EM, -46, -12, 19, 32, Ascii.SYN, -33, 6, 4, -67, -1, 2, -2, 17, -54, -12, -23, -21, -13, -88, -43, -19, -4, -23, -12, 6, 48, 57, 41, 43, 54, 37, 55, 55, 3, 45, 54, 38, 52, -42, 3, 3, 8, Ascii.CR, -76, -42, -11, 7, 7, -79, -31, -44, -48, -38, -47, -44, -48, -29, -10, 38, Ascii.GS, 40, 4, 35, 36, Ascii.FS, 58, 59, 58, 75, 62, 77, -47, -13, -6, 2, -9, -15, -69, -32, -39, -27, -38, -35, -22, -104, -59, -19, -21, -31, -37, 17, 54, 47, 60, 65, Base64.padSymbol, 60, -68, -31, -30, -27, -27, -24, -18, -19, -43, -6, 1, 4, 7, 5, 10, 47, 57, 48, 58, 59, 48, 40, 53, -25, Ascii.SO, 40, 53, 46, 58, 59, 40, -25, Ascii.EM, 40, 55, 8, 45, 55, 46, 56, 57, 46, 38, 51, -27, Ascii.ETB, 38, 53, Ascii.NAK, 58, 68, 59, 69, 70, 59, 51, SignedBytes.MAX_POWER_OF_TWO, -14, 36, 65, 53, Base64.padSymbol, -90, -49, -60, -42, -42, -52, -58, -125, -75, -46, -58, -50, -82, -41, -52, -34, -34, -44, -50, -52, -41, Ascii.DLE, 57, 66, 47, -84, -43, -34, -53, -106, -79, -40, -34, -36, -50, -76, -32, -34, -42, -43, -22, Ascii.DC4, SignedBytes.MAX_POWER_OF_TWO, 63, 69, 54, 62, 65, SignedBytes.MAX_POWER_OF_TWO, 67, 50, 67, 74, -15, Ascii.DC4, 57, 67, 58, 68, 69, 58, 50, 63, -27, 17, Ascii.ETB, Ascii.DLE, Ascii.SYN, Ascii.DC4, Ascii.ESC, -82, -35, -38, -34, -34, -38, -31, -48, -35, -50, 0, -9, -1, 32, Base64.padSymbol, 74, 63, 65, -76, -47, -34, -45, -43, -112, -72, -47, -36, -36, -40, -11, 6, -1, Ascii.VT, -11, 10, -7, -78, -45, -49, -30, -42, -114, -69, -45, -30, -49, -38, -46, -9, 1, -15, -3, -32, Ascii.VT, 19, 10, Ascii.DLE, 1, 9, Ascii.FF, Ascii.VT, -57, -11, -24, -28, -16, -42, 4, 7, -1, -78, -72, -78, -44, -13, 5, 5, -64, -18, -15, -23, -100, -49, -21, -24, -21, -60, -11, -30, -16, 33, Ascii.SO, Ascii.US, 32, 17, Ascii.FS, 0, 49, 33, 48, Ascii.CAN, Ascii.NAK, 32, -27, 1, 19, Ascii.EM, -64, -20, 9, 19, Ascii.DC4, 5, Ascii.SO, 9, Ascii.SO, 7, -18, Ascii.FF, Ascii.NAK, Ascii.SO, Ascii.FF, Ascii.GS, Ascii.DC2, Ascii.FF, -8, Ascii.US, Ascii.CAN, Ascii.SYN, 39, 37, 34, -27, Ascii.FF, 5, 3, Ascii.DC4, Ascii.DC2, Ascii.SI, 3, Ascii.FF, 1, 19, 8, -32, 7, 0, -2, Ascii.SI, Ascii.CR, 10, 9, 4, -2, -38, 2, 4, -52, -5, -17, -11, -16, -22, -91, -43, -46, -49, -115, -88, -49, -43, -45, -59, -82, -34, -37, -40, -106, -67, -50, -52, -47, -41, -40, Ascii.CR, Base64.padSymbol, 58, 55, 44, 41, 54, 43, 45, -78, -27, -35, -46, -33, -42, -38, -46, -37, -31, -50, -39, -79, -52, -44, -41, -48, -49, -117, -33, -38, -117, -37, -52, -35, -34, -48, -117, -50, -38, -40, -40, -48, -39, -33, -117, -52, -33, -33, -35, -44, -51, -32, -33, -48, -91, -117, 19, 46, 54, 57, 50, 49, -19, 65, 60, -19, Base64.padSymbol, 46, 63, SignedBytes.MAX_POWER_OF_TWO, 50, -19, 48, 60, 67, 50, 63, -19, 46, 63, 65, -19, 46, 65, 65, 63, 54, 47, 66, 65, 50, -62, -35, -27, -24, -31, -32, -100, -16, -21, -100, -20, -35, -18, -17, -31, -100, -27, -22, -32, -31, -12, -85, -33, -21, -15, -22, -16, -100, -35, -16, -16, -18, -27, -34, -15, -16, -31, -74, -100, -48, -21, -13, -10, -17, -18, -86, -2, -7, -86, -6, -21, -4, -3, -17, -86, -3, -2, -21, -8, -18, -21, -4, -18, -86, -15, -17, -8, -4, -17, -86, -19, -7, -18, -17, -20, 7, Ascii.SI, Ascii.DC2, Ascii.VT, 10, -58, Ascii.SUB, Ascii.NAK, -58, Ascii.SYN, 7, Ascii.CAN, Ascii.EM, Ascii.VT, -58, Ascii.SUB, Ascii.VT, Ascii.RS, Ascii.SUB, -58, 7, Ascii.SUB, Ascii.SUB, Ascii.CAN, Ascii.SI, 8, Ascii.ESC, Ascii.SUB, Ascii.VT, -32, -58, -22, 5, Ascii.CR, Ascii.DLE, 9, 8, -60, Ascii.CAN, 19, -60, Ascii.DC4, 5, Ascii.SYN, Ascii.ETB, 9, -60, Ascii.EM, Ascii.CR, Ascii.DC2, Ascii.CAN, -36, -60, 5, Ascii.CAN, Ascii.CAN, Ascii.SYN, Ascii.CR, 6, Ascii.EM, Ascii.CAN, 9, -60, Ascii.SUB, 5, Ascii.DLE, Ascii.EM, 9, -76, -49, -41, -38, -45, -46, -114, -30, -35, -114, -34, -49, -32, -31, -45, -114, -29, -41, -36, -30, -90, -114, -49, -30, -30, -32, -41, -48, -29, -30, -45, -88, -114, -92, -65, -47, -46, 126, -92, -45, -47, -57, -51, -52, 0, 41, 38, 37, -4, 37, 34, 33, -29, 8, 37, Ascii.EM, 33, -63, -22, -25, -26, -25, -22, -19, -32, -90, -46, -59, -59, -45, -44, -39, -52, -59, Ascii.CAN, 71, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, -56, -9, -11, -21, -15, -16, 0, -26, -1, 46, 39, 36, -19, 7, 19, Ascii.VT, -90, -64, -51, -58, -46, -45, -64, -42, -16, 1, -16, -10, -12, -78, -52, -35, -52, -46, -48, -117, -67, -38, -50, -42, -15, Ascii.SYN, Ascii.EM, Ascii.FF, Ascii.VT, Ascii.SYN, Ascii.SI, 55, 41, -27, Ascii.CR, 17, Ascii.SO, 3, 10, -42, -2, 3, -9, -8, -14, -36, 4, 9, -3, -2, -8, -75, -25, 4, -8, 0, -44, -1, 2, -5, -12, -14, -49, -24, -7, -21, -89, -39, -10, -22, -14, 32, 57, 74, 60, 59, 71, 74, Base64.padSymbol, 0, Ascii.GS, Ascii.EM, 46, 49, -40, 5, Ascii.GS, 44, Ascii.EM, 36, -67, -34, -27, 
        -94, -67, -28, -27, -6, 33, 39, 37, Ascii.ETB, -85, -40, -48, -46, -40, -43, -80, -85, -76, -11, 0, 1, -6, -15, -1, -19, -16, 2, -11, -1, -5, -2, 5, -35, -24, -23, -30, -39, -25, -37, -43, -28, -32, -39, -25, -25, -11, Ascii.CAN, Ascii.CAN, Ascii.SO, Ascii.NAK, 17, Ascii.SUB, 32, 1, 38, Ascii.FS, 33, Ascii.GS, -87, -50, -60, -55, -59, -115, -78, -49, -61, -53, 34, 71, Base64.padSymbol, 78, 76, 77, 75, 66, 58, 69, 19, 56, 46, 63, Base64.padSymbol, 62, 60, 57, -9, 17, 57, 62, 50, -58, -21, -16, -15, -17, -14, -22, -30, -21, -15, -34, -23, -7, Ascii.RS, 35, 36, 34, 37, Ascii.GS, Ascii.NAK, Ascii.RS, 36, 17, Ascii.FS, -48, 0, Ascii.US, 32, 17, 54, 59, 60, 58, Base64.padSymbol, 53, 45, 54, 60, 41, 52, -24, Ascii.SUB, 55, 43, 51, Ascii.ESC, 50, 62, -15, 19, 50, 63, 53, -87, -64, -39, -39, Ascii.VT, 34, 59, 59, -20, 7, 54, 47, 44, -82, -44, -45, -44, -86, -43, -50, -57, -52, -59, Ascii.SUB, 65, 48, 68, 67, 65, 62, 50, 58, -18, 3, Ascii.SYN, Ascii.VT, Ascii.DLE, -58, -33, -32, -18, -32, -29, -33, -26, -34, -80, -45, -111, -86, -51, 32, 67, 73, 66, 59, 57, -84, -64, -45, -57, 127, -79, -50, -62, -54, 19, 43, 42, 47, 58, 39, 58, 47, 60, 43, -27, -3, 10, -3, 6, -1, Ascii.CR, -3, 8, 32, 47, Ascii.FS, Ascii.US, Ascii.FS, 47, Ascii.FS, Ascii.DLE, 47, 36, 39, -61, -37, -22, -41, -30, -31, 9, 7, -3, -9, -11, 0, 19, 38, 57, 46, 52, 51, 38, 49, -27, Ascii.VT, 52, 49, 48, -79, -60, -41, -52, -39, -56, -125, -92, -48, -56, -43, -52, -58, -60, -47, 3, Ascii.SUB, 36, Ascii.CAN, 33, Ascii.SYN, 40, 40, Ascii.RS, Ascii.CAN, Ascii.SYN, 33, -14, 9, Ascii.EM, 9, -60, -24, 9, Ascii.EM, Ascii.CAN, Ascii.ETB, 7, Ascii.FF, 9, -60, -5, 9, Ascii.DLE, Ascii.DLE, 9, Ascii.FF, 35, 53, -34, -1, 37, 35, -48, -25, -7, -94, -44, -15, -17, -29, -16, -10, -21, -27, Ascii.DC4, 43, Base64.padSymbol, -26, Ascii.GS, 39, 60, 43, -64, -31, -37, -27, -41, -73, -34, -106, -85, -37, -50, -54, -44, -29, -72, -43, -51, -46, -50, -36, 39, 72, Base64.padSymbol, 74, 57, -31, 6, -6, -9, 4, -73, -42, -53, -54, -56, -38, -37, -64, -33, -36, -37, -47, Ascii.FF, 43, 40, 47, 39, -36, Ascii.FF, 49, 42, 39, -44, -13, -12, -76, -45, -44, -111, -86, -45, -48, -49, -60, -29, -28, -93, -70, -23, -30, -33, Ascii.CR, 44, 47, 43, -35, 4, 47, 44, 44, 51, 34, -26, 5, 9, 10, -61, -26, Ascii.VT, 4, 1, 19, 50, 54, 55, -16, Ascii.NAK, 50, 38, 46, -12, 19, Ascii.ESC, 9, Ascii.SYN, -60, -26, 5, Ascii.DLE, Ascii.DLE, 5, 8, -35, -1, -18, -5, -8, 0, -38, -4, -13, -9, -1, -3, -44, -10, -13, -21, -10, -23, -9, -9, -19, -6, -23, -92, -42, -13, -25, -17, -15, Ascii.DC4, Ascii.SUB, 3, 10, 6, Ascii.SI, Ascii.NAK, -53, -18, -12, -34, -29, -36, -33, -32, -25, -28, -34, -75, -40, -34, -56, -51, -54, -55, -54, -47, -50, -56, -123, -73, -44, -56, -48, -53, -18, -12, -17, -19, -36, -23, -34, -32, Ascii.SI, 52, 45, 42, -65, -28, -35, -38, -113, -63, -34, -46, -38, -16, -60, -32, Ascii.CAN, 39, 54, -14, 1, Ascii.SYN, 5, -79, -60, -58, -58, -64, -60, 10, Ascii.GS, 44, 42, 39, Ascii.CR, 32, 49, 36, 49, Ascii.FS, 39, -6, Ascii.DLE, 33, Ascii.FS, Ascii.DLE, Ascii.NAK, 17, Ascii.VT, -56, -5, Ascii.ETB, Ascii.GS, Ascii.DC4, 4, 33, Ascii.NAK, Ascii.GS, -64, -35, -47, -39, -114, -108, -114, -64, -35, -38, -38, Ascii.RS, 44, 55, 62, 44, -57, -43, -31, -42, -43, Ascii.FF, Ascii.SUB, 45, 34, 43, Ascii.RS, -35, -14, -7, -17, -15, -21, 4, -17, 32, 53, 60, 68, 65, 66, 59, 50, SignedBytes.MAX_POWER_OF_TWO, Ascii.CAN, 48, 38, 47, 71, 69, 76, 76, 65, SignedBytes.MAX_POWER_OF_TWO, -4, 81, 74, 71, 74, 75, 83, 74, -4, 73, 65, 80, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 80, Base64.padSymbol, -4, 65, 74, 80, 78, 85, Ascii.SYN, -4, 1, Ascii.SUB, Ascii.GS, 37, -50, -8, Ascii.SI, Ascii.ESC, -38, -13, -10, -2, -89, -39, -10, -22, -14, -68, -40, -41, -54, -35, -54, -74, -46, -40, -49, -75, -47, -41, -48, -58, -126, -91, -50, -53, -46, -71, -43, -37, -44, -54, -38, -40, -57, -55, -47, -60, -32, -26, -27, -39, -42, -29, -33, -111, -61, -32, -44, -36, 46, 75, 60, 62, SignedBytes.MAX_POWER_OF_TWO, Ascii.VT, 40, Ascii.EM, Ascii.ESC, Ascii.GS, -40, 10, 39, Ascii.ESC, 35, -2, Ascii.ESC, Ascii.DLE, Ascii.DLE, Ascii.SO, 19, -5, Ascii.US, 17, Ascii.SYN, Ascii.SI, -23, Ascii.SI, 3, 6, -2, 5, 4, -1, -7, -74, -24, 5, -7, 1, -56, -18, -30, -27, -35, -28, -29, -18, -76, -38, -49, -43, -55, -47, -48, -47, -72, -91, -80, -90, Ascii.CR, -5, 9, 6, -9, -26, -16, -13, -11, -28, -16, -18, -19, -36, -24, -25, 9, -7, 7, -8, -66, -77, -66, -101, 37, Ascii.SUB, 37, 3, -15, -19, -30, -50, Ascii.CAN, Ascii.DC4, 9, -10, 5, 1, 0, 4, -13, -15, -30, -22, -15, -16, -20, -49, Ascii.DLE, Ascii.SI, Ascii.VT, -3, Ascii.SO, Ascii.CR, 9, -3, -37, -38, -42, -41, -5, -6, -10, -5, -25, -26, -26, -40, -1, 1, -2, -13, -6, 2, -18, -16, -19, -30, -23, -15, -19, -23, -20, -18, 1, Ascii.SO, Ascii.ESC, Ascii.DC4, Ascii.FS, -72, -55, -57, -52, -46, -45, 39, 56, 54, 59, 65, 66, 0, Ascii.FS, 65, 55, 72, 70, 71, 69, 60, 52, 63, -12, 5, Ascii.DC2, Ascii.DC2, Ascii.SI, Ascii.DC2, -49, -29, -19, -36, -18, -29, -101, -56, -32, -17, -36, -25, -69, -42, -41, -121, -101, -105, 46, 76, 59, 67, 70, 63, 76, -56, -26, -43, -30, -41, -39, -41, -11, -20, -27, -28, -17, Ascii.SI, 45, 36, 43, -24, 3, 42, 43, 2, 32, Ascii.GS, Ascii.RS, -50, 0, Ascii.GS, 17, Ascii.EM, 2, 0, -7, 1, -39, -14, -10, -23, -25, -13, -21, -14, -19, -2, -23, -24, -92, -25, -13, -6, -23, -10, -92, -27, -10, -8, -92, -22, -16, -27, -21, -9, -66, -92, -25, 0, -12, -14, -3, -47, -23, -20, -26, -34, -102, -57, -17, -19, -29, 
        -35, -30, -18, -20, -83, -32, -19, -29, -15, -18, -24, -29, -83, -30, -32, -17, -13, -12, -15, -28, -83, -27, -17, -14, Ascii.ETB, Ascii.ESC, Ascii.SI, Ascii.NAK, 19, -35, Ascii.CAN, Ascii.RS, 19, Ascii.NAK, 43, 47, 35, 41, 39, -15, 50, 48, 41, Ascii.US, Ascii.CAN, Ascii.SO};
    }

    public static void A0C(int i, Metadata metadata, Metadata metadata2, C1689Ke c1689Ke, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i != 1) {
            String[] strArr = A01;
            if (strArr[7].charAt(13) == strArr[0].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "tZyca6HBQMfjFlhXTHgahKg";
            strArr2[4] = "TqpFbMFug4VNwN3AQnb9XI5";
            if (i == 2 && metadata2 != null) {
                for (int i2 = 0; i2 < metadata2.A02(); i2++) {
                    Metadata.Entry entryA03 = metadata2.A03(i2);
                    if (entryA03 instanceof MdtaMetadataEntry) {
                        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entryA03;
                        boolean zEquals = A0A(AdError.INTERNAL_ERROR_CODE, 23, 34).equals(mdtaMetadataEntry.A02);
                        String[] strArr3 = A01;
                        if (strArr3[7].charAt(13) == strArr3[0].charAt(13)) {
                            throw new RuntimeException();
                        }
                        A01[2] = "qkyBvHSjW4bCKQXzhljpHv5gYtvxoO51";
                        if (zEquals) {
                            metadata3 = new Metadata(mdtaMetadataEntry);
                            break;
                        }
                    }
                }
            }
        } else if (metadata != null) {
            metadata3 = metadata;
        }
        for (Metadata metadata4 : metadataArr) {
            if (A01[2].charAt(5) != 'H') {
                throw new RuntimeException();
            }
            A01[3] = "3cCP";
            metadata3 = metadata3.A04(metadata4);
        }
        if (metadata3.A02() > 0) {
            c1689Ke.A0v(metadata3);
        }
    }

    public static void A0D(int i, Z6 z6, C1689Ke c1689Ke) {
        if (i == 1 && z6.A03()) {
            c1689Ke.A0d(z6.A00).A0e(z6.A01);
        }
    }
}
