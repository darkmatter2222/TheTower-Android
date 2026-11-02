package com.appsflyer.internal.models;

import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1b;
import com.ironsource.InterfaceC3669k1;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u0000 #2\u00020\u0001:\u0001#B+\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJ:\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0018\u0010\u000bR\u001a\u0010\u0019\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u000bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u000bR\u001a\u0010!\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u000b"}, d2 = {"Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;", "", "", "p0", "Lcom/appsflyer/internal/models/Money;", "p1", "p2", "p3", "<init>", "(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "()Lcom/appsflyer/internal/models/Money;", "component3", "component4", "copy", "(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "expectedNewPriceChargeTime", "Ljava/lang/String;", "getExpectedNewPriceChargeTime", "newPrice", "Lcom/appsflyer/internal/models/Money;", "getNewPrice", "priceChangeMode", "getPriceChangeMode", "priceChangeState", "getPriceChangeState", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class SubscriptionItemPriceChangeDetails {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String expectedNewPriceChargeTime;
    private final Money newPrice;
    private final String priceChangeMode;
    private final String priceChangeState;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<SubscriptionItemPriceChangeDetails> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getQuantity = 0;
        private static int hashCode = 1;
        private static char[] getPackageName = {34824, 35063, 35071, 34826, 35067, 34827, 34849, 35062, 34847, 35069, 34820, 34858, 34823, 34828, 34822, 34843, 34816, 34817, 34848, 35070, 34842};
        private static int toJsonMap = -2120185745;
        private static boolean getOneTimePurchaseOfferDetails = true;
        private static boolean InAppPurchaseEvent = true;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(int[] iArr, String str, int i, String str2, Object[] objArr) throws UnsupportedEncodingException {
            char[] cArr;
            String str3 = str2;
            int i2 = 2 % 2;
            Object bytes = str3;
            if (str3 != null) {
                int i3 = $10 + 15;
                $11 = i3 % 128;
                if (i3 % 2 == 0) {
                    str3.getBytes("ISO-8859-1");
                    throw null;
                }
                bytes = str3.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            char[] charArray = str != null ? str.toCharArray() : str;
            AFPurchaseConnectorA1b aFPurchaseConnectorA1b = new AFPurchaseConnectorA1b();
            char[] cArr2 = getPackageName;
            if (cArr2 != null) {
                int i4 = $11 + 87;
                $10 = i4 % 128;
                int i5 = i4 % 2;
                int length = cArr2.length;
                char[] cArr3 = new char[length];
                for (int i6 = 0; i6 < length; i6++) {
                    cArr3[i6] = (char) (((long) cArr2[i6]) ^ (-4643703481320830850L));
                }
                cArr2 = cArr3;
            }
            int i7 = (int) ((-4643703481320830850L) ^ ((long) toJsonMap));
            if (InAppPurchaseEvent) {
                int i8 = $11 + 109;
                $10 = i8 % 128;
                if (i8 % 2 != 0) {
                    aFPurchaseConnectorA1b.getPackageName = bArr.length;
                    cArr = new char[aFPurchaseConnectorA1b.getPackageName];
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 1;
                } else {
                    aFPurchaseConnectorA1b.getPackageName = bArr.length;
                    cArr = new char[aFPurchaseConnectorA1b.getPackageName];
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
                }
                while (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails < aFPurchaseConnectorA1b.getPackageName) {
                    cArr[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[bArr[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] + i] - i7);
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
                }
                String str4 = new String(cArr);
                int i9 = $11 + 43;
                $10 = i9 % 128;
                if (i9 % 2 != 0) {
                    throw null;
                }
                objArr[0] = str4;
                return;
            }
            if (getOneTimePurchaseOfferDetails) {
                aFPurchaseConnectorA1b.getPackageName = charArray.length;
                char[] cArr4 = new char[aFPurchaseConnectorA1b.getPackageName];
                aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
                while (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails < aFPurchaseConnectorA1b.getPackageName) {
                    int i10 = $10 + 123;
                    $11 = i10 % 128;
                    int i11 = i10 % 2;
                    cArr4[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[charArray[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] - i] - i7);
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
                }
                objArr[0] = new String(cArr4);
                return;
            }
            aFPurchaseConnectorA1b.getPackageName = iArr.length;
            char[] cArr5 = new char[aFPurchaseConnectorA1b.getPackageName];
            while (true) {
                aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
                while (true) {
                    if (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails >= aFPurchaseConnectorA1b.getPackageName) {
                        objArr[0] = new String(cArr5);
                        return;
                    }
                    int i12 = $11 + 75;
                    $10 = i12 % 128;
                    if (i12 % 2 != 0) {
                        break;
                    }
                    cArr5[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[iArr[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] - i] - i7);
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
                }
                cArr5[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[iArr[(aFPurchaseConnectorA1b.getPackageName >>> 1) >> aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] - i] - i7);
                int i13 = aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final SubscriptionItemPriceChangeDetails fromJson(JSONObject p0) throws JSONException, UnsupportedEncodingException {
            Money moneyFromJson;
            int i = 2 % 2;
            int i2 = hashCode + 83;
            getQuantity = i2 % 128;
            int i3 = i2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a(null, null, 127 - (ViewConfiguration.getLongPressTimeout() >> 16), "\u0081\u0091\u008b\u0090\u0081\u008f\u008a\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0089\u0088\u0081\u0087\u0086\u0081\u0085\u0084\u0081\u0083\u0082\u0081", objArr);
            String strOptString = p0.optString(((String) objArr[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Object[] objArr2 = new Object[1];
            a(null, null, (ViewConfiguration.getFadingEdgeLength() >> 16) + 127, "\u0081\u0084\u008b\u008a\u0089\u0088\u0081\u0092", objArr2);
            JSONObject jSONObjectOptJSONObject = p0.optJSONObject(((String) objArr2[0]).intern());
            if (jSONObjectOptJSONObject != null) {
                int i4 = getQuantity + InterfaceC3669k1.d.b.k;
                hashCode = i4 % 128;
                int i5 = i4 % 2;
                Intrinsics.checkNotNullExpressionValue(jSONObjectOptJSONObject, "");
                moneyFromJson = Money.INSTANCE.fromJson(jSONObjectOptJSONObject);
            } else {
                int i6 = hashCode + 83;
                getQuantity = i6 % 128;
                int i7 = i6 % 2;
                moneyFromJson = null;
            }
            Object[] objArr3 = new Object[1];
            a(null, null, 127 - View.MeasureSpec.getMode(0), "\u0081\u0086\u0094\u0093\u0081\u008f\u0092\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0083", objArr3);
            String strOptString2 = p0.optString(((String) objArr3[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString2, "");
            Object[] objArr4 = new Object[1];
            a(null, null, 127 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), "\u0081\u0085\u008e\u0085\u0095\u0081\u008f\u0092\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0083", objArr4);
            String strOptString3 = p0.optString(((String) objArr4[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString3, "");
            return new SubscriptionItemPriceChangeDetails(strOptString, moneyFromJson, strOptString2, strOptString3);
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ SubscriptionItemPriceChangeDetails fromJson(JSONObject jSONObject) throws JSONException, UnsupportedEncodingException {
            int i = 2 % 2;
            int i2 = getQuantity + 111;
            hashCode = i2 % 128;
            int i3 = i2 % 2;
            SubscriptionItemPriceChangeDetails subscriptionItemPriceChangeDetailsFromJson = fromJson(jSONObject);
            int i4 = getQuantity + 55;
            hashCode = i4 % 128;
            int i5 = i4 % 2;
            return subscriptionItemPriceChangeDetailsFromJson;
        }
    }

    public SubscriptionItemPriceChangeDetails(String str, Money money, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        this.expectedNewPriceChargeTime = str;
        this.newPrice = money;
        this.priceChangeMode = str2;
        this.priceChangeState = str3;
    }

    public static /* synthetic */ SubscriptionItemPriceChangeDetails copy$default(SubscriptionItemPriceChangeDetails subscriptionItemPriceChangeDetails, String str, Money money, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriptionItemPriceChangeDetails.expectedNewPriceChargeTime;
        }
        if ((i & 2) != 0) {
            money = subscriptionItemPriceChangeDetails.newPrice;
        }
        if ((i & 4) != 0) {
            str2 = subscriptionItemPriceChangeDetails.priceChangeMode;
        }
        if ((i & 8) != 0) {
            str3 = subscriptionItemPriceChangeDetails.priceChangeState;
        }
        return subscriptionItemPriceChangeDetails.copy(str, money, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getExpectedNewPriceChargeTime() {
        return this.expectedNewPriceChargeTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Money getNewPrice() {
        return this.newPrice;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPriceChangeMode() {
        return this.priceChangeMode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPriceChangeState() {
        return this.priceChangeState;
    }

    public final SubscriptionItemPriceChangeDetails copy(String p0, Money p1, String p2, String p3) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p2, "");
        Intrinsics.checkNotNullParameter(p3, "");
        return new SubscriptionItemPriceChangeDetails(p0, p1, p2, p3);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof SubscriptionItemPriceChangeDetails)) {
            return false;
        }
        SubscriptionItemPriceChangeDetails subscriptionItemPriceChangeDetails = (SubscriptionItemPriceChangeDetails) p0;
        return Intrinsics.areEqual(this.expectedNewPriceChargeTime, subscriptionItemPriceChangeDetails.expectedNewPriceChargeTime) && Intrinsics.areEqual(this.newPrice, subscriptionItemPriceChangeDetails.newPrice) && Intrinsics.areEqual(this.priceChangeMode, subscriptionItemPriceChangeDetails.priceChangeMode) && Intrinsics.areEqual(this.priceChangeState, subscriptionItemPriceChangeDetails.priceChangeState);
    }

    public final String getExpectedNewPriceChargeTime() {
        return this.expectedNewPriceChargeTime;
    }

    public final Money getNewPrice() {
        return this.newPrice;
    }

    public final String getPriceChangeMode() {
        return this.priceChangeMode;
    }

    public final String getPriceChangeState() {
        return this.priceChangeState;
    }

    public final int hashCode() {
        int iHashCode = this.expectedNewPriceChargeTime.hashCode() * 31;
        Money money = this.newPrice;
        return ((((iHashCode + (money == null ? 0 : money.hashCode())) * 31) + this.priceChangeMode.hashCode()) * 31) + this.priceChangeState.hashCode();
    }

    public final String toString() {
        return "SubscriptionItemPriceChangeDetails(expectedNewPriceChargeTime=" + this.expectedNewPriceChargeTime + ", newPrice=" + this.newPrice + ", priceChangeMode=" + this.priceChangeMode + ", priceChangeState=" + this.priceChangeState + ")";
    }
}
