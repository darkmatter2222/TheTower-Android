package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3664je;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1730Lw {
    public static byte[] A00;
    public static String[] A01 = {"53iXzVgGubFFZBbaImF5fibXgQcIVNWw", "S8ea1AJWKL9lwxzLDCbB48PRy1qxxr9L", "O88LpxjQYqI0Fxfsv5BpqqKhQhzBNWrh", "2dPW1e3mlmmoaLwRp3ZjRB7Sy31DF4o1", "HVzTMKSnsF8fWAT2hCvGFLuRdY7iPgt9", "M2DtEHhPS", "6F9VA7lLryKUgYiBe38UQA9UtsueyulY", "QstXcrgLP2sG6n9GXoABm7pL"};
    public static final Map<String, Integer> A02;
    public static final Pattern A03;
    public static final Pattern A04;
    public static final Pattern A05;

    static {
        A04();
        A05 = Pattern.compile(A03(1, 38, 103));
        A04 = Pattern.compile(A03(91, 49, 116));
        A03 = Pattern.compile(A03(39, 52, InterfaceC3669k1.d.b.k));
        A02 = new HashMap();
        A02.put(A03(140, 9, InterfaceC3669k1.d.b.k), -984833);
        A02.put(A03(149, 12, 13), -332841);
        A02.put(A03(161, 4, 47), -16711681);
        A02.put(A03(165, 10, 50), -8388652);
        A02.put(A03(175, 5, 56), -983041);
        A02.put(A03(180, 5, 34), -657956);
        A02.put(A03(ModuleDescriptor.MODULE_VERSION, 6, 68), -6972);
        A02.put(A03(191, 5, 87), Integer.valueOf(ViewCompat.MEASURED_STATE_MASK));
        A02.put(A03(196, 14, 96), -5171);
        A02.put(A03(210, 4, 110), -16776961);
        A02.put(A03(214, 10, 79), -7722014);
        A02.put(A03(224, 5, 67), -5952982);
        A02.put(A03(229, 9, 18), -2180985);
        A02.put(A03(238, 9, 3), -10510688);
        A02.put(A03(247, 10, 14), -8388864);
        A02.put(A03(257, 9, 31), -2987746);
        A02.put(A03(266, 5, 19), -32944);
        A02.put(A03(271, 14, 65), -10185235);
        A02.put(A03(285, 8, 22), -1828);
        A02.put(A03(293, 7, 15), -2354116);
        A02.put(A03(300, 4, 97), -16711681);
        A02.put(A03(304, 8, 44), -16777077);
        A02.put(A03(312, 8, 110), -16741493);
        A02.put(A03(320, 13, 125), -4684277);
        A02.put(A03(333, 8, 41), -5658199);
        A02.put(A03(341, 9, 63), -16751616);
        A02.put(A03(350, 8, 87), -5658199);
        A02.put(A03(358, 9, 70), -4343957);
        A02.put(A03(367, 11, 92), -7667573);
        A02.put(A03(378, 14, 23), -11179217);
        A02.put(A03(392, 10, 84), -29696);
        A02.put(A03(TypedValues.CycleType.TYPE_VISIBILITY, 10, 8), -6737204);
        A02.put(A03(412, 7, 16), -7667712);
        A02.put(A03(419, 10, 62), -1468806);
        A02.put(A03(CommonGatewayClient.CODE_TOO_MANY_REQUESTS, 12, 53), -7357297);
        A02.put(A03(441, 13, 22), -12042869);
        A02.put(A03(454, 13, 19), -13676721);
        A02.put(A03(467, 13, 63), -13676721);
        A02.put(A03(480, 13, InterfaceC3669k1.d.b.k), -16724271);
        A02.put(A03(493, 10, InterfaceC3669k1.d.b.k), -7077677);
        A02.put(A03(TypedValues.PositionType.TYPE_PERCENT_WIDTH, 8, 117), -60269);
        A02.put(A03(FrameMetricsAggregator.EVERY_DURATION, 11, 83), -16728065);
        A02.put(A03(522, 7, 56), -9868951);
        A02.put(A03(529, 7, 116), -9868951);
        A02.put(A03(536, 10, 97), -14774017);
        A02.put(A03(546, 9, 71), -5103070);
        A02.put(A03(555, 11, 35), -1296);
        A02.put(A03(566, 11, 65), -14513374);
        A02.put(A03(577, 7, 127), -65281);
        A02.put(A03(584, 9, 60), -2302756);
        A02.put(A03(593, 10, 47), -460545);
        A02.put(A03(603, 4, 42), -10496);
        A02.put(A03(607, 9, 57), -2448096);
        A02.put(A03(IronSourceError.ERROR_BN_UNSUPPORTED_SIZE, 4, 101), -8355712);
        A02.put(A03(IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW, 5, InterfaceC3669k1.d.b.k), -16744448);
        A02.put(A03(LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, 11, 32), -5374161);
        A02.put(A03(636, 4, 17), -8355712);
        A02.put(A03(640, 8, 84), -983056);
        A02.put(A03(648, 7, 66), -38476);
        A02.put(A03(655, 9, 20), -3318692);
        A02.put(A03(664, 6, 61), -11861886);
        A02.put(A03(670, 5, 5), -16);
        A02.put(A03(675, 5, 89), -989556);
        A02.put(A03(680, 8, 25), -1644806);
        A02.put(A03(688, 13, 118), -3851);
        A02.put(A03(701, 9, 33), -8586240);
        A02.put(A03(710, 12, 32), -1331);
        A02.put(A03(722, 9, 43), -5383962);
        A02.put(A03(731, 10, 116), -1015680);
        A02.put(A03(741, 9, 55), -2031617);
        A02.put(A03(UnityAdsConstants.AdOperations.GET_TOKEN_TIMEOUT_MS, 20, 82), -329006);
        A02.put(A03(770, 9, 71), -2894893);
        A02.put(A03(779, 10, 15), -7278960);
        A02.put(A03(789, 9, 91), -2894893);
        A02.put(A03(798, 9, 84), -18751);
        A02.put(A03(807, 11, 86), -24454);
        A02.put(A03(818, 13, 114), -14634326);
        A02.put(A03(831, 12, 19), -7876870);
        A02.put(A03(843, 14, 127), -8943463);
        A02.put(A03(857, 14, 52), -8943463);
        A02.put(A03(871, 14, 93), -5192482);
        A02.put(A03(885, 11, 55), -32);
        A02.put(A03(896, 4, 111), -16711936);
        A02.put(A03(900, 9, InterfaceC3669k1.d.b.k), -13447886);
        A02.put(A03(909, 5, 68), -331546);
        A02.put(A03(914, 7, 78), -65281);
        A02.put(A03(921, 6, 109), -8388608);
        A02.put(A03(927, 16, 88), -10039894);
        A02.put(A03(943, 10, 43), -16777011);
        A02.put(A03(953, 12, 52), -4565549);
        A02.put(A03(965, 12, 5), -7114533);
        A02.put(A03(977, 14, 111), -12799119);
        A02.put(A03(991, 15, 34), -8689426);
        A02.put(A03(1006, 17, 13), -16713062);
        A02.put(A03(IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 15, 101), -12004916);
        A02.put(A03(IronSourceError.ERROR_RV_SHOW_EXCEPTION, 15, 18), -3730043);
        A02.put(A03(1053, 12, 33), -15132304);
        A02.put(A03(1065, 9, 69), -655366);
        A02.put(A03(1074, 9, 104), -6943);
        A02.put(A03(1083, 8, 21), -6987);
        A02.put(A03(1091, 11, 23), -8531);
        A02.put(A03(1102, 4, 100), -16777088);
        A02.put(A03(1106, 7, 15), -133658);
        A02.put(A03(1113, 5, kotlin.fh.g1), -8355840);
        A02.put(A03(1118, 9, 43), -9728477);
        A02.put(A03(1127, 6, 36), -23296);
        A02.put(A03(1133, 9, 47), -47872);
        A02.put(A03(1142, 6, 4), -2461482);
        A02.put(A03(1148, 13, 28), -1120086);
        A02.put(A03(1161, 9, InterfaceC3669k1.d.b.k), -6751336);
        A02.put(A03(1170, 13, 30), -5247250);
        A02.put(A03(1183, 13, 36), -2396013);
        A02.put(A03(1196, 10, 89), -4139);
        A02.put(A03(InterfaceC3664je.a.e, 9, 52), -9543);
        A02.put(A03(1215, 4, 59), -3308225);
        A02.put(A03(1219, 4, 10), -16181);
        A02.put(A03(1223, 4, 8), -2252579);
        A02.put(A03(1227, 10, 92), -5185306);
        A02.put(A03(1237, 6, 68), -8388480);
        A02.put(A03(1243, 13, 127), -10079335);
        A02.put(A03(1256, 3, 65), Integer.valueOf(SupportMenu.CATEGORY_MASK));
        A02.put(A03(1266, 9, 116), -4419697);
        A02.put(A03(1275, 9, 77), -12490271);
        A02.put(A03(1284, 11, 32), -7650029);
        A02.put(A03(1295, 6, 30), -360334);
        A02.put(A03(InterfaceC3664je.c.e, 10, 73), -744352);
        A02.put(A03(1311, 8, 24), -13726889);
        A02.put(A03(1319, 8, 76), -2578);
        A02.put(A03(1327, 6, 74), -6270419);
        A02.put(A03(1333, 6, 38), -4144960);
        A02.put(A03(1339, 7, 100), -7876885);
        A02.put(A03(1346, 9, 32), -9807155);
        A02.put(A03(1355, 9, 12), -9404272);
        A02.put(A03(1364, 9, 86), -9404272);
        A02.put(A03(1373, 4, 91), -1286);
        A02.put(A03(1377, 11, 76), -16711809);
        A02.put(A03(1388, 9, 69), -12156236);
        A02.put(A03(1397, 3, 87), -2968436);
        A02.put(A03(1400, 4, 55), -16744320);
        A02.put(A03(1404, 7, 79), -2572328);
        A02.put(A03(1411, 6, 53), -40121);
        A02.put(A03(1417, 11, 64), 0);
        A02.put(A03(1428, 9, 48), -12525360);
        A02.put(A03(1437, 6, 66), -1146130);
        A02.put(A03(1443, 5, 120), -663885);
        A02.put(A03(1448, 5, 49), -1);
        A02.put(A03(1453, 10, 18), -657931);
        A02.put(A03(1463, 6, 17), Integer.valueOf(InputDeviceCompat.SOURCE_ANY));
        A02.put(A03(1469, 11, 43), -6632142);
    }

    public static int A00(String str) {
        return A02(str, true);
    }

    public static int A01(String str) {
        return A02(str, false);
    }

    public static int A02(String str, boolean z) {
        AbstractC1722Ln.A07(!TextUtils.isEmpty(str));
        String strReplace = str.replace(A03(0, 1, 121), A03(0, 0, 86));
        if (strReplace.charAt(0) == '#') {
            int i = (int) Long.parseLong(strReplace.substring(1), 16);
            if (strReplace.length() == 7) {
                return (-16777216) | i;
            }
            if (strReplace.length() == 9) {
                return ((i & 255) << 24) | (i >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (strReplace.startsWith(A03(1262, 4, 34))) {
            Matcher matcher = (z ? A03 : A04).matcher(strReplace);
            if (matcher.matches()) {
                return Color.argb(z ? (int) (Float.parseFloat((String) AbstractC1722Ln.A01(matcher.group(4))) * 255.0f) : Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(4)), 10), Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(1)), 10), Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(2)), 10), Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(3)), 10));
            }
        } else if (strReplace.startsWith(A03(1259, 3, 87))) {
            Matcher matcher2 = A05.matcher(strReplace);
            if (matcher2.matches()) {
                return Color.rgb(Integer.parseInt((String) AbstractC1722Ln.A01(matcher2.group(1)), 10), Integer.parseInt((String) AbstractC1722Ln.A01(matcher2.group(2)), 10), Integer.parseInt((String) AbstractC1722Ln.A01(matcher2.group(3)), 10));
            }
        } else {
            Integer num = A02.get(XC.A01(strReplace));
            if (num != null) {
                int iIntValue = num.intValue();
                String[] strArr = A01;
                if (strArr[6].charAt(28) == strArr[4].charAt(28)) {
                    throw new RuntimeException();
                }
                A01[5] = "Fhl70tmDAZMgBpn60jYFGzJNjNpjYz5v";
                return iIntValue;
            }
        }
        throw new IllegalArgumentException();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 106);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{3, 47, 67, 56, 51, 45, -7, -7, 45, 53, 76, 2, -3, 4, 78, -6, -3, -7, 45, 53, 76, 2, -3, 4, 78, -6, -3, -7, 45, 53, 76, 2, -3, 4, 78, -6, 45, -6, -11, 57, 77, 66, Base64.padSymbol, 60, 55, 3, 3, 55, 63, 86, Ascii.FF, 7, Ascii.SO, 88, 4, 7, 3, 55, 63, 86, Ascii.FF, 7, Ascii.SO, 88, 4, 7, 3, 55, 63, 86, Ascii.FF, 7, Ascii.SO, 88, 4, 7, 3, 55, 63, 5, 55, 9, Ascii.SUB, 55, 63, 5, Ascii.SUB, 4, 55, 4, -1, 60, 80, 69, SignedBytes.MAX_POWER_OF_TWO, 63, 58, 6, 6, 58, 66, 89, Ascii.SI, 10, 17, 91, 7, 10, 6, 58, 66, 89, Ascii.SI, 10, 17, 91, 7, 10, 6, 58, 66, 89, Ascii.SI, 10, 17, 91, 7, 10, 6, 58, 66, 89, Ascii.SI, 10, 17, 91, 7, 58, 7, 2, 60, 71, 68, 62, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 71, 80, SignedBytes.MAX_POWER_OF_TWO, -40, -27, -21, -32, -24, -20, -36, -18, -33, -32, -21, -36, -6, 10, Ascii.SO, -6, -3, Ascii.CR, 17, -3, 9, -3, Ascii.SO, 5, 10, 1, 3, Ascii.FS, Ascii.ETB, Ascii.DC4, 7, -18, -15, -11, -13, -15, Ascii.DLE, Ascii.ETB, 33, Ascii.US, 35, 19, 35, 45, 34, 36, 44, 44, 54, 43, 56, 45, 50, 47, 46, 43, 54, 55, 57, 56, 46, 58, 68, 77, Base64.padSymbol, Ascii.ESC, 37, 46, Ascii.RS, 47, 34, 40, 37, Ascii.RS, 45, Ascii.SI, Ascii.US, Ascii.FS, 36, Ascii.ESC, -34, -15, -18, -24, -11, -13, -21, -21, -32, -48, -50, -47, -46, -31, -49, -39, -30, -46, -37, -32, -39, -22, -20, -22, -35, -19, -21, -35, -20, -15, -8, -20, -8, -11, -22, -3, -18, -32, -20, -17, -34, -23, Ascii.SO, Ascii.SUB, Ascii.GS, Ascii.EM, 17, Ascii.ETB, Ascii.SUB, 34, Ascii.DLE, Ascii.GS, Ascii.CR, Ascii.ETB, 32, Ascii.DLE, -29, -17, -14, -18, -13, -23, -20, -21, -36, -21, -30, -26, -20, -24, -25, 46, 68, 44, 57, -6, -9, 8, 1, -8, 2, Ascii.VT, -5, 60, 57, 74, 67, 59, 81, 57, 70, 75, 72, 89, 82, 78, 86, 83, 75, 76, 85, 89, 86, 75, -9, -12, 5, -2, -6, 5, -12, Ascii.FF, Ascii.CR, 10, Ascii.ESC, Ascii.DC4, Ascii.DLE, Ascii.ESC, Ascii.SO, Ascii.SO, Ascii.ETB, 37, 34, 51, 44, 40, 51, 38, 58, Ascii.DC4, 17, 34, Ascii.ESC, Ascii.ESC, Ascii.CAN, 17, Ascii.ESC, Ascii.EM, 42, 39, 56, 49, 51, 39, 45, 43, 52, 58, 39, -27, -30, -13, -20, -16, -19, -22, -9, -26, -24, -13, -26, -26, -17, 34, Ascii.US, 48, 41, 45, 48, Ascii.US, 44, 37, 35, -42, -45, -28, -35, -31, -28, -43, -38, -37, -42, -34, -37, -20, -27, -20, -33, -34, Ascii.FF, 9, Ascii.SUB, 19, Ascii.ESC, 9, Ascii.DC4, Ascii.NAK, Ascii.ETB, Ascii.SYN, 3, 0, 17, 10, Ascii.DC2, 4, 0, 6, 17, 4, 4, Ascii.CR, -28, -31, -14, -21, -13, -20, -31, -12, -27, -30, -20, -11, -27, -31, -34, -17, -24, -16, -23, -34, -15, -30, -28, -17, -34, -10, Ascii.CR, 10, Ascii.ESC, Ascii.DC4, Ascii.FS, Ascii.NAK, 10, Ascii.GS, Ascii.SO, Ascii.DLE, Ascii.ESC, Ascii.SO, 34, 63, 60, 77, 70, 79, 80, 77, 76, 80, 74, 68, 78, SignedBytes.MAX_POWER_OF_TWO, 63, 60, 77, 70, 81, 68, 74, 71, SignedBytes.MAX_POWER_OF_TWO, 79, 67, 68, 68, 79, 79, 72, 77, 74, 33, 34, 34, 45, 48, 40, 54, Ascii.US, 41, 50, 34, 6, Ascii.VT, Ascii.SI, 9, Ascii.DC4, 3, Ascii.ESC, 66, 71, 75, 69, 80, 67, 87, 47, 58, 47, 50, 48, Base64.padSymbol, 45, 55, SignedBytes.MAX_POWER_OF_TWO, 48, Ascii.ETB, Ascii.SUB, 35, Ascii.SYN, 19, 35, Ascii.SUB, Ascii.DC4, Ascii.FS, -13, -7, -4, -1, -18, -7, 4, -11, -10, 1, -14, 17, Ascii.SUB, Ascii.GS, Ascii.DLE, Ascii.RS, Ascii.US, Ascii.DC2, Ascii.GS, Ascii.DLE, Ascii.DLE, Ascii.EM, 79, 94, 76, 81, 92, 82, 74, Ascii.CR, 7, Ascii.SI, Ascii.DC4, Ascii.EM, 8, Ascii.NAK, Ascii.CAN, Ascii.NAK, 0, 1, 8, Ascii.FF, Ascii.CR, Ascii.DLE, 1, 2, Ascii.CR, -2, -5, 3, 0, -8, 10, Ascii.DC2, Ascii.SI, 7, 8, 17, Ascii.NAK, Ascii.DC2, 7, 54, 65, 48, 72, 66, 77, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 73, -15, -4, -17, -17, -8, 3, -17, -10, -10, -7, 1, -30, -19, -32, -12, 38, 45, 44, 35, 55, 34, 35, 53, Ascii.DC4, Ascii.ESC, 32, Ascii.FS, Ascii.NAK, Ascii.SUB, Ascii.ETB, -25, -20, -30, -25, -33, -20, -16, -29, -30, Ascii.DLE, Ascii.NAK, Ascii.VT, Ascii.DLE, Ascii.SO, Ascii.SYN, -40, -27, -34, -31, -24, 46, 43, 36, 46, 44, -17, -28, -7, -24, -15, -25, -24, -11, 76, 65, 86, 69, 78, 68, 69, 82, 66, 76, 85, 83, 72, -9, -20, 2, -7, -14, -3, -16, -16, -7, -10, -17, -9, -7, -8, -19, -14, -13, -16, -16, -7, -8, 1, -2, -4, -3, 9, -9, 1, 10, -6, 74, 71, 69, 70, 82, 65, 77, 80, 63, 74, Ascii.CR, 10, 8, 9, Ascii.NAK, 4, Ascii.SUB, 2, Ascii.SI, 40, 37, 35, 36, 48, 35, 43, 40, 32, 33, 42, 46, 43, 32, 53, 33, 40, 40, 43, 51, Ascii.GS, Ascii.SUB, Ascii.CAN, Ascii.EM, 37, Ascii.CAN, 35, Ascii.DC2, 42, -27, -30, -32, -31, -19, -32, -21, -34, -34, -25, 49, 46, 44, 45, 57, 44, 55, 42, 62, 42, 39, 37, 38, 50, 46, 39, 44, 41, 44, 41, 39, 40, 52, 51, 33, 44, 45, 47, 46, 72, 69, 67, 68, 80, 79, 65, Base64.padSymbol, 67, 78, 65, 65, 74, -23, -26, -28, -27, -15, -16, -24, -10, -33, -23, -14, -30, 85, 82, 80, 81, 93, 92, 85, 74, 93, 78, 80, 91, 74, 98, 10, 7, 5, 6, Ascii.DC2, 17, 10, -1, Ascii.DC2, 3, 5, Ascii.DLE, 3, Ascii.ETB, 51, 48, 46, 47, 59, 58, 59, 44, 44, 51, 41, 51, 60, 44, Ascii.CR, 10, 8, 9, Ascii.NAK, Ascii.SUB, 6, Ascii.CR, Ascii.CR, Ascii.DLE, Ascii.CAN, 69, 66, 70, 62, 71, 68, 72, SignedBytes.MAX_POWER_OF_TWO, 66, 77, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 73, Ascii.SUB, Ascii.ETB, Ascii.FS, 19, Ascii.FS, 37, Ascii.EM, Ascii.US, Ascii.GS, 38, 44, Ascii.EM, 68, 56, 73, 70, 70, 69, 47, 39, 38, 43, 55, 47, 35, 51, 55, 35, 47, 35, 52, 43, 48, 39, 2, -6, -7, -2, 10, 2, -9, 1, 10, -6, Ascii.VT, 3, 2, 7, 19, Ascii.VT, Ascii.CR, Ascii.DLE, 1, 6, 7, 2, -36, -44, -45, -40, -28, -36, -33, -28, -31, -33, -37, -44, 70, 62, Base64.padSymbol, 66, 78, 70, 76, 62, 58, SignedBytes.MAX_POWER_OF_TWO, 75, 62, 62, 71, -7, -15, -16, -11, 1, -7, -1, -8, -19, 
        0, -15, -18, -8, 1, -15, -28, -36, -37, -32, -20, -28, -22, -25, -23, -32, -27, -34, -34, -23, -36, -36, -27, 60, 52, 51, 56, 68, 60, 67, 68, 65, SignedBytes.MAX_POWER_OF_TWO, 68, 62, 56, 66, 52, -23, -31, -32, -27, -15, -23, -14, -27, -21, -24, -31, -16, -18, -31, -32, -8, -12, -17, -7, -12, -14, -13, -1, -19, -9, 0, -16, Ascii.FS, Ascii.CAN, Ascii.GS, 35, Ascii.DC2, 33, Ascii.DC4, Ascii.DLE, Ascii.FS, 63, 59, 69, 70, 75, 68, 65, 69, 55, -20, -18, -30, -30, -32, -14, -24, -19, -17, -30, -9, -30, -21, -16, -8, -23, -22, -11, -26, 60, 47, 68, 71, -24, -27, -35, -27, -38, -36, -34, 67, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 74, 57, 4, 1, -2, Ascii.VT, -6, -7, 7, -10, -9, -3, 0, -17, -4, -11, -13, 8, Ascii.VT, -6, 7, 0, -2, Ascii.VT, -2, -3, -35, -32, -47, -42, -41, -46, -10, -25, -14, -21, -19, -11, -14, -22, -21, -12, -8, -11, -22, 75, 60, 71, SignedBytes.MAX_POWER_OF_TWO, 66, 77, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 73, -8, -23, -12, -19, -4, -3, -6, -7, -3, -9, -15, -5, -19, -2, -17, -6, -13, 4, -9, -3, -6, -13, 2, 0, -13, -14, 51, 36, 51, 36, 60, 36, 58, 43, 44, 51, Ascii.SO, 3, -1, 1, 6, Ascii.SO, 19, 4, 4, Ascii.NAK, 10, Ascii.ETB, Ascii.SUB, -28, -35, -30, -33, -30, -34, -25, -33, 54, 53, Base64.padSymbol, 42, 43, 56, 40, 50, 59, 43, Ascii.RS, 35, 32, Ascii.RS, Ascii.SUB, 19, 91, 78, 75, 78, 76, 76, 74, 89, 94, 91, 89, 85, 78, Ascii.GS, Ascii.DLE, Ascii.SI, 51, 40, 35, -2, -13, -18, -19, 80, 77, 81, 87, SignedBytes.MAX_POWER_OF_TWO, 80, 77, 85, 76, 41, 38, 48, Ascii.CAN, 35, Ascii.EM, 35, 44, Ascii.FS, -3, -21, -18, -18, -10, -17, -20, -4, -7, 1, -8, -5, -23, -12, -11, -9, -10, 38, Ascii.DC4, 33, Ascii.ETB, 44, Ascii.NAK, 37, 34, 42, 33, -11, -25, -29, -23, -12, -25, -25, -16, 41, Ascii.ESC, Ascii.ETB, 41, Ascii.RS, Ascii.ESC, 34, 34, 39, Ascii.GS, Ascii.EM, 34, 34, Ascii.NAK, 3, -7, -4, 6, -11, 2, 65, 57, 71, 48, 58, 67, 51, -3, -10, -21, -2, -17, -20, -10, -1, -17, -23, -30, -41, -22, -37, -35, -24, -41, -17, 51, 44, 33, 52, 37, 39, 50, 37, 57, 56, 51, 52, 60, 41, 38, 40, Ascii.US, 36, Ascii.GS, Ascii.GS, 40, Ascii.ESC, Ascii.ESC, 36, 34, 35, Ascii.DC4, Ascii.DC4, Ascii.ESC, 17, Ascii.ESC, 36, Ascii.DC4, 53, 34, 47, Ascii.NAK, 6, 2, Ascii.CR, 45, 33, 34, 44, 45, 37, Ascii.RS, 19, Ascii.SO, Ascii.FF, 0, 19, Ascii.SO, Ascii.RS, Ascii.FS, Ascii.VT, Ascii.CAN, Ascii.GS, Ascii.SUB, Ascii.VT, Ascii.FS, Ascii.SI, Ascii.CAN, Ascii.RS, Ascii.SO, Ascii.SI, Ascii.FF, Ascii.VT, Ascii.SI, 9, 3, Ascii.CR, -1, 34, Ascii.NAK, Ascii.ESC, Ascii.CAN, 17, 32, 89, 74, 71, 67, 86, Ascii.DC2, 3, 4, Ascii.SI, 0, -13, -28, -27, -16, -31, -17, -23, -21, -25, -31, -12, -32, -25, -25, -22, -14, Ascii.SO, -6, 1, 1, 4, Ascii.FF, -4, 7, -6, -6, 3};
        String[] strArr = A01;
        if (strArr[1].charAt(4) != strArr[3].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "3C72mJBCw26NoPqVufRz2mZ0fpF6RFLW";
        strArr2[2] = "csxpWlbTX8hnn5wOrHg1la9RRsm3GsPy";
    }
}
