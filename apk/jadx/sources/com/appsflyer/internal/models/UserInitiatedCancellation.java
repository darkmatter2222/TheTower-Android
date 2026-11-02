package com.appsflyer.internal.models;

import android.graphics.Color;
import android.telephony.cdma.CdmaCellLocation;
import android.view.ViewConfiguration;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1i;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001b\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÇ\u0003¢\u0006\u0004\b\n\u0010\u000bJ&\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004HÇ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004H×\u0001¢\u0006\u0004\b\u0014\u0010\u000bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\tR\u001a\u0010\u0018\u001a\u00020\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u000b"}, d2 = {"Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "", "Lcom/appsflyer/internal/models/CancelSurveyResult;", "p0", "", "p1", "<init>", "(Lcom/appsflyer/internal/models/CancelSurveyResult;Ljava/lang/String;)V", "component1", "()Lcom/appsflyer/internal/models/CancelSurveyResult;", "component2", "()Ljava/lang/String;", "copy", "(Lcom/appsflyer/internal/models/CancelSurveyResult;Ljava/lang/String;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "cancelSurveyResult", "Lcom/appsflyer/internal/models/CancelSurveyResult;", "getCancelSurveyResult", "cancelTime", "Ljava/lang/String;", "getCancelTime", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class UserInitiatedCancellation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final CancelSurveyResult cancelSurveyResult;
    private final String cancelTime;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<UserInitiatedCancellation> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int InAppPurchaseEvent = 1;
        private static long getOneTimePurchaseOfferDetails = 409721173320367058L;
        private static int getPackageName = 0;
        private static int getQuantity = -2135458862;
        private static char toJsonMap = 40031;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(String str, String str2, int i, char c, String str3, Object[] objArr) {
            char[] charArray;
            int i2 = 2 % 2;
            int i3 = $11 + 83;
            $10 = i3 % 128;
            int i4 = i3 % 2;
            char[] charArray2 = str3 != null ? str3.toCharArray() : str3;
            char[] charArray3 = str2 != null ? str2.toCharArray() : str2;
            if (str != null) {
                charArray = str.toCharArray();
                int i5 = $10 + 75;
                $11 = i5 % 128;
                int i6 = i5 % 2;
            } else {
                charArray = str;
            }
            char[] cArr = charArray;
            AFPurchaseConnectorA1i aFPurchaseConnectorA1i = new AFPurchaseConnectorA1i();
            int length = charArray3.length;
            char[] cArr2 = new char[length];
            int length2 = cArr.length;
            char[] cArr3 = new char[length2];
            System.arraycopy(charArray3, 0, cArr2, 0, length);
            System.arraycopy(cArr, 0, cArr3, 0, length2);
            cArr2[0] = (char) (cArr2[0] ^ c);
            cArr3[2] = (char) (cArr3[2] + ((char) i));
            int length3 = charArray2.length;
            char[] cArr4 = new char[length3];
            aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails = 0;
            while (aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails < length3) {
                int i7 = $11 + 59;
                $10 = i7 % 128;
                int i8 = i7 % 2;
                int i9 = (aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails + 2) % 4;
                int i10 = (aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails + 3) % 4;
                aFPurchaseConnectorA1i.InAppPurchaseEvent = (char) (((cArr2[aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails % 4] * 32718) + cArr3[i9]) % 65535);
                cArr3[i10] = (char) (((cArr2[i10] * 32718) + cArr3[i9]) / 65535);
                cArr2[i10] = aFPurchaseConnectorA1i.InAppPurchaseEvent;
                cArr4[aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails] = (char) (((((long) (cArr2[i10] ^ charArray2[aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails])) ^ (getOneTimePurchaseOfferDetails ^ 409721173320367058L)) ^ ((long) ((int) (((long) getQuantity) ^ 409721173320367058L)))) ^ ((long) ((char) (((long) toJsonMap) ^ 409721173320367058L))));
                aFPurchaseConnectorA1i.getOneTimePurchaseOfferDetails++;
            }
            objArr[0] = new String(cArr4);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final UserInitiatedCancellation fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a("\u0000\u0000\u0000\u0000", "㐞ᩔ叨즪", (CdmaCellLocation.convertQuartSecToDecDegrees(0) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 0 : -1)), (char) ((ViewConfiguration.getScrollBarSize() >> 8) + 43603), "Гꪇ\uf27f遣噋ꏅ漕홚\ue953芯滀觲未昔ன㋸\uf37b\uea98", objArr);
            CancelSurveyResult cancelSurveyResult = (CancelSurveyResult) SubscriptionPurchaseKt.toObject(p0, ((String) objArr[0]).intern(), CancelSurveyResult.INSTANCE);
            Object[] objArr2 = new Object[1];
            a("\u0000\u0000\u0000\u0000", "瀋뚃텣ꢺ", ViewConfiguration.getPressedStateDuration() >> 16, (char) Color.blue(0), "㈧渨\udcc0捹⋠鲊욢\ue3b0̈軧", objArr2);
            String strOptString = p0.optString(((String) objArr2[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            UserInitiatedCancellation userInitiatedCancellation = new UserInitiatedCancellation(cancelSurveyResult, strOptString);
            int i2 = InAppPurchaseEvent + 103;
            getPackageName = i2 % 128;
            int i3 = i2 % 2;
            return userInitiatedCancellation;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* synthetic */ UserInitiatedCancellation fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = getPackageName + 99;
            InAppPurchaseEvent = i2 % 128;
            if (i2 % 2 != 0) {
                return fromJson(jSONObject);
            }
            fromJson(jSONObject);
            Object obj = null;
            obj.hashCode();
            throw null;
        }
    }

    public UserInitiatedCancellation(CancelSurveyResult cancelSurveyResult, String str) {
        Intrinsics.checkNotNullParameter(str, "");
        this.cancelSurveyResult = cancelSurveyResult;
        this.cancelTime = str;
    }

    public static /* synthetic */ UserInitiatedCancellation copy$default(UserInitiatedCancellation userInitiatedCancellation, CancelSurveyResult cancelSurveyResult, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            cancelSurveyResult = userInitiatedCancellation.cancelSurveyResult;
        }
        if ((i & 2) != 0) {
            str = userInitiatedCancellation.cancelTime;
        }
        return userInitiatedCancellation.copy(cancelSurveyResult, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CancelSurveyResult getCancelSurveyResult() {
        return this.cancelSurveyResult;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCancelTime() {
        return this.cancelTime;
    }

    public final UserInitiatedCancellation copy(CancelSurveyResult p0, String p1) {
        Intrinsics.checkNotNullParameter(p1, "");
        return new UserInitiatedCancellation(p0, p1);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof UserInitiatedCancellation)) {
            return false;
        }
        UserInitiatedCancellation userInitiatedCancellation = (UserInitiatedCancellation) p0;
        return Intrinsics.areEqual(this.cancelSurveyResult, userInitiatedCancellation.cancelSurveyResult) && Intrinsics.areEqual(this.cancelTime, userInitiatedCancellation.cancelTime);
    }

    public final CancelSurveyResult getCancelSurveyResult() {
        return this.cancelSurveyResult;
    }

    public final String getCancelTime() {
        return this.cancelTime;
    }

    public final int hashCode() {
        CancelSurveyResult cancelSurveyResult = this.cancelSurveyResult;
        return ((cancelSurveyResult == null ? 0 : cancelSurveyResult.hashCode()) * 31) + this.cancelTime.hashCode();
    }

    public final String toString() {
        return "UserInitiatedCancellation(cancelSurveyResult=" + this.cancelSurveyResult + ", cancelTime=" + this.cancelTime + ")";
    }
}
