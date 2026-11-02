package com.appsflyer.internal;

import android.graphics.ImageFormat;
import android.telephony.cdma.CdmaCellLocation;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFg1dSDK {
    private StringBuilder getMediationNetwork = new StringBuilder();
    private final List<AFa1uSDK> AFAdRevenueData = new ArrayList();
    private final String getRevenue = null;

    enum AFa1uSDK {
        EMPTY_ARRAY,
        NONEMPTY_ARRAY,
        EMPTY_OBJECT,
        DANGLING_KEY,
        NONEMPTY_OBJECT,
        NULL
    }

    private AFa1uSDK getMediationNetwork() throws AFg1jSDK {
        if (this.AFAdRevenueData.isEmpty()) {
            throw new AFg1jSDK("Nesting problem");
        }
        List<AFa1uSDK> list = this.AFAdRevenueData;
        return list.get(list.size() - 1);
    }

    private void getMonetizationNetwork() throws AFg1jSDK {
        if (this.AFAdRevenueData.isEmpty()) {
            return;
        }
        AFa1uSDK mediationNetwork = getMediationNetwork();
        if (mediationNetwork == AFa1uSDK.EMPTY_ARRAY) {
            AFa1uSDK aFa1uSDK = AFa1uSDK.NONEMPTY_ARRAY;
            List<AFa1uSDK> list = this.AFAdRevenueData;
            list.set(list.size() - 1, aFa1uSDK);
        } else {
            if (mediationNetwork == AFa1uSDK.NONEMPTY_ARRAY) {
                this.getMediationNetwork.append(AbstractJsonLexerKt.COMMA);
                return;
            }
            if (mediationNetwork != AFa1uSDK.DANGLING_KEY) {
                if (mediationNetwork != AFa1uSDK.NULL) {
                    throw new AFg1jSDK("Nesting problem");
                }
            } else {
                this.getMediationNetwork.append(":");
                AFa1uSDK aFa1uSDK2 = AFa1uSDK.NONEMPTY_OBJECT;
                List<AFa1uSDK> list2 = this.AFAdRevenueData;
                list2.set(list2.size() - 1, aFa1uSDK2);
            }
        }
    }

    public final AFg1dSDK AFAdRevenueData(AFa1uSDK aFa1uSDK, String str) throws AFg1jSDK {
        if (this.AFAdRevenueData.isEmpty() && this.getMediationNetwork.length() > 0) {
            throw new AFg1jSDK("Nesting problem: multiple top-level roots");
        }
        getMonetizationNetwork();
        this.AFAdRevenueData.add(aFa1uSDK);
        this.getMediationNetwork.append(str);
        return this;
    }

    final void getCurrencyIso4217Code() throws AFg1jSDK {
        AFa1uSDK mediationNetwork = getMediationNetwork();
        if (mediationNetwork == AFa1uSDK.NONEMPTY_OBJECT) {
            this.getMediationNetwork.append(AbstractJsonLexerKt.COMMA);
        } else if (mediationNetwork != AFa1uSDK.EMPTY_OBJECT) {
            throw new AFg1jSDK("Nesting problem");
        }
        AFa1uSDK aFa1uSDK = AFa1uSDK.DANGLING_KEY;
        List<AFa1uSDK> list = this.AFAdRevenueData;
        list.set(list.size() - 1, aFa1uSDK);
    }

    final void getCurrencyIso4217Code(String str) {
        this.getMediationNetwork.append("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                this.getMediationNetwork.append("\\f");
            } else if (cCharAt == '\r') {
                this.getMediationNetwork.append("\\r");
            } else if (cCharAt != '\"' && cCharAt != '/' && cCharAt != '\\') {
                switch (cCharAt) {
                    case '\b':
                        this.getMediationNetwork.append("\\b");
                        break;
                    case '\t':
                        this.getMediationNetwork.append("\\t");
                        break;
                    case '\n':
                        this.getMediationNetwork.append("\\n");
                        break;
                    default:
                        if (cCharAt <= 31) {
                            this.getMediationNetwork.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            this.getMediationNetwork.append(cCharAt);
                        }
                        break;
                }
            } else {
                this.getMediationNetwork.append(AbstractJsonLexerKt.STRING_ESC).append(cCharAt);
            }
        }
        this.getMediationNetwork.append("\"");
    }

    public final AFg1dSDK getMediationNetwork(AFa1uSDK aFa1uSDK, AFa1uSDK aFa1uSDK2, String str) throws AFg1jSDK {
        AFa1uSDK mediationNetwork = getMediationNetwork();
        if (mediationNetwork != aFa1uSDK2 && mediationNetwork != aFa1uSDK) {
            throw new AFg1jSDK("Nesting problem");
        }
        List<AFa1uSDK> list = this.AFAdRevenueData;
        list.remove(list.size() - 1);
        this.getMediationNetwork.append(str);
        return this;
    }

    public final AFg1dSDK getMonetizationNetwork(Object obj) throws Throwable {
        if (this.AFAdRevenueData.isEmpty()) {
            throw new AFg1jSDK("Nesting problem");
        }
        if (((Class) AFa1jSDK.AFAdRevenueData((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 321, (char) (56707 - ImageFormat.getBitsPerPixel(0)), MotionEvent.axisFromString("") + 37)).isInstance(obj)) {
            try {
                Object[] objArr = {this};
                Object declaredMethod = AFa1jSDK.unregisterClient.get(1322349739);
                if (declaredMethod == null) {
                    declaredMethod = ((Class) AFa1jSDK.AFAdRevenueData((CdmaCellLocation.convertQuartSecToDecDegrees(0) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 0 : -1)) + 321, (char) (TextUtils.indexOf((CharSequence) "", '0') + 56709), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 35)).getDeclaredMethod("getRevenue", AFg1dSDK.class);
                    AFa1jSDK.unregisterClient.put(1322349739, declaredMethod);
                }
                ((Method) declaredMethod).invoke(obj, objArr);
                return this;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        if (obj instanceof AFg1gSDK) {
            ((AFg1gSDK) obj).getRevenue(this);
            return this;
        }
        getMonetizationNetwork();
        if (obj == null || (obj instanceof Boolean) || obj == AFg1gSDK.getRevenue) {
            this.getMediationNetwork.append(obj);
            return this;
        }
        if (obj instanceof Number) {
            this.getMediationNetwork.append(AFg1gSDK.getMediationNetwork((Number) obj));
            return this;
        }
        getCurrencyIso4217Code(obj.toString());
        return this;
    }

    public final String toString() {
        if (this.getMediationNetwork.length() == 0) {
            return null;
        }
        return this.getMediationNetwork.toString();
    }
}
