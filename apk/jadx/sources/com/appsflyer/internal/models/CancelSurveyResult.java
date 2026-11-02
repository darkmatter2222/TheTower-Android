package com.appsflyer.internal.models;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1k;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\t\u0010\bJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0012\u0010\bR\u001a\u0010\u0013\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\bR\u001a\u0010\u0016\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0017\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/CancelSurveyResult;", "", "", "p0", "p1", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/CancelSurveyResult;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "reason", "Ljava/lang/String;", "getReason", "reasonUserInput", "getReasonUserInput", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class CancelSurveyResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String reason;
    private final String reasonUserInput;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/CancelSurveyResult;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CancelSurveyResult;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<CancelSurveyResult> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getQuantity = 1;
        private static int toJsonMap;
        private static char[] getPackageName = {50311, 50336, 50308, 50310, 50333, 50331, 50364, 50315, 50330, 50309, 50332, 50313, 50329, 50314, 50312, 50316};
        private static char InAppPurchaseEvent = 61815;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(byte b, int i, String str, Object[] objArr) {
            int i2;
            int i3 = 2 % 2;
            int i4 = $11;
            int i5 = i4 + 5;
            $10 = i5 % 128;
            int i6 = i5 % 2;
            Object charArray = str;
            if (str != null) {
                int i7 = i4 + 49;
                $10 = i7 % 128;
                int i8 = i7 % 2;
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            AFPurchaseConnectorA1k aFPurchaseConnectorA1k = new AFPurchaseConnectorA1k();
            char[] cArr2 = getPackageName;
            if (cArr2 != null) {
                int i9 = $10 + 25;
                $11 = i9 % 128;
                int i10 = i9 % 2;
                int length = cArr2.length;
                char[] cArr3 = new char[length];
                for (int i11 = 0; i11 < length; i11++) {
                    int i12 = $10 + 41;
                    $11 = i12 % 128;
                    if (i12 % 2 == 0) {
                        cArr3[i11] = (char) (((long) cArr2[i11]) ^ (-8783246495946182285L));
                    } else {
                        cArr3[i11] = (char) (((long) cArr2[i11]) ^ (-8783246495946182285L));
                    }
                }
                cArr2 = cArr3;
            }
            char c = (char) ((-8783246495946182285L) ^ ((long) InAppPurchaseEvent));
            char[] cArr4 = new char[i];
            if (i % 2 != 0) {
                i2 = i - 1;
                cArr4[i2] = (char) (cArr[i2] - b);
            } else {
                i2 = i;
            }
            if (i2 > 1) {
                int i13 = $11 + 19;
                $10 = i13 % 128;
                int i14 = i13 % 2;
                aFPurchaseConnectorA1k.getQuantity = 0;
                while (aFPurchaseConnectorA1k.getQuantity < i2) {
                    aFPurchaseConnectorA1k.getPackageName = cArr[aFPurchaseConnectorA1k.getQuantity];
                    aFPurchaseConnectorA1k.getOneTimePurchaseOfferDetails = cArr[aFPurchaseConnectorA1k.getQuantity + 1];
                    if (aFPurchaseConnectorA1k.getPackageName == aFPurchaseConnectorA1k.getOneTimePurchaseOfferDetails) {
                        cArr4[aFPurchaseConnectorA1k.getQuantity] = (char) (aFPurchaseConnectorA1k.getPackageName - b);
                        cArr4[aFPurchaseConnectorA1k.getQuantity + 1] = (char) (aFPurchaseConnectorA1k.getOneTimePurchaseOfferDetails - b);
                    } else {
                        aFPurchaseConnectorA1k.InAppPurchaseEvent = aFPurchaseConnectorA1k.getPackageName / c;
                        aFPurchaseConnectorA1k.hashCode = aFPurchaseConnectorA1k.getPackageName % c;
                        aFPurchaseConnectorA1k.toJsonMap = aFPurchaseConnectorA1k.getOneTimePurchaseOfferDetails / c;
                        aFPurchaseConnectorA1k.stopObservingTransactions = aFPurchaseConnectorA1k.getOneTimePurchaseOfferDetails % c;
                        if (aFPurchaseConnectorA1k.hashCode == aFPurchaseConnectorA1k.stopObservingTransactions) {
                            aFPurchaseConnectorA1k.InAppPurchaseEvent = ((aFPurchaseConnectorA1k.InAppPurchaseEvent + c) - 1) % c;
                            aFPurchaseConnectorA1k.toJsonMap = ((aFPurchaseConnectorA1k.toJsonMap + c) - 1) % c;
                            int i15 = (aFPurchaseConnectorA1k.InAppPurchaseEvent * c) + aFPurchaseConnectorA1k.hashCode;
                            int i16 = (aFPurchaseConnectorA1k.toJsonMap * c) + aFPurchaseConnectorA1k.stopObservingTransactions;
                            cArr4[aFPurchaseConnectorA1k.getQuantity] = cArr2[i15];
                            cArr4[aFPurchaseConnectorA1k.getQuantity + 1] = cArr2[i16];
                        } else if (aFPurchaseConnectorA1k.InAppPurchaseEvent == aFPurchaseConnectorA1k.toJsonMap) {
                            aFPurchaseConnectorA1k.hashCode = ((aFPurchaseConnectorA1k.hashCode + c) - 1) % c;
                            aFPurchaseConnectorA1k.stopObservingTransactions = ((aFPurchaseConnectorA1k.stopObservingTransactions + c) - 1) % c;
                            int i17 = (aFPurchaseConnectorA1k.InAppPurchaseEvent * c) + aFPurchaseConnectorA1k.hashCode;
                            int i18 = (aFPurchaseConnectorA1k.toJsonMap * c) + aFPurchaseConnectorA1k.stopObservingTransactions;
                            cArr4[aFPurchaseConnectorA1k.getQuantity] = cArr2[i17];
                            cArr4[aFPurchaseConnectorA1k.getQuantity + 1] = cArr2[i18];
                        } else {
                            int i19 = (aFPurchaseConnectorA1k.InAppPurchaseEvent * c) + aFPurchaseConnectorA1k.stopObservingTransactions;
                            int i20 = (aFPurchaseConnectorA1k.toJsonMap * c) + aFPurchaseConnectorA1k.hashCode;
                            cArr4[aFPurchaseConnectorA1k.getQuantity] = cArr2[i19];
                            cArr4[aFPurchaseConnectorA1k.getQuantity + 1] = cArr2[i20];
                        }
                    }
                    aFPurchaseConnectorA1k.getQuantity += 2;
                }
            }
            for (int i21 = 0; i21 < i; i21++) {
                cArr4[i21] = (char) (cArr4[i21] ^ 13722);
            }
            objArr[0] = new String(cArr4);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final CancelSurveyResult fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a((byte) (93 - View.resolveSize(0, 0)), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 6, "\u0007\r\f\n\u0000\u0001", objArr);
            String strOptString = p0.optString(((String) objArr[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Object[] objArr2 = new Object[1];
            a((byte) (75 - TextUtils.lastIndexOf("", '0')), TextUtils.indexOf((CharSequence) "", '0') + 16, "\u0007\r\f\n\u0000\u0001\u0004\n\r\u0007\u0002\u0001\u000e\b㘺", objArr2);
            String strOptString2 = p0.optString(((String) objArr2[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString2, "");
            CancelSurveyResult cancelSurveyResult = new CancelSurveyResult(strOptString, strOptString2);
            int i2 = toJsonMap + 23;
            getQuantity = i2 % 128;
            if (i2 % 2 != 0) {
                return cancelSurveyResult;
            }
            throw null;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* synthetic */ CancelSurveyResult fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = toJsonMap + 123;
            getQuantity = i2 % 128;
            if (i2 % 2 != 0) {
                return fromJson(jSONObject);
            }
            fromJson(jSONObject);
            Object obj = null;
            obj.hashCode();
            throw null;
        }
    }

    public CancelSurveyResult(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        this.reason = str;
        this.reasonUserInput = str2;
    }

    public static /* synthetic */ CancelSurveyResult copy$default(CancelSurveyResult cancelSurveyResult, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cancelSurveyResult.reason;
        }
        if ((i & 2) != 0) {
            str2 = cancelSurveyResult.reasonUserInput;
        }
        return cancelSurveyResult.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReasonUserInput() {
        return this.reasonUserInput;
    }

    public final CancelSurveyResult copy(String p0, String p1) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p1, "");
        return new CancelSurveyResult(p0, p1);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof CancelSurveyResult)) {
            return false;
        }
        CancelSurveyResult cancelSurveyResult = (CancelSurveyResult) p0;
        return Intrinsics.areEqual(this.reason, cancelSurveyResult.reason) && Intrinsics.areEqual(this.reasonUserInput, cancelSurveyResult.reasonUserInput);
    }

    public final String getReason() {
        return this.reason;
    }

    public final String getReasonUserInput() {
        return this.reasonUserInput;
    }

    public final int hashCode() {
        return (this.reason.hashCode() * 31) + this.reasonUserInput.hashCode();
    }

    public final String toString() {
        return "CancelSurveyResult(reason=" + this.reason + ", reasonUserInput=" + this.reasonUserInput + ")";
    }
}
