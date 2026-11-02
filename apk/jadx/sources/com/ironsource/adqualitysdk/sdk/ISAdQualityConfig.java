package com.ironsource.adqualitysdk.sdk;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0250;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0274;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0679;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ISAdQualityConfig {

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final HashMap f5;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final ISAdQualityDeviceIdType f6;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final boolean f7;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final boolean f8;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String f9;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ISAdQualityLogLevel f10;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashSet f11;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f12;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean f13;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f14;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f15;

    @Deprecated
    public static class Builder {

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public String f26 = null;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public boolean f25 = false;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public boolean f24 = false;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public boolean f23 = false;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public ISAdQualityLogLevel f22 = ISAdQualityLogLevel.INFO;

        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
        public final HashSet f21 = new HashSet();

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        public String f20 = null;

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        public boolean f19 = false;

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        public boolean f18 = false;

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        public ISAdQualityDeviceIdType f17 = ISAdQualityDeviceIdType.NONE;

        /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
        public final HashMap f16 = new HashMap();

        @Deprecated
        public Builder() {
        }

        @Deprecated
        public Builder addAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            this.f21.add(iSAdQualityInitListener);
            return this;
        }

        @Deprecated
        public ISAdQualityConfig build() {
            return new ISAdQualityConfig(this.f26, this.f25, this.f24, this.f23, this.f22, this.f21, this.f20, this.f19, this.f18, this.f17, this.f16);
        }

        @Deprecated
        public Builder removeAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            this.f21.remove(iSAdQualityInitListener);
            return this;
        }

        @Deprecated
        public Builder setAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            return addAdQualityInitListener(iSAdQualityInitListener);
        }

        @Deprecated
        public Builder setCoppa(boolean z) {
            this.f19 = z;
            this.f18 = true;
            return this;
        }

        @Deprecated
        public Builder setDeviceIdType(ISAdQualityDeviceIdType iSAdQualityDeviceIdType) {
            this.f17 = iSAdQualityDeviceIdType;
            return this;
        }

        @Deprecated
        public Builder setInitializationSource(String str) {
            if (AbstractC0679.m2220(str, 20)) {
                this.f20 = str;
                return this;
            }
            AbstractC0250.m1992("ISAdQualityConfig", "setInitializationSource( " + str + " ) init source must have length of 1-20");
            return this;
        }

        @Deprecated
        public Builder setLogLevel(ISAdQualityLogLevel iSAdQualityLogLevel) {
            this.f22 = iSAdQualityLogLevel;
            return this;
        }

        @Deprecated
        public Builder setMetaData(String str, String str2) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    if (!AbstractC0274.f1369.contains(str)) {
                        if (AbstractC0274.m2027(this.f16, str)) {
                            AbstractC0250.m1992("ISAdQualityConfig", "setMetaData( " + str + " , " + str2 + " ) limited to 5 meta data values. Ignoring meta data value.");
                            return this;
                        }
                        if (!AbstractC0679.m2220(str, 64) || !AbstractC0679.m2220(str2, 64)) {
                            AbstractC0250.m1992("ISAdQualityConfig", "setMetaData( " + str + " , " + str2 + " ) the length of both the key and the value should be between 1 and 64 characters.");
                            return this;
                        }
                    }
                    this.f16.put(str, str2);
                }
            } catch (Exception unused) {
            }
            return this;
        }

        @Deprecated
        public Builder setMetaData(JSONObject jSONObject) {
            if (jSONObject != null) {
                for (int i = 0; i < jSONObject.names().length(); i++) {
                    try {
                        String string = jSONObject.names().getString(i);
                        Object objOpt = jSONObject.opt(string);
                        if (objOpt instanceof String) {
                            setMetaData(string, (String) objOpt);
                        } else {
                            AbstractC0250.m1992("ISAdQualityConfig", "setMetaData( " + string + " , " + objOpt + " ) value must be a string");
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return this;
        }

        @Deprecated
        public Builder setTestMode(boolean z) {
            this.f24 = z;
            this.f23 = true;
            return this;
        }

        @Deprecated
        public Builder setUserId(String str) {
            this.f26 = str;
            this.f25 = true;
            return this;
        }
    }

    public ISAdQualityConfig(String str, boolean z, boolean z2, boolean z3, ISAdQualityLogLevel iSAdQualityLogLevel, HashSet hashSet, String str2, boolean z4, boolean z5, ISAdQualityDeviceIdType iSAdQualityDeviceIdType, HashMap map) {
        this.f15 = str;
        this.f14 = z;
        this.f13 = z2;
        this.f12 = z3;
        this.f10 = iSAdQualityLogLevel;
        this.f11 = hashSet;
        this.f9 = str2;
        this.f8 = z4;
        this.f7 = z5;
        this.f6 = iSAdQualityDeviceIdType;
        this.f5 = map;
    }

    @Deprecated
    public static ISAdQualityConfig merge(ISAdQualityConfig iSAdQualityConfig, ISAdQualityConfig iSAdQualityConfig2) {
        Builder builder = new Builder();
        if (iSAdQualityConfig.f14) {
            builder.setUserId(iSAdQualityConfig.f15);
        } else if (iSAdQualityConfig2.f14) {
            builder.setUserId(iSAdQualityConfig2.f15);
        }
        if (iSAdQualityConfig.f12) {
            builder.setTestMode(iSAdQualityConfig.f13);
        } else if (iSAdQualityConfig2.f12) {
            builder.setTestMode(iSAdQualityConfig2.f13);
        }
        if (iSAdQualityConfig.f7) {
            builder.setCoppa(iSAdQualityConfig.f8);
        } else if (iSAdQualityConfig2.f7) {
            builder.setCoppa(iSAdQualityConfig2.f8);
        }
        ISAdQualityLogLevel iSAdQualityLogLevel = iSAdQualityConfig.f10;
        if (iSAdQualityLogLevel == null) {
            iSAdQualityLogLevel = iSAdQualityConfig2.f10;
        }
        builder.setLogLevel(iSAdQualityLogLevel);
        Iterator it = iSAdQualityConfig.f11.iterator();
        while (it.hasNext()) {
            builder.addAdQualityInitListener((ISAdQualityInitListener) it.next());
        }
        Iterator it2 = iSAdQualityConfig2.f11.iterator();
        while (it2.hasNext()) {
            builder.addAdQualityInitListener((ISAdQualityInitListener) it2.next());
        }
        String str = iSAdQualityConfig.f9;
        if (str != null) {
            builder.setInitializationSource(str);
        } else {
            String str2 = iSAdQualityConfig2.f9;
            if (str2 != null) {
                builder.setInitializationSource(str2);
            }
        }
        ISAdQualityDeviceIdType iSAdQualityDeviceIdType = iSAdQualityConfig.f6;
        if (iSAdQualityDeviceIdType == null) {
            iSAdQualityDeviceIdType = iSAdQualityConfig2.f6;
        }
        builder.setDeviceIdType(iSAdQualityDeviceIdType);
        HashMap map = new HashMap(iSAdQualityConfig2.f5);
        map.putAll(iSAdQualityConfig.f5);
        for (Map.Entry entry : map.entrySet()) {
            builder.setMetaData((String) entry.getKey(), (String) entry.getValue());
        }
        return builder.build();
    }

    @Deprecated
    public Set<ISAdQualityInitListener> getAdQualityInitListeners() {
        return this.f11;
    }

    @Deprecated
    public boolean getCoppa() {
        return this.f8;
    }

    @Deprecated
    public ISAdQualityDeviceIdType getDeviceIdType() {
        return this.f6;
    }

    @Deprecated
    public String getInitializationSource() {
        return this.f9;
    }

    @Deprecated
    public ISAdQualityLogLevel getLogLevel() {
        return this.f10;
    }

    @Deprecated
    public Map<String, String> getMetaData() {
        return this.f5;
    }

    @Deprecated
    public String getUserId() {
        return this.f15;
    }

    @Deprecated
    public boolean isTestMode() {
        return this.f13;
    }

    @Deprecated
    public boolean isUserIdSet() {
        return this.f14;
    }
}
