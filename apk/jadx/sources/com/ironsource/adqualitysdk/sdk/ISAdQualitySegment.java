package com.ironsource.adqualitysdk.sdk;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0250;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0679;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ISAdQualitySegment {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final HashMap f45;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final double f46;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final long f47;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final AtomicBoolean f48;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final int f49;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f50;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int f51;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f52;

    @Deprecated
    public static class Builder {

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public String f58;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public String f60;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public int f59 = -1;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public int f57 = -1;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public AtomicBoolean f56 = null;

        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
        public long f55 = 0;

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        public double f54 = -1.0d;

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        public final HashMap f53 = new HashMap();

        @Deprecated
        public Builder() {
        }

        @Deprecated
        public ISAdQualitySegment build() {
            return new ISAdQualitySegment(this.f60, this.f59, this.f58, this.f57, this.f56, this.f54, this.f55, new HashMap(this.f53));
        }

        @Deprecated
        public Builder setAge(int i) {
            if (i == 0) {
                return this;
            }
            if (i < 1 || i > 199) {
                AbstractC0250.m1992("ISAdQualitySegment Builder", "setAge( " + i + " ) age must be between 1-199");
                return this;
            }
            this.f59 = i;
            return this;
        }

        @Deprecated
        public Builder setCustomData(String str, String str2) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    if (this.f53.size() >= 5) {
                        AbstractC0250.m1992("ISAdQualitySegment Builder", "setCustomData( " + str + " , " + str2 + " ) limited to 5 custom values. Ignoring custom value.");
                        return this;
                    }
                    boolean zMatches = false;
                    if (TextUtils.isEmpty(str) ? false : str.matches(StringFog.decrypt("NLw8hy2Ck3JaymT3fec=\n", "auddqlfDvig=\n"))) {
                        if (!TextUtils.isEmpty(str2)) {
                            zMatches = str2.matches(StringFog.decrypt("NLw8hy2Ck3JaymT3fec=\n", "auddqlfDvig=\n"));
                        }
                        if (zMatches && AbstractC0679.m2220(str, 32) && AbstractC0679.m2220(str2, 32)) {
                            this.f53.put("sgct_" + str, str2);
                            return this;
                        }
                    }
                    AbstractC0250.m1992("ISAdQualitySegment Builder", "setCustomData( " + str + " , " + str2 + " ) key and value must be alphanumeric and 1-32 in length");
                    return this;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return this;
        }

        @Deprecated
        public Builder setGender(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            Locale locale = Locale.ENGLISH;
            if (str.toLowerCase(locale).equals(IronSourceConstants.a.b) || str.toLowerCase(locale).equals(IronSourceConstants.a.c)) {
                this.f58 = str.toLowerCase(locale);
                return this;
            }
            AbstractC0250.m1992("ISAdQualitySegment Builder", "setGender( " + str + " ) is invalid");
            return this;
        }

        @Deprecated
        public Builder setInAppPurchasesTotal(double d) {
            if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || d >= 999999.99d) {
                AbstractC0250.m1992("ISAdQualitySegment Builder", "setIAPTotal( " + d + " ) iapt must be between 0-999999.99");
                return this;
            }
            this.f54 = Math.floor(d * 100.0d) / 100.0d;
            return this;
        }

        @Deprecated
        public Builder setIsPaying(boolean z) {
            if (this.f56 == null) {
                this.f56 = new AtomicBoolean();
            }
            this.f56.set(z);
            return this;
        }

        @Deprecated
        public Builder setLevel(int i) {
            if (i == 0) {
                return this;
            }
            if (i <= 0 || i >= 999999) {
                AbstractC0250.m1992("ISAdQualitySegment Builder", "setLevel( " + i + " ) level must be between 1-999999");
                return this;
            }
            this.f57 = i;
            return this;
        }

        @Deprecated
        public Builder setSegmentName(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if ((TextUtils.isEmpty(str) ? false : str.matches(StringFog.decrypt("NLw8hy2Ck3JaymT3fec=\n", "auddqlfDvig=\n"))) && AbstractC0679.m2220(str, 32)) {
                this.f60 = str;
                return this;
            }
            AbstractC0250.m1992("ISAdQualitySegment Builder", "setSegmentName( " + str + " ) segment name must be alphanumeric and 1-32 in length");
            return this;
        }

        @Deprecated
        public Builder setUserCreationDate(long j) {
            if (j == 0) {
                return this;
            }
            if (j > 0) {
                this.f55 = j;
                return this;
            }
            AbstractC0250.m1992("ISAdQualitySegment Builder", "setUserCreationDate( " + j + " ) is an invalid timestamp");
            return this;
        }
    }

    public ISAdQualitySegment(String str, int i, String str2, int i2, AtomicBoolean atomicBoolean, double d, long j, HashMap map) {
        this.f52 = str;
        this.f51 = i;
        this.f50 = str2;
        this.f49 = i2;
        this.f48 = atomicBoolean;
        this.f46 = d;
        this.f47 = j;
        this.f45 = map;
    }

    @Deprecated
    public int getAge() {
        return this.f51;
    }

    @Deprecated
    public Map<String, String> getCustomData() {
        return this.f45;
    }

    @Deprecated
    public String getGender() {
        return this.f50;
    }

    @Deprecated
    public double getInAppPurchasesTotal() {
        return this.f46;
    }

    @Deprecated
    public AtomicBoolean getIsPaying() {
        return this.f48;
    }

    @Deprecated
    public int getLevel() {
        return this.f49;
    }

    @Deprecated
    public String getName() {
        return this.f52;
    }

    @Deprecated
    public long getUserCreationDate() {
        return this.f47;
    }
}
