package com.appsflyer.internal;

import android.util.Base64;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0015\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0019R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0019"}, d2 = {"Lcom/appsflyer/internal/AFc1cSDK;", "", "", "p0", "p1", "p2", "", "p3", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lorg/json/JSONObject;", "AFAdRevenueData", "()Lorg/json/JSONObject;", "getMediationNetwork", "()Ljava/lang/String;", "toString", "getCurrencyIso4217Code", "I", "getMonetizationNetwork", "getRevenue", "Ljava/lang/String;", "AFa1vSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AFc1cSDK {

    /* JADX INFO: renamed from: AFa1vSDK, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: AFAdRevenueData, reason: from kotlin metadata */
    public String getMediationNetwork;

    /* JADX INFO: renamed from: getCurrencyIso4217Code, reason: from kotlin metadata */
    int getMonetizationNetwork;

    /* JADX INFO: renamed from: getMediationNetwork, reason: from kotlin metadata */
    public String getRevenue;

    /* JADX INFO: renamed from: getRevenue, reason: from kotlin metadata */
    final String getCurrencyIso4217Code;

    /* JADX INFO: renamed from: com.appsflyer.internal.AFc1cSDK$AFa1vSDK, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J1\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0006\"\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\r\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000f"}, d2 = {"Lcom/appsflyer/internal/AFc1cSDK$AFa1vSDK;", "", "<init>", "()V", "", "p0", "", "", "p1", "", "AFAdRevenueData", "(Ljava/lang/Integer;[Ljava/lang/String;)Z", "Lcom/appsflyer/internal/AFc1cSDK;", "getCurrencyIso4217Code", "(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1cSDK;", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static boolean AFAdRevenueData(Integer p0, String... p1) {
            String str;
            boolean z = p0 == null;
            int length = p1.length;
            for (int i = 0; i < 3; i++) {
                z = z || (str = p1[i]) == null || str.length() == 0;
            }
            return z;
        }

        public static AFc1cSDK getCurrencyIso4217Code(String p0) {
            Intrinsics.checkNotNullParameter(p0, "");
            List<String> listSplit$default = StringsKt.split$default((CharSequence) p0, new String[]{"\n"}, false, 0, 6, (Object) null);
            if (listSplit$default.size() != 4) {
                return null;
            }
            String currencyIso4217Code = null;
            String currencyIso4217Code2 = null;
            String currencyIso4217Code3 = null;
            Integer numValueOf = null;
            for (String str : listSplit$default) {
                if (StringsKt.startsWith$default(str, "label=", false, 2, (Object) null)) {
                    currencyIso4217Code = getCurrencyIso4217Code(str, "label=");
                } else if (StringsKt.startsWith$default(str, "hashName=", false, 2, (Object) null)) {
                    currencyIso4217Code2 = getCurrencyIso4217Code(str, "hashName=");
                } else if (!StringsKt.startsWith$default(str, "stackTrace=", false, 2, (Object) null)) {
                    if (!StringsKt.startsWith$default(str, "c=", false, 2, (Object) null)) {
                        break;
                    }
                    String strSubstring = str.substring(2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "");
                    numValueOf = Integer.valueOf(Integer.parseInt(StringsKt.trim((CharSequence) strSubstring).toString()));
                } else {
                    currencyIso4217Code3 = getCurrencyIso4217Code(str, "stackTrace=");
                }
            }
            if (AFAdRevenueData(numValueOf, currencyIso4217Code, currencyIso4217Code2, currencyIso4217Code3)) {
                return null;
            }
            Intrinsics.checkNotNull(currencyIso4217Code);
            Intrinsics.checkNotNull(currencyIso4217Code2);
            Intrinsics.checkNotNull(currencyIso4217Code3);
            Intrinsics.checkNotNull(numValueOf);
            return new AFc1cSDK(currencyIso4217Code, currencyIso4217Code2, currencyIso4217Code3, numValueOf.intValue());
        }

        private static String getCurrencyIso4217Code(String str, String str2) {
            String strSubstring = str.substring(str2.length());
            Intrinsics.checkNotNullExpressionValue(strSubstring, "");
            String string = StringsKt.trim((CharSequence) strSubstring).toString();
            Intrinsics.checkNotNullParameter(string, "");
            byte[] bytes = string.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "");
            Intrinsics.checkNotNullParameter(bytes, "");
            byte[] bArrDecode = Base64.decode(bytes, 2);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "");
            return new String(bArrDecode, Charsets.UTF_8);
        }
    }

    public AFc1cSDK(String str, String str2, String str3, int i) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        this.getRevenue = str;
        this.getCurrencyIso4217Code = str2;
        this.getMediationNetwork = str3;
        this.getMonetizationNetwork = i;
    }

    public /* synthetic */ AFc1cSDK(String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? 1 : i);
    }

    public final JSONObject AFAdRevenueData() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("label", this.getRevenue);
        jSONObject.put("hash_name", this.getCurrencyIso4217Code);
        jSONObject.put("st", this.getMediationNetwork);
        jSONObject.put("c", String.valueOf(this.getMonetizationNetwork));
        return jSONObject;
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof AFc1cSDK)) {
            return false;
        }
        AFc1cSDK aFc1cSDK = (AFc1cSDK) p0;
        return Intrinsics.areEqual(this.getRevenue, aFc1cSDK.getRevenue) && Intrinsics.areEqual(this.getCurrencyIso4217Code, aFc1cSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.getMediationNetwork, aFc1cSDK.getMediationNetwork) && this.getMonetizationNetwork == aFc1cSDK.getMonetizationNetwork;
    }

    public final String getMediationNetwork() {
        String str = this.getRevenue;
        Intrinsics.checkNotNullParameter(str, "");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "");
        String strEncodeToString = Base64.encodeToString(bytes, 2);
        String str2 = this.getCurrencyIso4217Code;
        Intrinsics.checkNotNullParameter(str2, "");
        byte[] bytes2 = str2.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes2, "");
        String strEncodeToString2 = Base64.encodeToString(bytes2, 2);
        String str3 = this.getMediationNetwork;
        Intrinsics.checkNotNullParameter(str3, "");
        byte[] bytes3 = str3.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes3, "");
        return "label=" + strEncodeToString + "\nhashName=" + strEncodeToString2 + "\nstackTrace=" + Base64.encodeToString(bytes3, 2) + "\nc=" + this.getMonetizationNetwork;
    }

    public final int hashCode() {
        return (((((this.getRevenue.hashCode() * 31) + this.getCurrencyIso4217Code.hashCode()) * 31) + this.getMediationNetwork.hashCode()) * 31) + Integer.hashCode(this.getMonetizationNetwork);
    }

    public final String toString() {
        return "ExceptionInfo(label=" + this.getRevenue + ", hashName=" + this.getCurrencyIso4217Code + ", stackTrace=" + this.getMediationNetwork + ", counter=" + this.getMonetizationNetwork + ")";
    }
}
