package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinUserData;
import com.ironsource.Nc;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r7 {
    private static final Pattern a = Pattern.compile("^[a-f0-9]{64}$");
    private static final Pattern b = Pattern.compile("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$");
    private static final Set c = Collections.unmodifiableSet(new HashSet(Arrays.asList("1", Nc.e, "20", "27", "30", "31", "32", "33", "34", "36", "39", "40", "41", "43", "44", "45", "46", "47", "48", "49", "51", "52", "53", "54", "55", "56", "57", "58", "60", "61", "62", "63", "64", "65", "66", "77", "81", "82", "84", "86", "90", "91", "92", "93", "94", "95", "98", "211", "212", "213", "216", "218", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "290", "291", "297", "298", "299", "345", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "385", "386", "387", "389", "420", "421", "423", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "670", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "685", "686", "687", "688", "689", "690", "691", "692", "850", "852", "853", "855", "856", "872", "880", "886", "960", "961", "962", "963", "964", "965", "966", "967", "968", "970", "971", "972", "973", "974", "975", "976", "977", "992", "993", "994", "995", "996", "998", "800", "881", "882", "883", "979")));

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (b(lowerCase)) {
            return lowerCase;
        }
        String strD = d(str);
        if (strD == null) {
            return null;
        }
        return f(strD);
    }

    public static Map a(AppLovinUserData appLovinUserData) {
        HashMap map = new HashMap();
        CollectionUtils.putStringIfValid("user_id", g(appLovinUserData.getUserId()), map);
        a(appLovinUserData.getEmail(), map);
        b(appLovinUserData.getPhone(), map);
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    private static void a(String str, Map map) {
        String strF;
        if (str == null) {
            return;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (b(lowerCase)) {
            map.put("email", lowerCase);
            map.put("email_v2", lowerCase);
            map.put("is_email_pre_hashed", Boolean.TRUE);
            return;
        }
        if (b.matcher(lowerCase).matches() && (strF = f(lowerCase)) != null) {
            map.put("email", strF);
            map.put("email_domain", lowerCase.substring(lowerCase.indexOf(64) + 1));
            map.put("is_email_pre_hashed", Boolean.FALSE);
            String strC = c(lowerCase);
            if (strC == null) {
                return;
            }
            boolean zEquals = lowerCase.equals(strC);
            boolean z = !zEquals;
            if (!zEquals) {
                strF = f(strC);
            }
            if (strF == null) {
                return;
            }
            map.put("email_v2", strF);
            map.put("is_gmail_normalized", Boolean.valueOf(z));
        }
    }

    private static void b(String str, Map map) {
        CollectionUtils.putStringIfValid("phone", a(str), map);
        Integer numE = e(str);
        if (numE != null) {
            map.put("phone_country_code", numE);
        }
    }

    private static boolean b(String str) {
        if (str == null) {
            return false;
        }
        return a.matcher(str).matches();
    }

    private static String c(String str) {
        String[] strArrSplit = str.split("@", -1);
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[1];
            if ("gmail.com".equals(str2) || "googlemail.com".equals(str2)) {
                String strSubstring = strArrSplit[0];
                int iIndexOf = strSubstring.indexOf(43);
                if (iIndexOf >= 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                String strReplace = strSubstring.replace(".", "");
                if (strReplace.isEmpty()) {
                    return null;
                }
                return strReplace + "@" + str2;
            }
        }
        return str;
    }

    private static String d(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c2 : str.toCharArray()) {
            if (c2 >= '0' && c2 <= '9') {
                sb.append(c2);
            }
        }
        String strReplaceFirst = sb.toString().replaceFirst("^0+", "");
        if (strReplaceFirst.length() < 8 || strReplaceFirst.length() > 15) {
            return null;
        }
        return strReplaceFirst;
    }

    private static Integer e(String str) {
        String strD;
        if (str == null) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (b(lowerCase) || !lowerCase.startsWith("+") || (strD = d(str)) == null) {
            return null;
        }
        for (int i = 1; i <= 3; i++) {
            if (strD.length() >= i) {
                String strSubstring = strD.substring(0, i);
                if (c.contains(strSubstring)) {
                    return Integer.valueOf(Integer.parseInt(strSubstring));
                }
            }
        }
        return null;
    }

    private static String f(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b2)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static String g(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return strTrim;
    }
}
