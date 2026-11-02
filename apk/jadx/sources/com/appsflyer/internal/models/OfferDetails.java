package com.appsflyer.internal.models;

import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1f;
import com.tapjoy.TapjoyConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB+\b\u0000\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÇ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0003HÇ\u0003¢\u0006\u0004\b\r\u0010\fJ8\u0010\u000e\u001a\u00020\u00002\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÇ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0003H×\u0001¢\u0006\u0004\b\u0016\u0010\fR\u001a\u0010\u0017\u001a\u00020\u00038\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\fR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0018\u001a\u0004\b\u001b\u0010\fR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\n"}, d2 = {"Lcom/appsflyer/internal/models/OfferDetails;", "", "", "", "p0", "p1", "p2", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/util/List;", "component2", "()Ljava/lang/String;", "component3", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/OfferDetails;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "basePlanId", "Ljava/lang/String;", "getBasePlanId", TapjoyConstants.TJC_PLACEMENT_OFFER_ID, "getOfferId", "offerTags", "Ljava/util/List;", "getOfferTags", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class OfferDetails {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String basePlanId;
    private final String offerId;
    private final List<String> offerTags;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/OfferDetails$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/OfferDetails;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/OfferDetails;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<OfferDetails> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static char InAppPurchaseEvent = 35330;
        private static int equals = 1;
        private static char getOneTimePurchaseOfferDetails = 2122;
        private static char getPackageName = 50124;
        private static int getQuantity = 0;
        private static char toJsonMap = 5133;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(String str, int i, Object[] objArr) {
            char[] charArray;
            int i2 = 2 % 2;
            if (str != null) {
                int i3 = $10 + 89;
                $11 = i3 % 128;
                if (i3 % 2 == 0) {
                    str.toCharArray();
                    Object obj = null;
                    obj.hashCode();
                    throw null;
                }
                charArray = str.toCharArray();
            } else {
                charArray = str;
            }
            char[] cArr = charArray;
            AFPurchaseConnectorA1f aFPurchaseConnectorA1f = new AFPurchaseConnectorA1f();
            char[] cArr2 = new char[cArr.length];
            aFPurchaseConnectorA1f.getQuantity = 0;
            char[] cArr3 = new char[2];
            int i4 = $10 + 41;
            $11 = i4 % 128;
            int i5 = i4 % 2;
            while (aFPurchaseConnectorA1f.getQuantity < cArr.length) {
                int i6 = $11 + 123;
                $10 = i6 % 128;
                if (i6 % 2 != 0) {
                    cArr3[1] = cArr[aFPurchaseConnectorA1f.getQuantity];
                    cArr3[1] = cArr[aFPurchaseConnectorA1f.getQuantity << 1];
                } else {
                    cArr3[0] = cArr[aFPurchaseConnectorA1f.getQuantity];
                    cArr3[1] = cArr[aFPurchaseConnectorA1f.getQuantity + 1];
                }
                int i7 = 58224;
                for (int i8 = 0; i8 < 16; i8++) {
                    int i9 = $10 + 87;
                    $11 = i9 % 128;
                    int i10 = i9 % 2;
                    char c = cArr3[1];
                    char c2 = cArr3[0];
                    char c3 = (char) (c - (((c2 + i7) ^ ((c2 << 4) + ((char) (((long) getOneTimePurchaseOfferDetails) ^ (-177179452616573881L))))) ^ ((c2 >>> 5) + ((char) (((long) getPackageName) ^ (-177179452616573881L))))));
                    cArr3[1] = c3;
                    cArr3[0] = (char) (c2 - (((c3 >>> 5) + ((char) (((long) toJsonMap) ^ (-177179452616573881L)))) ^ ((c3 + i7) ^ ((c3 << 4) + ((char) (((long) InAppPurchaseEvent) ^ (-177179452616573881L)))))));
                    i7 -= 40503;
                }
                cArr2[aFPurchaseConnectorA1f.getQuantity] = cArr3[0];
                cArr2[aFPurchaseConnectorA1f.getQuantity + 1] = cArr3[1];
                aFPurchaseConnectorA1f.getQuantity += 2;
            }
            objArr[0] = new String(cArr2, 0, i);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final OfferDetails fromJson(JSONObject p0) {
            List list;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a("㯾쇟抩曭蔀ﾶ䒽襁䗝儙", 9 - (ViewConfiguration.getLongPressTimeout() >> 16), objArr);
            JSONArray jSONArrayOptJSONArray = p0.optJSONArray(((String) objArr[0]).intern());
            if (jSONArrayOptJSONArray != null) {
                Intrinsics.checkNotNullExpressionValue(jSONArrayOptJSONArray, "");
                list = SubscriptionPurchaseKt.toList(jSONArrayOptJSONArray);
            } else {
                list = null;
            }
            Object[] objArr2 = new Object[1];
            a("ﻷ蛅ⷔ憈ꇛ仁㳠ø惹\ud837", 10 - TextUtils.indexOf("", "", 0), objArr2);
            String strOptString = p0.optString(((String) objArr2[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Object[] objArr3 = new Object[1];
            a("㯾쇟抩曭\u193f\u20f3Ḝ⤩", 7 - ExpandableListView.getPackedPositionGroup(0L), objArr3);
            return new OfferDetails(list, strOptString, (String) SubscriptionPurchaseKt.getNullable(p0, ((String) objArr3[0]).intern()));
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ OfferDetails fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = getQuantity + 67;
            equals = i2 % 128;
            int i3 = i2 % 2;
            OfferDetails offerDetailsFromJson = fromJson(jSONObject);
            int i4 = equals + 35;
            getQuantity = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 43 / 0;
            }
            return offerDetailsFromJson;
        }
    }

    public OfferDetails(List<String> list, String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "");
        this.offerTags = list;
        this.basePlanId = str;
        this.offerId = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfferDetails copy$default(OfferDetails offerDetails, List list, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = offerDetails.offerTags;
        }
        if ((i & 2) != 0) {
            str = offerDetails.basePlanId;
        }
        if ((i & 4) != 0) {
            str2 = offerDetails.offerId;
        }
        return offerDetails.copy(list, str, str2);
    }

    public final List<String> component1() {
        return this.offerTags;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBasePlanId() {
        return this.basePlanId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOfferId() {
        return this.offerId;
    }

    public final OfferDetails copy(List<String> p0, String p1, String p2) {
        Intrinsics.checkNotNullParameter(p1, "");
        return new OfferDetails(p0, p1, p2);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof OfferDetails)) {
            return false;
        }
        OfferDetails offerDetails = (OfferDetails) p0;
        return Intrinsics.areEqual(this.offerTags, offerDetails.offerTags) && Intrinsics.areEqual(this.basePlanId, offerDetails.basePlanId) && Intrinsics.areEqual(this.offerId, offerDetails.offerId);
    }

    public final String getBasePlanId() {
        return this.basePlanId;
    }

    public final String getOfferId() {
        return this.offerId;
    }

    public final List<String> getOfferTags() {
        return this.offerTags;
    }

    public final int hashCode() {
        List<String> list = this.offerTags;
        int iHashCode = (((list == null ? 0 : list.hashCode()) * 31) + this.basePlanId.hashCode()) * 31;
        String str = this.offerId;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "OfferDetails(offerTags=" + this.offerTags + ", basePlanId=" + this.basePlanId + ", offerId=" + this.offerId + ")";
    }
}
