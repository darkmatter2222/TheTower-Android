package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.İ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0116 {

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f632;

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f633;

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f634;

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f635;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f636;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f637;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f638;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f639;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f640;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final C0893 f646;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public JSONObject f647;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final C1005 f648;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0582 f649;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public C0549 f650 = null;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0943 f651;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0276 f652;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0759 f653;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0983 f654;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0776 f655;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f645 = StringFog.decrypt("LPaud5Bak/oy+rBsgVG37A==\n", "fpPDGOQ/0p4=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f644 = StringFog.decrypt("PrPQqhqUHag=\n", "X9Ckw2z9adE=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f643 = StringFog.decrypt("5Fc0MQ==\n", "kj5RRoX1Em4=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f642 = StringFog.decrypt("vMjlM3F1\n", "y6GLVx4CAdA=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f641 = StringFog.decrypt("Whv/TJxs7Jt3Ee1AiXz7jl4=\n", "O3iLJeoFmOI=\n");

    static {
        StringFog.decrypt("xY7/In1AqEzbguE5bEuMWrk=\n", "l+uSTQkl6Sg=\n");
        f640 = StringFog.decrypt("/McMqkoL6wTAyQekRxndWA==\n", "r6hjxyZqqXY=\n");
        StringFog.decrypt("h61xjJSvF7OHqkmMkbIGpKO8Kw==\n", "xs4F5eLGY8o=\n");
        StringFog.decrypt("FwG39cv2rGgyHLfs7+DO\n", "QWjSgoqS4AE=\n");
        StringFog.decrypt("VuMTHJUv6TFN4w4MnzbNJy8=\n", "AYp9ePpYqFU=\n");
        StringFog.decrypt("lLH61zItzUeZu+jbJz3aUrD8\n", "1dKOvkREuT4=\n");
        StringFog.decrypt("3fMfaiV0XUTO+A==\n", "tJ12HkwVMS0=\n");
        StringFog.decrypt("PupB1JwwOsom62E=\n", "X44Fve9AVqs=\n");
        StringFog.decrypt("+E3t+E9q40/gTM3URG79Tw==\n", "mSmpkTwajy4=\n");
        StringFog.decrypt("x9qGjNEyFnvC\n", "pr7F4LhRfR4=\n");
        StringFog.decrypt("Dd3s/98obGwI/9382wF0\n", "bLmvk7ZLBwk=\n");
        StringFog.decrypt("WLETwa8I724=\n", "OdVQrcB7igo=\n");
        StringFog.decrypt("2kwh+pEa42vPTSHp\n", "rCVEjdBulwo=\n");
        StringFog.decrypt("RfwOnOt8MdNX2gC25mAq+0T8Aqs=\n", "Mpls34MOXr4=\n");
        StringFog.decrypt("DFKM918YGJ8KSYs=\n", "byf/gzB1Xek=\n");
        StringFog.decrypt("o9RQOQlSEIO47n4LGGIeir7VZCcd\n", "zLoRSXkBde0=\n");
        StringFog.decrypt("eDsXgajATkFiJziUvMZEc3gnM5aq/V5bcw==\n", "F1VW8diSKzU=\n");
        StringFog.decrypt("hrWE2Y2YgRadoobInJCDGo0=\n", "6dvFuvnx938=\n");
        StringFog.decrypt("KWyeLAE8Bxkye4w7FCcFFSI=\n", "RgLfT3VVcXA=\n");
        StringFog.decrypt("jFzztaLfolqXS+CzpcO5Voc=\n", "4zKy1ta21DM=\n");
        StringFog.decrypt("+6Hz/D+nITXgtuL+Pr0yOA==\n", "lM+yn0vOV1w=\n");
        StringFog.decrypt("HLHkGXjWyCIHpvYOY8/OLhc=\n", "c9+legy/vks=\n");
        StringFog.decrypt("2HzZIYfLAk/Da8sjhcc9SMRm+SyQxydS1mb9\n", "txKYQvOidCY=\n");
        StringFog.decrypt("8krIBt2/1b3pXc0A2qLRu+RB7Q==\n", "nSSJZanWo9Q=\n");
        f639 = StringFog.decrypt("/huW0Q/N3ko=\n", "l3X8tGy5lDk=\n");
        f638 = StringFog.decrypt("6UTOlMS+LHDgQw==\n", "gzea+43QRhU=\n");
        f637 = StringFog.decrypt("vxFyxL31N+U=\n", "1WIittiTXp0=\n");
        f636 = StringFog.decrypt("FZgYJfiVp8QqmA==\n", "YOt9YIDh1aU=\n");
        f635 = StringFog.decrypt("iMaU3DyeO8M=\n", "6bbkmlP9TrA=\n");
        StringFog.decrypt("E3I8sQ0jgNweaz+DBy6Q3Xw=\n", "UgJM92JA9a8=\n");
        StringFog.decrypt("DQouHwSREKINFxw=\n", "YmRocGfkY+4=\n");
        StringFog.decrypt("5DUJnOyI9BnuKDuc/Zjj\n", "i1tP84/9h0s=\n");
        f634 = StringFog.decrypt("w6MQ/g2NyCDWvh/8FIE=\n", "osdRnXnkvkk=\n");
        f633 = StringFog.decrypt("cNUTWpow2jVwwjZ9nir8\n", "EbFFM/9HmVk=\n");
        f632 = StringFog.decrypt("til7l/+eHE6zDn+N2Q==\n", "wEAe4LzyfT0=\n");
    }

    public C0116(C1005 c1005, C0759 c0759, AbstractC0276 abstractC0276, C0776 c0776, C0983 c0983) {
        this.f655 = c0776;
        C0983 c0984 = new C0983(new HashMap(), c0983, null, null, true);
        c0984.f3493 = this;
        this.f654 = c0984;
        Iterator it = c0776.m2271().iterator();
        while (it.hasNext()) {
            c0984.f3498.put((String) it.next(), null);
        }
        c0983.m2384(c0776.f2898.f2711, this);
        this.f653 = c0759;
        this.f652 = abstractC0276;
        this.f651 = new C0943(this);
        this.f648 = c1005;
        this.f646 = new C0893();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1899(C0116 c0116, Activity activity) {
        c0116.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0115.f631, c0116.f648.f3545.f2382);
            jSONObject.put(AbstractC0115.f585, c0116.f648.f3545.f2380);
            jSONObject.put(AbstractC0115.f584, c0116.f648.f3542.mo1850());
            jSONObject.put(StringFog.decrypt("x3x8jj/BFA==\n", "ph8IwF6sccg=\n"), activity.getClass().getName());
            return jSONObject;
        } catch (JSONException unused) {
            AbstractC0250.m1990(f645, StringFog.decrypt("Up/uirijqQtyjOiMpOTqGHSZvI+57KRZeI/2gKn3\n", "F+2c5cqDynk=\n"));
            return jSONObject;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1900(C0116 c0116, String str, boolean z, boolean z2, List list) {
        boolean z3;
        c0116.getClass();
        try {
            C1055 c1055M2272 = c0116.f655.m2272(str);
            if (c1055M2272 != null) {
                String str2 = c1055M2272.f3705;
                C1014 c1014M2270 = c0116.f655.m2270(str2);
                if (c1014M2270 == null) {
                    new C0222(c0116, null, str2, StringFog.decrypt("pvLIwzKrzK+N5NbFLuyEq5Xl1Nhg\n", "44C6rECLpM4=\n") + str).m2264(c0116.m1903());
                    return;
                }
                if (z == c1055M2272.f3707 && z2 == c1055M2272.f3706) {
                    C0272 c0272M2008 = C0272.m2008();
                    synchronized (c0272M2008) {
                        z3 = c0272M2008.f1361;
                    }
                    if (z3) {
                        String strM1903 = c0116.m1903();
                        int i = AbstractC0991.f3513;
                        String str3 = StringFog.decrypt("5Iyi+A==\n", "t97u2HRbwRc=\n") + strM1903;
                        AbstractC0250.m2000(str3, str3, str, false);
                    }
                    C0983 c0983 = c0116.f654;
                    c1014M2270.m2401(c0983, c0983.f3496, c0116, list);
                }
            }
        } catch (Throwable th) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0270.m2002("kxZCM050E7S4AFw1UjNbsKABXigc\n", "1mQwXDxUe9U=\n", new StringBuilder(), str), th, null);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1901(C0116 c0116, Activity activity, ArrayList arrayList) {
        c0116.getClass();
        return arrayList.isEmpty() || arrayList.contains(activity.getClass().getName());
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1902() {
        JSONObject jSONObject;
        ArrayList arrayList;
        for (C0720 c0720 : this.f655.m2273()) {
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            if (c0961.f3409 == null) {
                synchronized (c0961) {
                    jSONObject = c0961.f2613;
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(c0961.f3445);
                if (jSONArrayOptJSONArray != null) {
                    arrayList = new ArrayList();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        ISAdQualityAdType iSAdQualityAdTypeFromInt = ISAdQualityAdType.fromInt(jSONArrayOptJSONArray.optInt(i));
                        if (iSAdQualityAdTypeFromInt != null) {
                            arrayList.add(iSAdQualityAdTypeFromInt);
                        }
                    }
                } else {
                    arrayList = null;
                }
                c0961.f3409 = arrayList;
            }
            ArrayList arrayList2 = c0961.f3409;
            ISAdQualityAdType iSAdQualityAdType = c0720.f2684;
            boolean zContains = true;
            if (arrayList2 != null && iSAdQualityAdType != ISAdQualityAdType.UNKNOWN) {
                zContains = true ^ arrayList2.contains(iSAdQualityAdType);
            }
            if (zContains) {
                m1908(c0720);
            }
        }
        String strDecrypt = StringFog.decrypt("0o/sM6MFTSzMg/Iosg5pOq6D7zWjCW0k6ZDk\n", "gOqBXNdgDEg=\n");
        ArrayList arrayList3 = new ArrayList();
        AbstractC0340.m2054(new C0872(this, strDecrypt, arrayList3));
        AbstractC0340.m2053(new C0751(this, strDecrypt, arrayList3));
        try {
            AbstractC0340.m2055(new C0700(new C0727(this, strDecrypt, arrayList3)));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m1903() {
        return this.f648.f3545.f2381 + StringFog.decrypt("xA==\n", "6zokPq9Ryn4=\n") + this.f655.f2898.f2711;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1904(String str) {
        Class clsM2029;
        AbstractC0276 abstractC0276 = this.f652;
        String strSubstring = str.substring(0, str.length() - StringFog.decrypt("9lPHxPRr\n", "2DCrpYcYNyY=\n").length());
        abstractC0276.getClass();
        try {
            clsM2029 = Prode.class.getName().equals("com.ironsource.adqualitysdk.sdk.i.Prode") ? abstractC0276.m2029(strSubstring, false) : abstractC0276.mo1849(strSubstring);
        } catch (Throwable unused) {
            clsM2029 = null;
        }
        if (clsM2029 != null) {
            return clsM2029.getName();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList m1905(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.endsWith(StringFog.decrypt("UyIFZkYK\n", "fUFpBzV5juk=\n"))) {
                String strM1904 = m1904(str);
                if (strM1904 != null) {
                    arrayList.add(strM1904);
                }
            } else {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1906() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0115.f631, this.f648.f3545.f2382);
            jSONObject.put(AbstractC0115.f584, this.f648.f3542.mo1850());
            jSONObject.put(AbstractC0115.f585, this.f648.f3545.f2380);
            return jSONObject;
        } catch (JSONException e) {
            AbstractC0250.m1990(f645, StringFog.decrypt("gU6Z20Pi9dChXZ/dX6W2x7JZhcARqOXNqgbL\n", "xDzrtDHClqI=\n") + e.getLocalizedMessage());
            return jSONObject;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1907(JSONObject jSONObject) {
        C3474h0 c3474h0;
        String str = f637;
        String strOptString = jSONObject.optString(str);
        jSONObject.remove(str);
        String str2 = f639;
        if (jSONObject.optBoolean(str2)) {
            C1005 c1005 = this.f648;
            synchronized (c1005) {
                c3474h0 = c1005.f3539;
            }
            if (c3474h0 != null) {
                if (!TextUtils.isEmpty(c3474h0.f271)) {
                    jSONObject.remove(str2);
                    try {
                        jSONObject.put(f638, strOptString + c3474h0.f271);
                    } catch (JSONException unused) {
                    }
                }
                if (c3474h0.f270) {
                    try {
                        jSONObject.put(f636, true);
                    } catch (JSONException unused2) {
                    }
                }
            }
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt instanceof String) {
                String str3 = (String) objOpt;
                if (str3.endsWith(StringFog.decrypt("UyIFZkYK\n", "fUFpBzV5juk=\n"))) {
                    String strM1904 = m1904(str3);
                    if (strM1904 == null) {
                        String strM1903 = m1903();
                        String strM2299 = AbstractC0897.m2299("59KVEaTHRnmp2NpIpMBLY7XIkwvjgUVltMifC+HTCX+iyI8V\n", "x7z6ZYShKQw=\n", AbstractC0662.m2192("zJmXj8gR\n", "j/X2/LsxEqA=\n", new StringBuilder(), str3));
                        int i = AbstractC0991.f3513;
                        String strM2002 = AbstractC0270.m2002("5Iyi+A==\n", "t97u2HRbwRc=\n", new StringBuilder(), strM1903);
                        AbstractC0250.m2000(strM2002, strM2002, strM2299, false);
                        return null;
                    }
                    try {
                        jSONObject.put(next, strM1904);
                    } catch (JSONException unused3) {
                    }
                } else {
                    continue;
                }
            } else if (objOpt instanceof JSONArray) {
                jSONObject.put(next, new JSONArray((Collection) m1905(AbstractC1030.m2414((JSONArray) objOpt))));
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1908(C0720 c0720) {
        byte b;
        String str = c0720.f2685;
        switch (str.hashCode()) {
            case -1825565413:
                if (!str.equals(f641)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1655966961:
                if (!str.equals(f644)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -787751952:
                if (!str.equals(f642)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 3619493:
                if (!str.equals(f643)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1144592183:
                if (!str.equals(f635)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            default:
                b = -1;
                break;
        }
        C0692 c0692 = null;
        if (b == 0) {
            JSONObject jSONObjectM1907 = m1907(c0720.f2683);
            if (jSONObjectM1907 != null) {
                String str2 = c0720.f2680;
                if (!TextUtils.isEmpty(str2)) {
                    C1014 c1014M2270 = str2 != null ? this.f655.m2270(str2) : null;
                    if (c1014M2270 != null) {
                        c0692 = new C0692(this, c1014M2270, str2);
                    } else {
                        AbstractC0991.m2386(m1903(), AbstractC0897.m2299("+UdpKl4lOJa3TQ==\n", "2SkGXn5DV+M=\n", AbstractC0662.m2192("7aIXNBxGfH/FoQoyGlY1dM7nBTMBAg==\n", "oMdjXHMiXBs=\n", new StringBuilder(), str2)), null, null);
                    }
                }
                C0692 c0693 = c0692;
                C0531 c0531 = new C0531(this, false);
                C0531 c0532 = new C0531(this, true);
                C0893 c0893 = this.f646;
                C0418 c0418 = new C0418(this, c0532, c0531);
                C1034 c1034 = new C1034(this);
                c0893.getClass();
                AbstractC0340.m2053(new C0926(c0893, jSONObjectM1907, c0693, c0418, c1034));
            }
            m1909(f644, c0720);
            return;
        }
        if (b == 1) {
            JSONObject jSONObjectM1908 = m1907(c0720.f2683);
            if (jSONObjectM1908 != null) {
                String str3 = c0720.f2681;
                C0493 c0493 = new C0493(this, true);
                C0493 c0494 = new C0493(this, false);
                if (TextUtils.isEmpty(str3)) {
                    C0893 c0894 = this.f646;
                    C0369 c0369 = new C0369(this, c0493, c0494);
                    c0894.getClass();
                    AbstractC0340.m2053(new C0900(c0894, jSONObjectM1908, null, c0369));
                } else {
                    C1014 c1014M2271 = str3 != null ? this.f655.m2270(str3) : null;
                    if (c1014M2271 != null) {
                        C0657 c0657 = new C0657(this, c1014M2271);
                        C0893 c0895 = this.f646;
                        C0369 c03610 = new C0369(this, c0493, c0494);
                        c0895.getClass();
                        AbstractC0340.m2053(new C0900(c0895, jSONObjectM1908, c0657, c03610));
                    } else {
                        AbstractC0991.m2386(m1903(), AbstractC0897.m2299("OHjA6V71SDd2cg==\n", "GBavnX6TJ0I=\n", AbstractC0662.m2192("HE+RkOdGbbI0TIyW4VYkuT8Kg5f6Ag==\n", "USrl+IgiTdY=\n", new StringBuilder(), str3)), null, null);
                    }
                }
            }
            m1909(f643, c0720);
            return;
        }
        if (b == 2) {
            JSONObject jSONObjectM1909 = m1907(c0720.f2683);
            if (jSONObjectM1909 != null) {
                C0434 c0434 = new C0434(this, false);
                C0434 c0435 = new C0434(this, true);
                C0893 c0896 = this.f646;
                C0379 c0379 = new C0379(this, c0435, c0434);
                c0896.getClass();
                AbstractC0340.m2053(new C0913(c0896, jSONObjectM1909, c0379));
            }
            m1909(f642, c0720);
            return;
        }
        if (b != 3) {
            if (b != 4) {
                return;
            }
            this.f649 = new C0582(new C1008(this, m1905(c0720.f2682)));
        } else if (this.f650 == null) {
            this.f650 = new C0549(this, m1905(c0720.f2682));
            AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
            C0549 c0549 = this.f650;
            synchronized (abstractC1081M2437) {
                abstractC1081M2437.f3816.add(c0549);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1909(String str, C0720 c0720) {
        byte b;
        JSONObject jSONObjectM1907 = m1907(c0720.f2683);
        if (jSONObjectM1907 == null || !jSONObjectM1907.has(StringFog.decrypt("eBJN1+/7Gt1pHkzd6NEr0HwY\n", "DH04tIe/f6k=\n"))) {
            return;
        }
        String strOptString = null;
        EnumC0236 enumC0236M1985 = EnumC0236.m1985(jSONObjectM1907.optString(StringFog.decrypt("DWWZfIGB4fQcaZh2hqvQ+Qlv\n", "eQrsH+nFhIA=\n"), null));
        int iHashCode = str.hashCode();
        if (iHashCode != -1655966961) {
            if (iHashCode != -787751952) {
                if (iHashCode == 3619493 && str.equals(f643)) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (str.equals(f642)) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (str.equals(f644)) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            strOptString = jSONObjectM1907.optString(f634, null);
        } else if (b == 1) {
            strOptString = jSONObjectM1907.optString(f633, null);
        } else if (b == 2) {
            strOptString = jSONObjectM1907.optString(f632, null);
        }
        if (enumC0236M1985 != null) {
            C0232 c0232M1979 = C0232.m1979();
            synchronized (c0232M1979) {
                c0232M1979.f1168.post(new C0383(c0232M1979, strOptString, enumC0236M1985));
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1910(String str, JSONObject jSONObject) {
        C0453 c0453;
        if (str.equals(StringFog.decrypt("HWJjxJXuc/Udf1nE\n", "fAY8oPydA5k=\n"))) {
            C1032 c1032 = this.f648.f3544;
            c1032.getClass();
            int iOptInt = jSONObject.optInt(AbstractC0115.f628);
            C0453 c0454 = c1032.f3647;
            if (c0454 != null) {
                c0454.adDisplayed(jSONObject.optString(AbstractC0115.f631), ISAdQualityAdType.fromInt(iOptInt));
            }
        } else if (str.equals(StringFog.decrypt("kN5Ef0vYX0KV\n", "8bobHCe3LCc=\n")) && (c0453 = this.f648.f3544.f3647) != null) {
            c0453.adClosed(jSONObject.optString(AbstractC0115.f631), ISAdQualityAdType.fromInt(jSONObject.optInt(AbstractC0115.f628)));
        }
        JSONObject jSONObjectM1906 = m1906();
        AbstractC1030.m2418(jSONObjectM1906, jSONObject, false);
        JSONObject jSONObjectM2416 = AbstractC1030.m2416(jSONObjectM1906, false);
        if (str.equals(AbstractC0115.f591)) {
            C1032 c1033 = this.f648.f3544;
            c1033.f3646.post(new C1053(c1033, C1032.f3639, jSONObjectM2416));
            return;
        }
        if (str.equals(AbstractC0115.f590)) {
            C1032 c1034 = this.f648.f3544;
            c1034.f3646.post(new C1053(c1034, C1032.f3638, jSONObjectM2416));
            return;
        }
        if (str.equals(AbstractC0115.f592)) {
            C1032 c1035 = this.f648.f3544;
            c1035.f3646.post(new C1053(c1035, C1032.f3640, jSONObjectM2416));
            return;
        }
        if (str.equals(AbstractC0115.f593)) {
            C1032 c1036 = this.f648.f3544;
            c1036.f3646.post(new C1053(c1036, C1032.f3641, jSONObjectM2416));
            return;
        }
        if (str.equals(AbstractC0115.f589)) {
            C1032 c1037 = this.f648.f3544;
            c1037.f3646.post(new C1053(c1037, C1032.f3637, jSONObjectM2416));
        } else if (str.equals(AbstractC0115.f587)) {
            C1032 c1038 = this.f648.f3544;
            c1038.f3646.post(new C1053(c1038, C1032.f3635, jSONObjectM2416));
        } else if (str.equals(AbstractC0115.f588)) {
            C1032 c1039 = this.f648.f3544;
            c1039.f3646.post(new C1053(c1039, C1032.f3636, jSONObjectM2416));
        } else {
            C1032 c10310 = this.f648.f3544;
            c10310.f3646.post(new C1053(c10310, str, jSONObject));
        }
    }
}
