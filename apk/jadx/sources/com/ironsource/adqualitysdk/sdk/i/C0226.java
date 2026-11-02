package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.tapjoy.TJActionRequest;
import com.tapjoy.TJAdUnit;
import com.tapjoy.TJAdUnitActivity;
import com.tapjoy.TJAdUnitJSBridge;
import com.tapjoy.TJAwardCurrencyListener;
import com.tapjoy.TJContentActivity;
import com.tapjoy.TJCurrency;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementData;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementVideoListener;
import com.tapjoy.TJSplitWebView;
import com.tapjoy.TJVideoListener;
import com.tapjoy.TJWebView;
import com.tapjoy.Tapjoy;
import com.tapjoy.mraid.view.ActionHandler;
import com.tapjoy.mraid.view.Browser;
import com.tapjoy.mraid.view.MraidView;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0226 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1149 = StringFog.decrypt("r2MeeIh8JvalYwRcqnwo9g==\n", "yAZqKOQdRZM=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1148 = StringFog.decrypt("o8T8DDm0\n", "xKGIWUvYc40=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1147 = StringFog.decrypt("OVPBQTH8am47RcVmK/t/\n", "Xja1CUWIGjw=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1146 = StringFog.decrypt("xTOM9AHLjA==\n", "olb4umCm6cA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1145 = StringFog.decrypt("MD0R51wU/TU5PRc=\n", "V1hlqzVniVA=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1144 = StringFog.decrypt("QCVBpqJ2LvBrKUaErnwu7Q==\n", "J0A18MsSS58=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1143 = StringFog.decrypt("/4D6oHH6VMnqiQ==\n", "mOWO7BCJIJw=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1142 = StringFog.decrypt("OfxZTial/DwG8F5sKq/8IQ==\n", "SpktGE/BmVM=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1141 = StringFog.decrypt("elBI4PyvvpxveX3t36ijkQ==\n", "LhoJhKnB1+g=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1140 = StringFog.decrypt("1VBUoIIRfo/ZRhfavDFqsNhWTc+VBGeT30tA\n", "tj85jvZwDuU=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f1139 = StringFog.decrypt("1XABrfQfz1v1eyG28x3DQfg=\n", "gTpCwpprqjU=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f1138 = StringFog.decrypt("upEv82yYcnu2h2yJUrptf62bLKlZmnZ4r5c2pA==\n", "2f5C3Rj5AhE=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f1137 = StringFog.decrypt("OLELU6ZFUvcJlS97plJW\n", "bPtbP8cmN5o=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f1136 = StringFog.decrypt("GTC7+YgD9so6\n", "TXrsnOpVn68=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f1135 = StringFog.decrypt("kyDj8TLAFNmfNqCLDPYB0aYm66g=\n", "8E+O30ahZLM=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f1134 = StringFog.decrypt("85OqWy6N0lftiqlNEofcRg==\n", "p9nrP3vjuyM=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f1133 = StringFog.decrypt("uwEtk4L2bYKMMg==\n", "70tu5vCECOw=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f1132 = StringFog.decrypt("TAVu0bPM1Zx9IUo=\n", "GE8+vdKvsPE=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f1131 = StringFog.decrypt("JQctDPlQsLcjKB0a6Eqr\n", "cU1sb40539k=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f1130 = StringFog.decrypt("szJUB8TaYcGSCmcVy8t8zo4LYRXLzXc=\n", "53gVcKWoBYI=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f1129 = StringFog.decrypt("/1hQuaFCQqc=\n", "qxIR3fQsK9M=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f1128 = StringFog.decrypt("2/L8oj3knhjq1tiCNfSPEOHd3g==\n", "j7iszlyH+3U=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f1127 = StringFog.decrypt("M4dJy/v3rpMOvmvH8fez\n", "Z80fop+Swd8=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f1126 = StringFog.decrypt("2/NTUW6WTRzY3HBjUp1TJObKZlBVnVY=\n", "j7kSNTv4JGg=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f1125 = StringFog.decrypt("+ZD0pBwpaxP7s9GlJgtrFNm/26U7\n", "rdq1wElHAmc=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f1124 = StringFog.decrypt("DPclU/yalDY90wFp9J2UNBTUBkv4l5Qp\n", "WL11P5358Vs=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f1123 = StringFog.decrypt("3Ah+bdYevjzm\n", "kXofBLJI11k=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f1122 = StringFog.decrypt("71ELomkmErTjR0jhbyYLuqJID+lqaS+s7VcC2nQiFQ==\n", "jD5mjB1HYt4=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f1121 = StringFog.decrypt("yEid+7cnLN/nT4X3qg==\n", "iSvpkthJZL4=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f1120 = StringFog.decrypt("rRsWWtlZPjKhDVUZ31knPOACEhHaFg87uh0UGuVZIDyiEQk=\n", "znR7dK04Tlg=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f1119 = StringFog.decrypt("ExaK+TIViA==\n", "UWTljkFw+iU=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f1118 = StringFog.decrypt("7uS6fzJXqLfi8vk8NFexuaP9vjQxGJqv4vykNDQ=\n", "jYvXUUY22N0=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f1117 = StringFog.decrypt("/6PmTQU7ycDOi+NUDCU=\n", "q+m1PWlSvZc=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f1116 = StringFog.decrypt("SbISaDVKar5FpFESC3hquEOpKCMjfXOxXQ==\n", "Kt1/RkErGtQ=\n");

    public C0226(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return Tapjoy.getVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f1149, new C0648(this));
        map.put(f1148, new C0546(this));
        map.put(f1147, new C0535(this));
        map.put(f1146, new C0529(this));
        map.put(f1145, new C0526(this));
        map.put(f1144, new C0426(this));
        map.put(f1142, new C0242(this));
        map.put(f1143, new C0238(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:83:0x012f  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1983375197:
                if (!str.equals(f1131)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case -1687314074:
                if (!str.equals(f1118)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1640254126:
                if (!str.equals(f1139)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -1628534628:
                if (!str.equals(f1123)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -1429063965:
                if (!str.equals(f1128)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1414965228:
                if (!str.equals(f1121)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1147119309:
                if (!str.equals(f1135)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -872754855:
                if (!str.equals(f1137)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -721136035:
                if (!str.equals(f1129)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -668579974:
                if (!str.equals(f1122)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -593336436:
                if (!str.equals(f1130)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -217417742:
                if (!str.equals(f1120)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 178410181:
                if (!str.equals(f1116)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case 206635148:
                if (!str.equals(f1141)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 268330895:
                if (!str.equals(f1134)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 327820672:
                if (!str.equals(f1124)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 705136807:
                if (!str.equals(f1133)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 741045788:
                if (!str.equals(f1140)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 832039888:
                if (!str.equals(f1126)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 906946425:
                if (!str.equals(f1127)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 1317517621:
                if (!str.equals(f1117)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case 1504750787:
                if (!str.equals(f1136)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 1519750415:
                if (!str.equals(f1132)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1815593736:
                if (!str.equals(f1119)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1891461874:
                if (!str.equals(f1125)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 2041573826:
                if (!str.equals(f1138)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return TJAdUnitActivity.class;
            case 2:
            case 3:
                return TJContentActivity.class;
            case 4:
                return TJPlacementData.class;
            case 5:
            case 6:
                return ActionHandler.class;
            case 7:
            case 8:
                return Browser.class;
            case 9:
            case 10:
                return MraidView.class;
            case 11:
            case 12:
                return TJWebView.class;
            case 13:
                return TJAdUnit.class;
            case 14:
                return TJPlacementListener.class;
            case 15:
                return TJVideoListener.class;
            case 16:
                return TJAdUnit.TJAdUnitWebViewListener.class;
            case 17:
                return TJAdUnit.TJAdUnitVideoListener.class;
            case 18:
                return TJPlacementVideoListener.class;
            case 19:
                return TJAdUnitJSBridge.class;
            case 20:
                return TJCurrency.class;
            case 21:
                return TJPlacement.class;
            case 22:
                return TJActionRequest.class;
            case 23:
                return TJAwardCurrencyListener.class;
            case 24:
            case 25:
                return TJSplitWebView.class;
            default:
                return null;
        }
    }
}
