package com.appsflyer.internal.models;

import android.os.Process;
import android.text.TextUtils;
import android.widget.ExpandableListView;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA2x;
import com.google.common.base.Ascii;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0010\u0010\u0007R\u001a\u0010\u0011\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0007"}, d2 = {"Lcom/appsflyer/internal/models/DeferredItemReplacement;", "", "", "p0", "<init>", "(Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "copy", "(Ljava/lang/String;)Lcom/appsflyer/internal/models/DeferredItemReplacement;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", InAppPurchaseMetaData.KEY_PRODUCT_ID, "Ljava/lang/String;", "getProductId", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class DeferredItemReplacement {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String productId;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/DeferredItemReplacement;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/DeferredItemReplacement;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<DeferredItemReplacement> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int InAppPurchaseEvent = 1175623869;
        private static short[] getOneTimePurchaseOfferDetails = null;
        private static int getPackageName = 1598397555;
        private static int getQuantity = -354566758;
        private static int hashCode = 0;
        private static int stopObservingTransactions = 1;
        private static byte[] toJsonMap = {63, 113, 53, 10, 53, 17, Ascii.EM, 38, -60};

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(int i, int i2, byte b, short s, int i3, Object[] objArr) {
            int i4;
            int length;
            byte[] bArr;
            int i5 = 2 % 2;
            AFPurchaseConnectorA2x aFPurchaseConnectorA2x = new AFPurchaseConnectorA2x();
            StringBuilder sb = new StringBuilder();
            int i6 = i2 + ((int) (((long) InAppPurchaseEvent) ^ (-4208132002516133692L)));
            boolean z = i6 == -1;
            if (z) {
                int i7 = $11 + 91;
                $10 = i7 % 128;
                int i8 = i7 % 2;
                byte[] bArr2 = toJsonMap;
                if (bArr2 != null) {
                    int length2 = bArr2.length;
                    byte[] bArr3 = new byte[length2];
                    for (int i9 = 0; i9 < length2; i9++) {
                        bArr3[i9] = (byte) (((long) bArr2[i9]) ^ (-4208132002516133692L));
                    }
                    bArr2 = bArr3;
                }
                i6 = bArr2 != null ? (byte) (((byte) (((long) toJsonMap[i3 + ((int) (((long) getQuantity) ^ (-4208132002516133692L)))]) ^ (-4208132002516133692L))) + ((int) (((long) InAppPurchaseEvent) ^ (-4208132002516133692L)))) : (short) (((short) (((long) getOneTimePurchaseOfferDetails[i3 + ((int) (((long) getQuantity) ^ (-4208132002516133692L)))]) ^ (-4208132002516133692L))) + ((int) (((long) InAppPurchaseEvent) ^ (-4208132002516133692L))));
            }
            if (i6 > 0) {
                int i10 = ((i3 + i6) - 2) + ((int) (((long) getQuantity) ^ (-4208132002516133692L)));
                if (z) {
                    i4 = 1;
                } else {
                    int i11 = $11 + 123;
                    $10 = i11 % 128;
                    int i12 = i11 % 2;
                    i4 = 0;
                }
                aFPurchaseConnectorA2x.getPackageName = i10 + i4;
                aFPurchaseConnectorA2x.InAppPurchaseEvent = (char) (i + ((int) (((long) getPackageName) ^ (-4208132002516133692L))));
                sb.append(aFPurchaseConnectorA2x.InAppPurchaseEvent);
                aFPurchaseConnectorA2x.getQuantity = aFPurchaseConnectorA2x.InAppPurchaseEvent;
                byte[] bArr4 = toJsonMap;
                if (bArr4 != null) {
                    int i13 = $11 + 35;
                    $10 = i13 % 128;
                    if (i13 % 2 != 0) {
                        length = bArr4.length;
                        bArr = new byte[length];
                    } else {
                        length = bArr4.length;
                        bArr = new byte[length];
                    }
                    int i14 = 0;
                    while (i14 < length) {
                        int i15 = $10 + 89;
                        $11 = i15 % 128;
                        if (i15 % 2 == 0) {
                            bArr[i14] = (byte) (((long) bArr4[i14]) | (-4208132002516133692L));
                            i14 %= 1;
                        } else {
                            bArr[i14] = (byte) (((long) bArr4[i14]) ^ (-4208132002516133692L));
                            i14++;
                        }
                    }
                    bArr4 = bArr;
                }
                boolean z2 = bArr4 != null;
                aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails = 1;
                while (aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails < i6) {
                    if (z2) {
                        byte[] bArr5 = toJsonMap;
                        int i16 = aFPurchaseConnectorA2x.getPackageName;
                        aFPurchaseConnectorA2x.getPackageName = i16 - 1;
                        aFPurchaseConnectorA2x.InAppPurchaseEvent = (char) (aFPurchaseConnectorA2x.getQuantity + (((byte) (((byte) (((long) bArr5[i16]) ^ (-4208132002516133692L))) + s)) ^ b));
                    } else {
                        short[] sArr = getOneTimePurchaseOfferDetails;
                        int i17 = aFPurchaseConnectorA2x.getPackageName;
                        aFPurchaseConnectorA2x.getPackageName = i17 - 1;
                        aFPurchaseConnectorA2x.InAppPurchaseEvent = (char) (aFPurchaseConnectorA2x.getQuantity + (((short) (((short) (((long) sArr[i17]) ^ (-4208132002516133692L))) + s)) ^ b));
                        int i18 = $11 + 19;
                        $10 = i18 % 128;
                        int i19 = i18 % 2;
                    }
                    sb.append(aFPurchaseConnectorA2x.InAppPurchaseEvent);
                    aFPurchaseConnectorA2x.getQuantity = aFPurchaseConnectorA2x.InAppPurchaseEvent;
                    aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails++;
                }
            }
            objArr[0] = sb.toString();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final DeferredItemReplacement fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a((-425133128) - TextUtils.lastIndexOf("", '0', 0), TextUtils.lastIndexOf("", '0', 0, 0) - 111, (byte) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), (short) (ExpandableListView.getPackedPositionGroup(0L) + 32), 1395710626 - ((Process.getThreadPriority(0) + 20) >> 6), objArr);
            String strOptString = p0.optString(((String) objArr[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            DeferredItemReplacement deferredItemReplacement = new DeferredItemReplacement(strOptString);
            int i2 = stopObservingTransactions + 83;
            hashCode = i2 % 128;
            if (i2 % 2 == 0) {
                return deferredItemReplacement;
            }
            throw null;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ DeferredItemReplacement fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = hashCode + 33;
            stopObservingTransactions = i2 % 128;
            if (i2 % 2 != 0) {
                return fromJson(jSONObject);
            }
            fromJson(jSONObject);
            throw null;
        }
    }

    public DeferredItemReplacement(String str) {
        Intrinsics.checkNotNullParameter(str, "");
        this.productId = str;
    }

    public static /* synthetic */ DeferredItemReplacement copy$default(DeferredItemReplacement deferredItemReplacement, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deferredItemReplacement.productId;
        }
        return deferredItemReplacement.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    public final DeferredItemReplacement copy(String p0) {
        Intrinsics.checkNotNullParameter(p0, "");
        return new DeferredItemReplacement(p0);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        return (p0 instanceof DeferredItemReplacement) && Intrinsics.areEqual(this.productId, ((DeferredItemReplacement) p0).productId);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final int hashCode() {
        return this.productId.hashCode();
    }

    public final String toString() {
        return "DeferredItemReplacement(productId=" + this.productId + ")";
    }
}
