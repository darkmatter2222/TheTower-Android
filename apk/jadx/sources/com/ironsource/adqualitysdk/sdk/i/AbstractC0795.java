package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0795 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static volatile boolean f2978;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final C0809 f2979;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final Pattern f2980;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final Pattern f2981;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final Pattern f2982;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final Pattern f2983;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final Pattern f2984;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Pattern f2985;

    static {
        StringFog.decrypt("6hFWTBU=\n", "pnQuKWejSgA=\n");
        f2985 = Pattern.compile(StringFog.decrypt("LrZcCMV5yuxUsmB+3hWd9123DQiGHLjrWg==\n", "cO09Jb8457Y=\n"));
        f2984 = Pattern.compile(StringFog.decrypt("sHBM5lKXKNOSCTr7NeJe0w==\n", "7lJk2WjLdPE=\n"));
        f2983 = Pattern.compile(StringFog.decrypt("fgx4ZAh3bo1ccA58bwIYjQ==\n", "ICtQWzIrMqo=\n"));
        f2982 = Pattern.compile(StringFog.decrypt("K2u91pXOHaVba73Wlc4d\n", "dTCN+6yTNvk=\n"));
        f2981 = Pattern.compile(StringFog.decrypt("mTIvv8z9Eg==\n", "x2kfkvWgOXw=\n"));
        f2980 = Pattern.compile(StringFog.decrypt("M7CptaR+gxFJtJXDvxLUCkCx+LXnG/FlMMGUtr1Tzzgew/e5gheH\n", "bevImN4/rks=\n"));
        f2979 = new C0809();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2276(Pattern pattern, String str, int i) {
        Matcher matcher;
        if (f2978) {
            Map map = (Map) f2979.get();
            matcher = (Matcher) map.get(pattern);
            if (matcher == null) {
                matcher = pattern.matcher("");
                map.put(pattern, matcher);
            }
            matcher.reset(str);
        } else {
            matcher = pattern.matcher(str);
        }
        matcher.region(i, str.length());
        if (matcher.find()) {
            return str.substring(matcher.start(), matcher.end());
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x016a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0183 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x010e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0103 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0116  */
    /* JADX WARN: Code duplicated, block: B:65:0x012d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0151  */
    /* JADX WARN: Code duplicated, block: B:71:0x015e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0177  */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0049. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x004c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x004f. Please report as an issue. */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2277(String str, String str2, String str3) {
        C0533 c0533;
        int length;
        int length2;
        String strM2276;
        int length3;
        String strM2277;
        String strM2278;
        synchronized (C0533.class) {
            c0533 = C0533.f2219;
            if (c0533 == null) {
                c0533 = new C0533();
                C0533.f2219 = c0533;
            }
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str3.length()) {
            char cCharAt = str3.charAt(i);
            int i2 = i + 1;
            char cCharAt2 = i2 < str3.length() ? str3.charAt(i2) : (char) 0;
            if (cCharAt != '\n') {
                if (cCharAt != '[' && cCharAt != ']') {
                    if (cCharAt != '!') {
                        if (cCharAt != '\"') {
                            switch (cCharAt) {
                                case '%':
                                case '(':
                                case ')':
                                case '*':
                                case ',':
                                case '.':
                                    break;
                                case '&':
                                    if (cCharAt2 == cCharAt) {
                                        arrayList.add(c0533.m2121(cCharAt, cCharAt2));
                                        i += 2;
                                    } else if (!Character.isWhitespace(cCharAt)) {
                                        strM2276 = m2276(f2985, str3, i);
                                        if (TextUtils.isEmpty(strM2276)) {
                                            strM2277 = m2276(f2982, str3, i);
                                            if (TextUtils.isEmpty(strM2277)) {
                                                strM2278 = m2276(f2981, str3, i);
                                                if (TextUtils.isEmpty(strM2278)) {
                                                    AbstractC0991.m2386(AbstractC0270.m2002("kQuENxtE\n", "3W78UmlrCQs=\n", new StringBuilder(), str), AbstractC0270.m2002("NCNSEA==\n", "FEo8MG8Jt2Q=\n", new StringBuilder().append(StringFog.decrypt("DZJu0Pk3mOkxhnnRujuX5irc\n", "WPwctZpY/4c=\n")).append(cCharAt).append(StringFog.decrypt("Mzqw6OivVaJnMqumuA==\n", "E1vEyJjAJss=\n")).append(i), str2), null, null);
                                                } else {
                                                    arrayList.add(c0533.m2119(strM2278));
                                                    length2 = strM2278.length();
                                                }
                                            } else {
                                                arrayList.add(c0533.m2122(strM2277));
                                                length2 = strM2277.length();
                                            }
                                            break;
                                        } else {
                                            length3 = strM2276.length() + i;
                                            if (length3 < str3.length() || str3.charAt(length3) != '.') {
                                                arrayList.add(c0533.m2117(strM2276));
                                                length2 = strM2276.length();
                                            } else {
                                                String strM2279 = m2276(f2980, str3, i);
                                                if (TextUtils.isEmpty(strM2279)) {
                                                    arrayList.add(c0533.m2117(strM2276));
                                                    length2 = strM2276.length();
                                                } else {
                                                    arrayList.add(new C0534(EnumC0984.f3500, strM2279));
                                                    length2 = strM2279.length();
                                                }
                                            }
                                        }
                                        i += length2;
                                    }
                                    break;
                                case '\'':
                                    String strM22710 = m2276(f2983, str3, i);
                                    if (strM22710 != null) {
                                        String strSubstring = strM22710.substring(1, strM22710.length() - 1);
                                        if (strSubstring.length() == 1) {
                                            arrayList.add(c0533.m2119(String.valueOf((int) strSubstring.charAt(0))));
                                        } else {
                                            arrayList.add(c0533.m2118(strSubstring));
                                        }
                                        length = strSubstring.length();
                                        length2 = length + 2;
                                        i += length2;
                                    } else {
                                        AbstractC0991.m2386(AbstractC0270.m2002("VPGDY2Qz\n", "GJT7BhYcF24=\n", new StringBuilder(), str), AbstractC0270.m2002("YJu8OQ==\n", "QPLSGRTVSJU=\n", new StringBuilder().append(StringFog.decrypt("p4lao2BDWTmQiEGidUNaLJCSRqsyAl14kpRbpWYKRjbC\n", "4vsozBJjKVg=\n")).append(i), str2), null, null);
                                    }
                                    break;
                                case '+':
                                    if (cCharAt2 != '+') {
                                        arrayList.add(!c0533.f2229 ? new C0534(EnumC0984.f3505, String.valueOf(cCharAt)) : c0533.f2228[cCharAt]);
                                    } else {
                                        arrayList.add(c0533.m2121(cCharAt, cCharAt2));
                                        i += 2;
                                    }
                                    break;
                                case '-':
                                    if (cCharAt2 == '-') {
                                        arrayList.add(c0533.m2121(cCharAt, cCharAt2));
                                        i += 2;
                                    }
                                    break;
                                case '/':
                                    arrayList.add(!c0533.f2229 ? new C0534(EnumC0984.f3505, String.valueOf(cCharAt)) : c0533.f2228[cCharAt]);
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case ':':
                                        case ';':
                                        case '?':
                                            break;
                                        case '<':
                                        case '=':
                                        case '>':
                                            break;
                                        default:
                                            switch (cCharAt) {
                                                case '{':
                                                case '}':
                                                    break;
                                                case '|':
                                                    if (cCharAt2 == cCharAt) {
                                                        arrayList.add(c0533.m2121(cCharAt, cCharAt2));
                                                        i += 2;
                                                    } else if (!Character.isWhitespace(cCharAt)) {
                                                        strM2276 = m2276(f2985, str3, i);
                                                        if (TextUtils.isEmpty(strM2276)) {
                                                            strM2277 = m2276(f2982, str3, i);
                                                            if (TextUtils.isEmpty(strM2277)) {
                                                                strM2278 = m2276(f2981, str3, i);
                                                                if (TextUtils.isEmpty(strM2278)) {
                                                                    AbstractC0991.m2386(AbstractC0270.m2002("kQuENxtE\n", "3W78UmlrCQs=\n", new StringBuilder(), str), AbstractC0270.m2002("NCNSEA==\n", "FEo8MG8Jt2Q=\n", new StringBuilder().append(StringFog.decrypt("DZJu0Pk3mOkxhnnRujuX5irc\n", "WPwctZpY/4c=\n")).append(cCharAt).append(StringFog.decrypt("Mzqw6OivVaJnMqumuA==\n", "E1vEyJjAJss=\n")).append(i), str2), null, null);
                                                                } else {
                                                                    arrayList.add(c0533.m2119(strM2278));
                                                                    length2 = strM2278.length();
                                                                }
                                                            } else {
                                                                arrayList.add(c0533.m2122(strM2277));
                                                                length2 = strM2277.length();
                                                            }
                                                            break;
                                                        } else {
                                                            length3 = strM2276.length() + i;
                                                            if (length3 < str3.length()) {
                                                                arrayList.add(c0533.m2117(strM2276));
                                                                length2 = strM2276.length();
                                                            } else {
                                                                arrayList.add(c0533.m2117(strM2276));
                                                                length2 = strM2276.length();
                                                            }
                                                        }
                                                        i += length2;
                                                    }
                                                    break;
                                                default:
                                                    if (!Character.isWhitespace(cCharAt)) {
                                                        strM2276 = m2276(f2985, str3, i);
                                                        if (TextUtils.isEmpty(strM2276)) {
                                                            strM2277 = m2276(f2982, str3, i);
                                                            if (TextUtils.isEmpty(strM2277)) {
                                                                strM2278 = m2276(f2981, str3, i);
                                                                if (TextUtils.isEmpty(strM2278)) {
                                                                    AbstractC0991.m2386(AbstractC0270.m2002("kQuENxtE\n", "3W78UmlrCQs=\n", new StringBuilder(), str), AbstractC0270.m2002("NCNSEA==\n", "FEo8MG8Jt2Q=\n", new StringBuilder().append(StringFog.decrypt("DZJu0Pk3mOkxhnnRujuX5irc\n", "WPwctZpY/4c=\n")).append(cCharAt).append(StringFog.decrypt("Mzqw6OivVaJnMqumuA==\n", "E1vEyJjAJss=\n")).append(i), str2), null, null);
                                                                } else {
                                                                    arrayList.add(c0533.m2119(strM2278));
                                                                    length2 = strM2278.length();
                                                                }
                                                            } else {
                                                                arrayList.add(c0533.m2122(strM2277));
                                                                length2 = strM2277.length();
                                                            }
                                                            break;
                                                        } else {
                                                            length3 = strM2276.length() + i;
                                                            if (length3 < str3.length()) {
                                                                arrayList.add(c0533.m2117(strM2276));
                                                                length2 = strM2276.length();
                                                            } else {
                                                                arrayList.add(c0533.m2117(strM2276));
                                                                length2 = strM2276.length();
                                                            }
                                                        }
                                                        i += length2;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            String strM22711 = m2276(f2984, str3, i);
                            if (strM22711 == null) {
                                AbstractC0991.m2386(AbstractC0270.m2002("mJugkn7f\n", "1P7Y9wzwZb0=\n", new StringBuilder(), str), AbstractC0270.m2002("8wW4pQ==\n", "02zWhfRMSmE=\n", new StringBuilder().append(StringFog.decrypt("yeLOXutTNaL+49Vf/lM2t/750la5EjHj/P/PWO0aKq2s\n", "jJC8MZlzRcM=\n")).append(i), str2), null, null);
                            } else {
                                String strSubstring2 = strM22711.substring(1, strM22711.length() - 1);
                                arrayList.add(c0533.m2118(strSubstring2));
                                length = strSubstring2.length();
                                length2 = length + 2;
                                i += length2;
                            }
                        }
                    }
                    if (cCharAt2 == '=') {
                        arrayList.add(c0533.m2121(cCharAt, cCharAt2));
                        i += 2;
                    } else {
                        arrayList.add(!c0533.f2229 ? new C0534(EnumC0984.f3505, String.valueOf(cCharAt)) : c0533.f2228[cCharAt]);
                    }
                }
                arrayList.add(!c0533.f2229 ? new C0534(EnumC0984.f3505, String.valueOf(cCharAt)) : c0533.f2228[cCharAt]);
            }
            i = i2;
        }
        return arrayList;
    }
}
