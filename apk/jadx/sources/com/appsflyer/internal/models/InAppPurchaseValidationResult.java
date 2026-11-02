package com.appsflyer.internal.models;

import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1b;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\b\u0018\u0000 #2\u00020\u0001:\u0001#B%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ2\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÇ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0012\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017H×\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u000fR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\rR\u001a\u0010 \u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010\u000b"}, d2 = {"Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;", "", "", "p0", "Lcom/appsflyer/internal/models/ProductPurchase;", "p1", "Lcom/appsflyer/internal/models/ValidationFailureData;", "p2", "<init>", "(ZLcom/appsflyer/internal/models/ProductPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)V", "component1", "()Z", "component2", "()Lcom/appsflyer/internal/models/ProductPurchase;", "component3", "()Lcom/appsflyer/internal/models/ValidationFailureData;", "copy", "(ZLcom/appsflyer/internal/models/ProductPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "failureData", "Lcom/appsflyer/internal/models/ValidationFailureData;", "getFailureData", "productPurchase", "Lcom/appsflyer/internal/models/ProductPurchase;", "getProductPurchase", "success", "Z", "getSuccess", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class InAppPurchaseValidationResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ValidationFailureData failureData;
    private final ProductPurchase productPurchase;
    private final boolean success;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<InAppPurchaseValidationResult> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getPackageName = 0;
        private static int hashCode = 1;
        private static char[] InAppPurchaseEvent = {35046, 35061, 35047, 35045, 35052, 35044, 35048, 35051, 35060, 35063, 35067, 35056, 35065, 35058, 35057};
        private static int toJsonMap = -2120185768;
        private static boolean getQuantity = true;
        private static boolean getOneTimePurchaseOfferDetails = true;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(int[] iArr, String str, int i, String str2, Object[] objArr) throws UnsupportedEncodingException {
            int i2 = 2 % 2;
            int i3 = $10 + 47;
            $11 = i3 % 128;
            Object bytes = str2;
            if (i3 % 2 == 0) {
                throw null;
            }
            if (str2 != null) {
                bytes = str2.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            AFPurchaseConnectorA1b aFPurchaseConnectorA1b = new AFPurchaseConnectorA1b();
            char[] cArr2 = InAppPurchaseEvent;
            if (cArr2 != null) {
                int length = cArr2.length;
                char[] cArr3 = new char[length];
                int i4 = $11 + 17;
                $10 = i4 % 128;
                int i5 = i4 % 2;
                for (int i6 = 0; i6 < length; i6++) {
                    cArr3[i6] = (char) (((long) cArr2[i6]) ^ (-4643703481320830850L));
                }
                cArr2 = cArr3;
            }
            int i7 = (int) ((-4643703481320830850L) ^ ((long) toJsonMap));
            if (getOneTimePurchaseOfferDetails) {
                int i8 = $10 + 11;
                $11 = i8 % 128;
                int i9 = i8 % 2;
                aFPurchaseConnectorA1b.getPackageName = bArr.length;
                char[] cArr4 = new char[aFPurchaseConnectorA1b.getPackageName];
                aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
                while (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails < aFPurchaseConnectorA1b.getPackageName) {
                    cArr4[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[bArr[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] + i] - i7);
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
                }
                objArr[0] = new String(cArr4);
                return;
            }
            if (getQuantity) {
                aFPurchaseConnectorA1b.getPackageName = cArr.length;
                char[] cArr5 = new char[aFPurchaseConnectorA1b.getPackageName];
                aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
                while (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails < aFPurchaseConnectorA1b.getPackageName) {
                    cArr5[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[cArr[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] - i] - i7);
                    aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
                }
                objArr[0] = new String(cArr5);
                return;
            }
            aFPurchaseConnectorA1b.getPackageName = iArr.length;
            char[] cArr6 = new char[aFPurchaseConnectorA1b.getPackageName];
            aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails = 0;
            int i10 = $11 + 85;
            $10 = i10 % 128;
            int i11 = i10 % 2;
            while (aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails < aFPurchaseConnectorA1b.getPackageName) {
                cArr6[aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] = (char) (cArr2[iArr[(aFPurchaseConnectorA1b.getPackageName - 1) - aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails] - i] - i7);
                aFPurchaseConnectorA1b.getOneTimePurchaseOfferDetails++;
            }
            objArr[0] = new String(cArr6);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        @JvmStatic
        public final InAppPurchaseValidationResult fromJson(JSONObject p0) throws JSONException, UnsupportedEncodingException {
            ProductPurchase productPurchaseFromJson;
            ValidationFailureData.Companion companion;
            Object obj;
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            ValidationFailureData validationFailureDataFromJson = null;
            a(null, null, 127 - (ViewConfiguration.getEdgeSlop() >> 16), "\u0086\u0085\u0084\u0083\u0082\u0081", objArr);
            boolean zOptBoolean = p0.optBoolean(((String) objArr[0]).intern());
            Object[] objArr2 = new Object[1];
            a(null, null, AndroidCharacter.getMirror('0') + 'O', "\u0082\u0083\u008d\u008c\u008a\u0081\u0084\u0087\u008b\u0086\u008a\u0084\u0089\u0088\u0081\u0087", objArr2);
            if (p0.has(((String) objArr2[0]).intern())) {
                ProductPurchase.Companion companion2 = ProductPurchase.INSTANCE;
                Object[] objArr3 = new Object[1];
                a(null, null, TextUtils.indexOf((CharSequence) "", '0', 0) + 128, "\u0082\u0083\u008d\u008c\u008a\u0081\u0084\u0087\u008b\u0086\u008a\u0084\u0089\u0088\u0081\u0087", objArr3);
                JSONObject jSONObject = p0.getJSONObject(((String) objArr3[0]).intern());
                Intrinsics.checkNotNullExpressionValue(jSONObject, "");
                productPurchaseFromJson = companion2.fromJson(jSONObject);
            } else {
                int i2 = hashCode + 105;
                getPackageName = i2 % 128;
                int i3 = i2 % 2;
                productPurchaseFromJson = null;
            }
            Object[] objArr4 = new Object[1];
            a(null, null, 127 - (ViewConfiguration.getLongPressTimeout() >> 16), "\u008d\u0086\u008d\u0089\u008b\u0082\u0081\u0084\u0085\u008f\u008d\u008e", objArr4);
            if (p0.has(((String) objArr4[0]).intern())) {
                int i4 = getPackageName + 123;
                hashCode = i4 % 128;
                if (i4 % 2 == 0) {
                    companion = ValidationFailureData.INSTANCE;
                    Object[] objArr5 = new Object[1];
                    a(null, null, (SystemClock.elapsedRealtimeNanos() > 0L ? 1 : (SystemClock.elapsedRealtimeNanos() == 0L ? 0 : -1)) + 29193, "\u008d\u0086\u008d\u0089\u008b\u0082\u0081\u0084\u0085\u008f\u008d\u008e", objArr5);
                    obj = objArr5[0];
                } else {
                    companion = ValidationFailureData.INSTANCE;
                    Object[] objArr6 = new Object[1];
                    a(null, null, 128 - (SystemClock.elapsedRealtimeNanos() > 0L ? 1 : (SystemClock.elapsedRealtimeNanos() == 0L ? 0 : -1)), "\u008d\u0086\u008d\u0089\u008b\u0082\u0081\u0084\u0085\u008f\u008d\u008e", objArr6);
                    obj = objArr6[0];
                }
                JSONObject jSONObject2 = p0.getJSONObject(((String) obj).intern());
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "");
                validationFailureDataFromJson = companion.fromJson(jSONObject2);
            }
            return new InAppPurchaseValidationResult(zOptBoolean, productPurchaseFromJson, validationFailureDataFromJson);
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ InAppPurchaseValidationResult fromJson(JSONObject jSONObject) throws JSONException, UnsupportedEncodingException {
            int i = 2 % 2;
            int i2 = getPackageName + 83;
            hashCode = i2 % 128;
            int i3 = i2 % 2;
            InAppPurchaseValidationResult inAppPurchaseValidationResultFromJson = fromJson(jSONObject);
            int i4 = hashCode + 15;
            getPackageName = i4 % 128;
            int i5 = i4 % 2;
            return inAppPurchaseValidationResultFromJson;
        }
    }

    public InAppPurchaseValidationResult(boolean z, ProductPurchase productPurchase, ValidationFailureData validationFailureData) {
        this.success = z;
        this.productPurchase = productPurchase;
        this.failureData = validationFailureData;
    }

    public static /* synthetic */ InAppPurchaseValidationResult copy$default(InAppPurchaseValidationResult inAppPurchaseValidationResult, boolean z, ProductPurchase productPurchase, ValidationFailureData validationFailureData, int i, Object obj) {
        if ((i & 1) != 0) {
            z = inAppPurchaseValidationResult.success;
        }
        if ((i & 2) != 0) {
            productPurchase = inAppPurchaseValidationResult.productPurchase;
        }
        if ((i & 4) != 0) {
            validationFailureData = inAppPurchaseValidationResult.failureData;
        }
        return inAppPurchaseValidationResult.copy(z, productPurchase, validationFailureData);
    }

    @JvmStatic
    public static InAppPurchaseValidationResult fromJson(JSONObject jSONObject) {
        return INSTANCE.fromJson(jSONObject);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ProductPurchase getProductPurchase() {
        return this.productPurchase;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ValidationFailureData getFailureData() {
        return this.failureData;
    }

    public final InAppPurchaseValidationResult copy(boolean p0, ProductPurchase p1, ValidationFailureData p2) {
        return new InAppPurchaseValidationResult(p0, p1, p2);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof InAppPurchaseValidationResult)) {
            return false;
        }
        InAppPurchaseValidationResult inAppPurchaseValidationResult = (InAppPurchaseValidationResult) p0;
        return this.success == inAppPurchaseValidationResult.success && Intrinsics.areEqual(this.productPurchase, inAppPurchaseValidationResult.productPurchase) && Intrinsics.areEqual(this.failureData, inAppPurchaseValidationResult.failureData);
    }

    public final ValidationFailureData getFailureData() {
        return this.failureData;
    }

    public final ProductPurchase getProductPurchase() {
        return this.productPurchase;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final int hashCode() {
        boolean z = this.success;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ProductPurchase productPurchase = this.productPurchase;
        int iHashCode = (i + (productPurchase == null ? 0 : productPurchase.hashCode())) * 31;
        ValidationFailureData validationFailureData = this.failureData;
        return iHashCode + (validationFailureData != null ? validationFailureData.hashCode() : 0);
    }

    public final String toString() {
        return "InAppPurchaseValidationResult(success=" + this.success + ", productPurchase=" + this.productPurchase + ", failureData=" + this.failureData + ")";
    }
}
