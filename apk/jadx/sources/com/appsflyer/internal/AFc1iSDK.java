package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.hardware.SensorManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.AFLogger;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AFc1iSDK extends HashMap<String, Object> {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int areAllFieldsValid = 1;
    private static int getMediationNetwork;
    private static long getMonetizationNetwork;
    private static int getRevenue;
    private final Map<String, Object> AFAdRevenueData;
    private final Context getCurrencyIso4217Code;

    public static class AFa1zSDK {
        static byte[] AFAdRevenueData(byte[] bArr) throws Exception {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
            }
            return bArr;
        }

        static byte[] getMonetizationNetwork(String str) throws Exception {
            return str.getBytes(Charset.defaultCharset());
        }
    }

    static {
        AFAdRevenueData();
        PointF.length(0.0f, 0.0f);
        ExpandableListView.getPackedPositionChild(0L);
        ViewConfiguration.getZoomControlsTimeout();
        ViewConfiguration.getScrollDefaultDelay();
        View.MeasureSpec.makeMeasureSpec(0, 0);
        ImageFormat.getBitsPerPixel(0);
        ViewConfiguration.getFadingEdgeLength();
        SystemClock.currentThreadTimeMillis();
        KeyEvent.getModifierMetaStateMask();
        ViewConfiguration.getTouchSlop();
        ViewConfiguration.getScrollBarSize();
        TypedValue.complexToFraction(0, 0.0f, 0.0f);
        ViewConfiguration.getScrollFriction();
        Process.myPid();
        View.resolveSizeAndState(0, 0, 0);
        ExpandableListView.getPackedPositionChild(0L);
        ViewConfiguration.getFadingEdgeLength();
        ViewConfiguration.getTapTimeout();
        TextUtils.indexOf((CharSequence) "", '0', 0, 0);
        int i = areAllFieldsValid + 19;
        getRevenue = i % 128;
        if (i % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    public AFc1iSDK(Map<String, Object> map, Context context) {
        this.AFAdRevenueData = map;
        this.getCurrencyIso4217Code = context;
        put(getMediationNetwork(), getMonetizationNetwork());
    }

    static void AFAdRevenueData() {
        getMediationNetwork = -33994396;
        getMonetizationNetwork = 8254201675162375375L;
    }

    private static void a(String str, int i, int i2, int i3, boolean z, Object[] objArr) {
        int i4 = 2 % 2;
        Object charArray = str;
        if (str != null) {
            int i5 = $10 + 15;
            $11 = i5 % 128;
            if (i5 % 2 == 0) {
                str.toCharArray();
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        AFk1cSDK aFk1cSDK = new AFk1cSDK();
        char[] cArr2 = new char[i2];
        aFk1cSDK.getMonetizationNetwork = 0;
        while (aFk1cSDK.getMonetizationNetwork < i2) {
            int i6 = $11 + 45;
            $10 = i6 % 128;
            int i7 = i6 % 2;
            aFk1cSDK.AFAdRevenueData = cArr[aFk1cSDK.getMonetizationNetwork];
            cArr2[aFk1cSDK.getMonetizationNetwork] = (char) (aFk1cSDK.AFAdRevenueData + i3);
            int i8 = aFk1cSDK.getMonetizationNetwork;
            cArr2[i8] = (char) (cArr2[i8] - ((int) (((long) getMediationNetwork) ^ (-1147347204026316506L))));
            aFk1cSDK.getMonetizationNetwork++;
        }
        if (i > 0) {
            int i9 = $11 + 43;
            $10 = i9 % 128;
            int i10 = i9 % 2;
            aFk1cSDK.getCurrencyIso4217Code = i;
            char[] cArr3 = new char[i2];
            System.arraycopy(cArr2, 0, cArr3, 0, i2);
            System.arraycopy(cArr3, 0, cArr2, i2 - aFk1cSDK.getCurrencyIso4217Code, aFk1cSDK.getCurrencyIso4217Code);
            System.arraycopy(cArr3, aFk1cSDK.getCurrencyIso4217Code, cArr2, 0, i2 - aFk1cSDK.getCurrencyIso4217Code);
        }
        if (z) {
            char[] cArr4 = new char[i2];
            aFk1cSDK.getMonetizationNetwork = 0;
            while (aFk1cSDK.getMonetizationNetwork < i2) {
                cArr4[aFk1cSDK.getMonetizationNetwork] = cArr2[(i2 - aFk1cSDK.getMonetizationNetwork) - 1];
                aFk1cSDK.getMonetizationNetwork++;
            }
            cArr2 = cArr4;
        }
        objArr[0] = new String(cArr2);
    }

    private static void b(String str, int i, Object[] objArr) {
        char[] charArray;
        int i2 = 2 % 2;
        int i3 = $10;
        int i4 = i3 + 27;
        $11 = i4 % 128;
        int i5 = i4 % 2;
        Object obj = str;
        if (str != null) {
            int i6 = i3 + 97;
            $11 = i6 % 128;
            if (i6 % 2 == 0) {
                int i7 = 74 / 0;
                charArray = str.toCharArray();
            } else {
                charArray = str.toCharArray();
            }
            int i8 = $10 + 9;
            $11 = i8 % 128;
            int i9 = i8 % 2;
            obj = charArray;
        }
        AFk1gSDK aFk1gSDK = new AFk1gSDK();
        char[] currencyIso4217Code = AFk1gSDK.getCurrencyIso4217Code(getMonetizationNetwork ^ 7975055078221964256L, (char[]) obj, i);
        aFk1gSDK.getCurrencyIso4217Code = 4;
        while (aFk1gSDK.getCurrencyIso4217Code < currencyIso4217Code.length) {
            int i10 = $10 + 23;
            $11 = i10 % 128;
            int i11 = i10 % 2;
            aFk1gSDK.getMediationNetwork = aFk1gSDK.getCurrencyIso4217Code - 4;
            currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code] = (char) (((long) (currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code] ^ currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code % 4])) ^ (((long) aFk1gSDK.getMediationNetwork) * (getMonetizationNetwork ^ 7975055078221964256L)));
            aFk1gSDK.getCurrencyIso4217Code++;
        }
        objArr[0] = new String(currencyIso4217Code, 4, currencyIso4217Code.length - 4);
    }

    private static StringBuilder getCurrencyIso4217Code(String... strArr) throws Exception {
        int i = 2 % 2;
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        for (int i2 = 0; i2 < 3; i2++) {
            arrayList.add(Integer.valueOf(strArr[i2].length()));
        }
        Collections.sort(arrayList);
        int iIntValue = ((Integer) arrayList.get(0)).intValue();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < iIntValue; i3++) {
            int length2 = strArr.length;
            Object obj = null;
            Integer numValueOf = null;
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = areAllFieldsValid + 57;
                getRevenue = i5 % 128;
                int i6 = i5 % 2;
                int iCharAt = strArr[i4].charAt(i3);
                if (numValueOf == null) {
                    int i7 = areAllFieldsValid + 69;
                    getRevenue = i7 % 128;
                    if (i7 % 2 != 0) {
                        obj.hashCode();
                        throw null;
                    }
                } else {
                    iCharAt ^= numValueOf.intValue();
                }
                numValueOf = Integer.valueOf(iCharAt);
            }
            sb.append(Integer.toHexString(numValueOf.intValue()));
        }
        return sb;
    }

    private String getMediationNetwork() {
        int i = 2 % 2;
        try {
            String string = Integer.toString(Build.VERSION.SDK_INT);
            Map<String, Object> map = this.AFAdRevenueData;
            Object[] objArr = new Object[1];
            a("\n\ufff7\u0003\u0006\ufff7￼\ufff5\n\uffff\u0003\ufffb\t", ExpandableListView.getPackedPositionGroup(0L) + 4, 11 - ExpandableListView.getPackedPositionChild(0L), TextUtils.getCapsMode("", 0, 0) + 172, false, objArr);
            String string2 = map.get(((String) objArr[0]).intern()).toString();
            Map<String, Object> map2 = this.AFAdRevenueData;
            Object[] objArr2 = new Object[1];
            a("\ufffa\u000b\ufffb�\u0007", 3 - View.MeasureSpec.makeMeasureSpec(0, 0), 5 - Color.blue(0), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 169, true, objArr2);
            String string3 = map2.get(((String) objArr2[0]).intern()).toString();
            if (string3 == null) {
                Object[] objArr3 = new Object[1];
                a("\u0003\u0002\ufff8\u0002\ufff5\u0006\ufff6\u0013", TextUtils.indexOf("", "") + 2, 8 - (ViewConfiguration.getTapTimeout() >> 16), 142 - Drawable.resolveOpacity(0, 0), true, objArr3);
                string3 = ((String) objArr3[0]).intern();
            }
            StringBuilder sb = new StringBuilder(string2);
            sb.reverse();
            StringBuilder currencyIso4217Code = getCurrencyIso4217Code(string, string3, sb.toString());
            int length = currencyIso4217Code.length();
            if (length > 4) {
                int i2 = areAllFieldsValid + 97;
                getRevenue = i2 % 128;
                int i3 = i2 % 2;
                currencyIso4217Code.delete(4, length);
            } else {
                while (length < 4) {
                    int i4 = areAllFieldsValid + 89;
                    getRevenue = i4 % 128;
                    int i5 = i4 % 2;
                    length++;
                    currencyIso4217Code.append('1');
                }
            }
            Object[] objArr4 = new Object[1];
            b("퍵ƅ哆鈷팞뛏㫾", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), objArr4);
            currencyIso4217Code.insert(0, ((String) objArr4[0]).intern());
            return currencyIso4217Code.toString();
        } catch (Exception e) {
            Object[] objArr5 = new Object[1];
            b("쬇\udc3a\uf4e9ꃕ쬧歲髒蔬\u17ed俣뾸ꋹ爆경퍙羱嵚鄵\uf01e᭰맗\uf642ᗂ㣆蓎\uda93䪂햘\ue706㿃湈\uf100쉈ᰌ茍蹄⺌䅐ꂮꮘ৬ꖘ쑧䢔", -((byte) KeyEvent.getModifierMetaStateMask()), objArr5);
            AFLogger.afErrorLogForExcManagerOnly(((String) objArr5[0]).intern(), e);
            StringBuilder sb2 = new StringBuilder();
            Object[] objArr6 = new Object[1];
            b("╨鳵다턗┎⮻\udcd3\uf4f6鈴ེ吏팹鱵\uec3c镗\u0e60댽퇢똟檸埿뛊叁䤏檢騎ಅꑋॹ罂⡕肋ⰸ峎앆ￃ샰ƙ\ue6bf\uda0a\ue780\ue557艱㥐먊쩒", -((byte) KeyEvent.getModifierMetaStateMask()), objArr6);
            AFLogger.afRDLog(sb2.append(((String) objArr6[0]).intern()).append(e).toString());
            Object[] objArr7 = new Object[1];
            b("쁃w\uf497꜍쀨뜽骯芹᳆鎥뾴", Drawable.resolveOpacity(0, 0) + 1, objArr7);
            return ((String) objArr7[0]).intern();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:25:0x01d3 A[Catch: Exception -> 0x0327, TRY_LEAVE, TryCatch #1 {Exception -> 0x0327, blocks: (B:18:0x0170, B:22:0x01b1, B:23:0x01c9, B:25:0x01d3, B:29:0x01fb), top: B:56:0x0170 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:28:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:35:0x02ef A[Catch: Exception -> 0x0323, TRY_LEAVE, TryCatch #5 {Exception -> 0x0323, blocks: (B:33:0x0219, B:35:0x02ef, B:38:0x0305, B:39:0x030f, B:40:0x0315), top: B:64:0x0219 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:52:0x03ba A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x030f A[SYNTHETIC] */
    private String getMonetizationNetwork() throws Throwable {
        long j;
        String string;
        String str;
        char c;
        Throwable th;
        String string2;
        int i;
        Intent intentRegisterReceiver;
        int intExtra;
        String str2;
        int i2;
        StringBuilder sb;
        int i3;
        String hexString;
        Object[] objArr;
        int i4 = 2 % 2;
        try {
            Map<String, Object> map = this.AFAdRevenueData;
            Object[] objArr2 = new Object[1];
            a("\n\ufff7\u0003\u0006\ufff7￼\ufff5\n\uffff\u0003\ufffb\t", (ViewConfiguration.getJumpTapTimeout() >> 16) + 4, (ViewConfiguration.getWindowTouchSlop() >> 8) + 12, (ViewConfiguration.getTouchSlop() >> 8) + 172, false, objArr2);
            String string3 = map.get(((String) objArr2[0]).intern()).toString();
            Map<String, Object> map2 = this.AFAdRevenueData;
            try {
                try {
                    Object[] objArr3 = new Object[1];
                    a("\uffde\ufffb\u000e\uffff\u0000\u0003\f\r\u000e￦\ufffb\u000f\b�\u0002", TextUtils.indexOf("", "", 0) + 4, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 16, View.getDefaultSize(0, 0) + 168, false, objArr3);
                    String string4 = map2.get(((String) objArr3[0]).intern()).toString();
                    Object[] objArr4 = new Object[1];
                    b("䰕袗ꊇ\uf38b䰣㾖쳨혱邇\u1b4f", (ViewConfiguration.getWindowTouchSlop() >> 8) + 1, objArr4);
                    String strIntern = ((String) objArr4[0]).intern();
                    j = 0;
                    try {
                        Object[] objArr5 = new Object[1];
                        a("￨￥￩\u001e-", 1 - (ViewConfiguration.getDoubleTapTimeout() >> 16), KeyEvent.getDeadChar(0, 0) + 5, 183 - AndroidCharacter.getMirror('0'), true, objArr5);
                        string = new StringBuilder("").append(AFj1bSDK.getCurrencyIso4217Code(new StringBuilder().append(string3).append(string4).append(strIntern.replaceAll(((String) objArr5[0]).intern(), "")).toString()).substring(0, 16)).toString();
                    } catch (Exception e) {
                        e = e;
                        Object[] objArr6 = new Object[1];
                        a("\u0013\u0006\u000f\u0006\b\uffc1\u0005\u0006\r\n\u0002\u0007\uffc1\u0006\u0016\r\u0002\ufff7ￓ\ufff7\u0015\u0006\b\u0006\u0016\r\u0002\u0017\uffc1\u0007\u0006\f\uffc1\b\u000f\n\u0015\u0002", TextUtils.indexOf("", "", 0) + 23, TextUtils.getOffsetAfter("", 0) + 38, 160 - Process.getGidForName(""), true, objArr6);
                        AFLogger.afErrorLogForExcManagerOnly(((String) objArr6[0]).intern(), e);
                        StringBuilder sb2 = new StringBuilder();
                        Object[] objArr7 = new Object[1];
                        b("罹写䟍老缟\ue6d7⧺ꗠꎠ숖\u0cf7舯왤⅐恾彶\ue92c\u1c8e䌶㮮෮箦ꛨ᠙コ坢鈴\uf559卽뉻\udd6e퇔瘪醣〻께骹쳳ᎋ謏부⠢睃桁\ue04eݰ䩁䓄", 1 - (ViewConfiguration.getWindowTouchSlop() >> 8), objArr7);
                        AFLogger.afRDLog(sb2.append(((String) objArr7[0]).intern()).append(e).toString());
                        StringBuilder sb3 = new StringBuilder("");
                        Object[] objArr8 = new Object[1];
                        a("￨\u001c\ufff1￩\u001e￪￨￩\ufff0\u001a\u0019\u001a\u001d\u0019\u001d￨￭￬", 9 - Color.red(0), 17 - Process.getGidForName(""), 138 - KeyEvent.getDeadChar(0, 0), false, objArr8);
                        string = sb3.append(((String) objArr8[0]).intern()).toString();
                    }
                } catch (Exception e2) {
                    e = e2;
                    j = 0;
                    Object[] objArr9 = new Object[1];
                    a("\u0013\u0006\u000f\u0006\b\uffc1\u0005\u0006\r\n\u0002\u0007\uffc1\u0006\u0016\r\u0002\ufff7ￓ\ufff7\u0015\u0006\b\u0006\u0016\r\u0002\u0017\uffc1\u0007\u0006\f\uffc1\b\u000f\n\u0015\u0002", TextUtils.indexOf("", "", 0) + 23, TextUtils.getOffsetAfter("", 0) + 38, 160 - Process.getGidForName(""), true, objArr9);
                    AFLogger.afErrorLogForExcManagerOnly(((String) objArr9[0]).intern(), e);
                    StringBuilder sb4 = new StringBuilder();
                    Object[] objArr10 = new Object[1];
                    b("罹写䟍老缟\ue6d7⧺ꗠꎠ숖\u0cf7舯왤⅐恾彶\ue92c\u1c8e䌶㮮෮箦ꛨ᠙コ坢鈴\uf559卽뉻\udd6e퇔瘪醣〻께骹쳳ᎋ謏부⠢睃桁\ue04eݰ䩁䓄", 1 - (ViewConfiguration.getWindowTouchSlop() >> 8), objArr10);
                    AFLogger.afRDLog(sb4.append(((String) objArr10[0]).intern()).append(e).toString());
                    StringBuilder sb5 = new StringBuilder("");
                    Object[] objArr11 = new Object[1];
                    a("￨\u001c\ufff1￩\u001e￪￨￩\ufff0\u001a\u0019\u001a\u001d\u0019\u001d￨￭￬", 9 - Color.red(0), 17 - Process.getGidForName(""), 138 - KeyEvent.getDeadChar(0, 0), false, objArr11);
                    string = sb5.append(((String) objArr11[0]).intern()).toString();
                    str = string;
                    Context context = this.getCurrencyIso4217Code;
                    Object[] objArr12 = new Object[1];
                    a("\u0016\u0010\u000bￕ\u0010\u0015\u001b\f\u0015\u001bￕ\b\n\u001b\u0010\u0016\u0015ￕ￩￨\ufffb\ufffb￬\ufff9\u0000\u0006￪\uffef￨\ufff5￮￬￫\b\u0015\u000b\u0019", 34 - (ViewConfiguration.getZoomControlsTimeout() > j ? 1 : (ViewConfiguration.getZoomControlsTimeout() == j ? 0 : -1)), (ViewConfiguration.getGlobalActionKeyTimeout() > j ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == j ? 0 : -1)) + 36, View.combineMeasuredStates(0, 0) + 155, false, objArr12);
                    intentRegisterReceiver = context.registerReceiver(null, new IntentFilter(((String) objArr12[0]).intern()));
                    intExtra = -2700;
                    if (intentRegisterReceiver != null) {
                        int i5 = getRevenue + 47;
                        areAllFieldsValid = i5 % 128;
                        int i6 = i5 % 2;
                        Object[] objArr13 = new Object[1];
                        b("⢶鮜\ue044ᚒ⣂Ⳗ蹷㍯\uf46fࠅꬿᒯ醻\ueb49쟷", -TextUtils.lastIndexOf("", '0', 0, 0), objArr13);
                        intExtra = intentRegisterReceiver.getIntExtra(((String) objArr13[0]).intern(), -2700);
                    }
                    str2 = this.getCurrencyIso4217Code.getApplicationInfo().nativeLibraryDir;
                    if (str2 != null) {
                        objArr = new Object[1];
                        b("\uf68e㹥\u2e7d筻\uf6f6襲䀕", 1 - Drawable.resolveOpacity(0, 0), objArr);
                        if (str2.contains(((String) objArr[0]).intern())) {
                            int i7 = getRevenue + 87;
                            areAllFieldsValid = i7 % 128;
                            int i8 = i7 % 2;
                            i2 = 1;
                        } else {
                            i2 = 0;
                        }
                    } else {
                        i2 = 0;
                    }
                    Context context2 = this.getCurrencyIso4217Code;
                    c = '0';
                    th = null;
                    Object[] objArr14 = new Object[1];
                    a("\u0004\u0000\u0003\u0004\ufff6\uffff", (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 3, 6 - (KeyEvent.getMaxKeyCode() >> 16), 177 - TextUtils.indexOf("", "", 0, 0), false, objArr14);
                    int size = ((SensorManager) context2.getSystemService(((String) objArr14[0]).intern())).getSensorList(-1).size();
                    StringBuilder sb6 = new StringBuilder();
                    Object[] objArr15 = new Object[1];
                    b("ē甉썕敖ű", (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), objArr15);
                    StringBuilder sbAppend = sb6.append(((String) objArr15[0]).intern()).append(intExtra);
                    Object[] objArr16 = new Object[1];
                    a("ￗ)", AndroidCharacter.getMirror('0') - '.', TextUtils.getCapsMode("", 0, 0) + 2, View.MeasureSpec.getSize(0) + 145, false, objArr16);
                    StringBuilder sbAppend2 = sbAppend.append(((String) objArr16[0]).intern()).append(i2);
                    Object[] objArr17 = new Object[1];
                    b("蕕캷卍\udf3c蕳秫", 1 - (ExpandableListView.getPackedPositionForGroup(0) > j ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == j ? 0 : -1)), objArr17);
                    StringBuilder sbAppend3 = sbAppend2.append(((String) objArr17[0]).intern()).append(size);
                    Object[] objArr18 = new Object[1];
                    b("\udfe2ஔ催뭍\udfc4볋", 1 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), objArr18);
                    String string5 = sbAppend3.append(((String) objArr18[0]).intern()).append(this.AFAdRevenueData.size()).toString();
                    StringBuilder sbAppend4 = new StringBuilder().append(str);
                    byte[] bArrAFAdRevenueData = AFa1zSDK.AFAdRevenueData(AFa1zSDK.getMonetizationNetwork(string5));
                    sb = new StringBuilder();
                    for (byte b : bArrAFAdRevenueData) {
                        hexString = Integer.toHexString(b);
                        if (hexString.length() == 1) {
                            int i9 = areAllFieldsValid + 9;
                            getRevenue = i9 % 128;
                            int i10 = i9 % 2;
                            hexString = "0".concat(String.valueOf(hexString));
                        }
                        sb.append(hexString);
                    }
                    string2 = sbAppend4.append(sb.toString()).toString();
                    i = areAllFieldsValid + 87;
                    getRevenue = i % 128;
                    if (i % 2 == 0) {
                        return string2;
                    }
                    throw th;
                }
                Context context3 = this.getCurrencyIso4217Code;
                Object[] objArr19 = new Object[1];
                a("\u0016\u0010\u000bￕ\u0010\u0015\u001b\f\u0015\u001bￕ\b\n\u001b\u0010\u0016\u0015ￕ￩￨\ufffb\ufffb￬\ufff9\u0000\u0006￪\uffef￨\ufff5￮￬￫\b\u0015\u000b\u0019", 34 - (ViewConfiguration.getZoomControlsTimeout() > j ? 1 : (ViewConfiguration.getZoomControlsTimeout() == j ? 0 : -1)), (ViewConfiguration.getGlobalActionKeyTimeout() > j ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == j ? 0 : -1)) + 36, View.combineMeasuredStates(0, 0) + 155, false, objArr19);
                intentRegisterReceiver = context3.registerReceiver(null, new IntentFilter(((String) objArr19[0]).intern()));
                intExtra = -2700;
                if (intentRegisterReceiver != null) {
                    int i11 = getRevenue + 47;
                    areAllFieldsValid = i11 % 128;
                    int i12 = i11 % 2;
                    Object[] objArr110 = new Object[1];
                    b("⢶鮜\ue044ᚒ⣂Ⳗ蹷㍯\uf46fࠅꬿᒯ醻\ueb49쟷", -TextUtils.lastIndexOf("", '0', 0, 0), objArr110);
                    intExtra = intentRegisterReceiver.getIntExtra(((String) objArr110[0]).intern(), -2700);
                }
                str2 = this.getCurrencyIso4217Code.getApplicationInfo().nativeLibraryDir;
                if (str2 != null) {
                    objArr = new Object[1];
                    b("\uf68e㹥\u2e7d筻\uf6f6襲䀕", 1 - Drawable.resolveOpacity(0, 0), objArr);
                    if (str2.contains(((String) objArr[0]).intern())) {
                        int i13 = getRevenue + 87;
                        areAllFieldsValid = i13 % 128;
                        int i14 = i13 % 2;
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                } else {
                    i2 = 0;
                }
                Context context4 = this.getCurrencyIso4217Code;
                c = '0';
                try {
                    th = null;
                    try {
                        Object[] objArr111 = new Object[1];
                        a("\u0004\u0000\u0003\u0004\ufff6\uffff", (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 3, 6 - (KeyEvent.getMaxKeyCode() >> 16), 177 - TextUtils.indexOf("", "", 0, 0), false, objArr111);
                        int size2 = ((SensorManager) context4.getSystemService(((String) objArr111[0]).intern())).getSensorList(-1).size();
                        StringBuilder sb7 = new StringBuilder();
                        Object[] objArr112 = new Object[1];
                        b("ē甉썕敖ű", (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), objArr112);
                        StringBuilder sbAppend5 = sb7.append(((String) objArr112[0]).intern()).append(intExtra);
                        Object[] objArr113 = new Object[1];
                        a("ￗ)", AndroidCharacter.getMirror('0') - '.', TextUtils.getCapsMode("", 0, 0) + 2, View.MeasureSpec.getSize(0) + 145, false, objArr113);
                        StringBuilder sbAppend6 = sbAppend5.append(((String) objArr113[0]).intern()).append(i2);
                        Object[] objArr114 = new Object[1];
                        b("蕕캷卍\udf3c蕳秫", 1 - (ExpandableListView.getPackedPositionForGroup(0) > j ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == j ? 0 : -1)), objArr114);
                        StringBuilder sbAppend7 = sbAppend6.append(((String) objArr114[0]).intern()).append(size2);
                        Object[] objArr115 = new Object[1];
                        b("\udfe2ஔ催뭍\udfc4볋", 1 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), objArr115);
                        String string6 = sbAppend7.append(((String) objArr115[0]).intern()).append(this.AFAdRevenueData.size()).toString();
                        StringBuilder sbAppend8 = new StringBuilder().append(str);
                        byte[] bArrAFAdRevenueData2 = AFa1zSDK.AFAdRevenueData(AFa1zSDK.getMonetizationNetwork(string6));
                        sb = new StringBuilder();
                        while (i3 < r6) {
                            hexString = Integer.toHexString(b);
                            if (hexString.length() == 1) {
                                int i15 = areAllFieldsValid + 9;
                                getRevenue = i15 % 128;
                                int i16 = i15 % 2;
                                hexString = "0".concat(String.valueOf(hexString));
                            }
                            sb.append(hexString);
                        }
                        string2 = sbAppend8.append(sb.toString()).toString();
                    } catch (Exception e3) {
                        e = e3;
                        Object[] objArr20 = new Object[1];
                        a("\u0005\u0015\f\u0001\ufff6ￒ\ufff6\u0014\u0005\u0007\u0012\u000f\u0012\u0012\u0005\uffc0", ExpandableListView.getPackedPositionType(j) + 10, 16 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), KeyEvent.getDeadChar(0, 0) + 162, true, objArr20);
                        AFLogger.afErrorLogForExcManagerOnly(((String) objArr20[0]).intern(), e);
                        StringBuilder sb8 = new StringBuilder();
                        Object[] objArr21 = new Object[1];
                        b("罹写䟍老缟\ue6d7⧺ꗠꎠ숖\u0cf7舯왤⅐恾彶\ue92c\u1c8e䌶㮮෮箦ꛨ᠙コ坢鈴\uf559卽뉻\udd6e퇔瘪醣〻께骹쳳ᎋ謏부⠢睃桁\ue04eݰ䩁䓄", (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 1, objArr21);
                        AFLogger.afRDLog(sb8.append(((String) objArr21[0]).intern()).append(e).toString());
                        StringBuilder sbAppend9 = new StringBuilder().append(str);
                        Object[] objArr22 = new Object[1];
                        a("\u001bￜ\u001b\uffdd\uffdd\u000e\u0013\u001f\f\u0018\u0011ￛ\u001cￛ\u001cￜ", 9 - ExpandableListView.getPackedPositionChild(j), '@' - AndroidCharacter.getMirror(c), KeyEvent.normalizeMetaState(0) + 151, false, objArr22);
                        string2 = sbAppend9.append(((String) objArr22[0]).intern()).toString();
                    }
                } catch (Exception e4) {
                    e = e4;
                    th = null;
                    Object[] objArr23 = new Object[1];
                    a("\u0005\u0015\f\u0001\ufff6ￒ\ufff6\u0014\u0005\u0007\u0012\u000f\u0012\u0012\u0005\uffc0", ExpandableListView.getPackedPositionType(j) + 10, 16 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), KeyEvent.getDeadChar(0, 0) + 162, true, objArr23);
                    AFLogger.afErrorLogForExcManagerOnly(((String) objArr23[0]).intern(), e);
                    StringBuilder sb9 = new StringBuilder();
                    Object[] objArr24 = new Object[1];
                    b("罹写䟍老缟\ue6d7⧺ꗠꎠ숖\u0cf7舯왤⅐恾彶\ue92c\u1c8e䌶㮮෮箦ꛨ᠙コ坢鈴\uf559卽뉻\udd6e퇔瘪醣〻께骹쳳ᎋ謏부⠢睃桁\ue04eݰ䩁䓄", (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 1, objArr24);
                    AFLogger.afRDLog(sb9.append(((String) objArr24[0]).intern()).append(e).toString());
                    StringBuilder sbAppend10 = new StringBuilder().append(str);
                    Object[] objArr25 = new Object[1];
                    a("\u001bￜ\u001b\uffdd\uffdd\u000e\u0013\u001f\f\u0018\u0011ￛ\u001cￛ\u001cￜ", 9 - ExpandableListView.getPackedPositionChild(j), '@' - AndroidCharacter.getMirror(c), KeyEvent.normalizeMetaState(0) + 151, false, objArr25);
                    string2 = sbAppend10.append(((String) objArr25[0]).intern()).toString();
                    i = areAllFieldsValid + 87;
                    getRevenue = i % 128;
                    if (i % 2 == 0) {
                        return string2;
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                c = '0';
            }
        } catch (Exception e6) {
            e = e6;
        }
        str = string;
        i = areAllFieldsValid + 87;
        getRevenue = i % 128;
        if (i % 2 == 0) {
            return string2;
        }
        throw th;
    }
}
