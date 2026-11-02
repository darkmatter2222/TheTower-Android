package com.appsflyer.internal.models;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.telephony.cdma.CdmaCellLocation;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1c;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA2x;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b#\b\u0086\b\u0018\u0000 I2\u00020\u0001:\u0001IBy\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0019\u0010\u0015J\u0010\u0010\u001a\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001a\u0010\u0015J\u0010\u0010\u001b\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001b\u0010\u0015J\u0010\u0010\u001c\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001c\u0010\u0015J\u0010\u0010\u001d\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0018J\u0010\u0010\u001e\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001f\u0010\u0015J\u0010\u0010 \u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b \u0010\u0015J\u0010\u0010!\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b!\u0010\u0018J\u0010\u0010\"\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\"\u0010\u0018J\u0010\u0010#\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b#\u0010\u0015J\u009c\u0001\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b$\u0010%J\u001a\u0010'\u001a\u00020&2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b'\u0010(J\u0010\u0010)\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b)\u0010\u0018J\u0010\u0010*\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b*\u0010\u0015R\u0017\u0010+\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010\u0018R\u001a\u0010.\u001a\u00020\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010,\u001a\u0004\b/\u0010\u0018R\u001a\u00100\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u0010\u0015R\u001a\u00103\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b3\u00101\u001a\u0004\b4\u0010\u0015R\u001a\u00105\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b5\u00101\u001a\u0004\b6\u0010\u0015R\u001a\u00107\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b7\u00101\u001a\u0004\b8\u0010\u0015R\u001a\u00109\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b9\u00101\u001a\u0004\b:\u0010\u0015R\u001a\u0010;\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b;\u00101\u001a\u0004\b<\u0010\u0015R\u001a\u0010=\u001a\u00020\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\b=\u0010,\u001a\u0004\b>\u0010\u0018R\u001a\u0010?\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b?\u00101\u001a\u0004\b@\u0010\u0015R\u001a\u0010A\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bA\u00101\u001a\u0004\bB\u0010\u0015R\u001a\u0010C\u001a\u00020\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\bC\u0010,\u001a\u0004\bD\u0010\u0018R\u001a\u0010E\u001a\u00020\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\bE\u0010,\u001a\u0004\bF\u0010\u0018R\u001a\u0010G\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bG\u00101\u001a\u0004\bH\u0010\u0015"}, d2 = {"Lcom/appsflyer/internal/models/ProductPurchase;", "", "", "p0", "p1", "", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "p10", "p11", "p12", "p13", "<init>", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component10", "component11", "()I", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/ProductPurchase;", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "acknowledgementState", "I", "getAcknowledgementState", "consumptionState", "getConsumptionState", "developerPayload", "Ljava/lang/String;", "getDeveloperPayload", "kind", "getKind", "obfuscatedExternalAccountId", "getObfuscatedExternalAccountId", "obfuscatedExternalProfileId", "getObfuscatedExternalProfileId", "orderId", "getOrderId", InAppPurchaseMetaData.KEY_PRODUCT_ID, "getProductId", "purchaseState", "getPurchaseState", "purchaseTimeMillis", "getPurchaseTimeMillis", "purchaseToken", "getPurchaseToken", "purchaseType", "getPurchaseType", FirebaseAnalytics.Param.QUANTITY, "getQuantity", "regionCode", "getRegionCode", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ProductPurchase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int acknowledgementState;
    private final int consumptionState;
    private final String developerPayload;
    private final String kind;
    private final String obfuscatedExternalAccountId;
    private final String obfuscatedExternalProfileId;
    private final String orderId;
    private final String productId;
    private final int purchaseState;
    private final String purchaseTimeMillis;
    private final String purchaseToken;
    private final int purchaseType;
    private final int quantity;
    private final String regionCode;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/ProductPurchase$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/ProductPurchase;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<ProductPurchase> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int PurchaseClient = 0;
        private static int equals = 1;
        private static int getOneTimePurchaseOfferDetails = 1688888230;
        private static int getPackageName = 1175623904;
        private static int getQuantity = -2078375;
        private static short[] toJsonMap;
        private static byte[] InAppPurchaseEvent = {SignedBytes.MAX_POWER_OF_TWO, 87, 72, -42, -16, -54, -122, -53, -41, -9, -34, -30, -42, -38, -30, 57, -37, Base64.padSymbol, -23, 53, -49, -42, -59, -44, -53, -64, -54, -43, -49, -36, -21, 47, -27, -47, -62, -45, -59, -57, -11, 63, 58, -38, -63, -43, 57, -51, -43, 125, Ascii.US, 113, 45, 99, 10, Ascii.NAK, 4, Ascii.DC4, 2, Ascii.SI, 3, 5, 121, Ascii.DC4, Ascii.CR, Ascii.SI, Ascii.DC4, Ascii.SO, -90, -40, -100, -15, -100, -8, -128, -115, -60, -60, -60, -60, -60, -60, -60};
        private static int[] stopObservingTransactions = {-989833201, 1143223520, -1012064137, -1343262758, 1670981312, -859429332, 1785487465, -2009815516, -771224981, 1290596811, 552937098, -65778887, 1218886644, 1666756460, -1614711560, -1162689365, -1805054757, 1026752911};

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(int i, int i2, byte b, short s, int i3, Object[] objArr) {
            int i4;
            char c;
            int length;
            byte[] bArr;
            int i5 = 2 % 2;
            AFPurchaseConnectorA2x aFPurchaseConnectorA2x = new AFPurchaseConnectorA2x();
            StringBuilder sb = new StringBuilder();
            int i6 = i2 + ((int) (((long) getPackageName) ^ (-4208132002516133692L)));
            if (i6 == -1) {
                i4 = 1;
            } else {
                int i7 = $10 + 7;
                $11 = i7 % 128;
                int i8 = i7 % 2;
                i4 = 0;
            }
            if ((i4 ^ 1) != 1) {
                byte[] bArr2 = InAppPurchaseEvent;
                if (bArr2 != null) {
                    int length2 = bArr2.length;
                    byte[] bArr3 = new byte[length2];
                    int i9 = 0;
                    while (i9 < length2) {
                        int i10 = $10 + 67;
                        $11 = i10 % 128;
                        if (i10 % 2 == 0) {
                            bArr3[i9] = (byte) (((long) bArr2[i9]) | (-4208132002516133692L));
                        } else {
                            bArr3[i9] = (byte) (((long) bArr2[i9]) ^ (-4208132002516133692L));
                            i9++;
                        }
                    }
                    bArr2 = bArr3;
                }
                i6 = bArr2 != null ? (byte) (((byte) (((long) InAppPurchaseEvent[i3 + ((int) (((long) getQuantity) ^ (-4208132002516133692L)))]) ^ (-4208132002516133692L))) + ((int) (((long) getPackageName) ^ (-4208132002516133692L)))) : (short) (((short) (((long) toJsonMap[i3 + ((int) (((long) getQuantity) ^ (-4208132002516133692L)))]) ^ (-4208132002516133692L))) + ((int) (((long) getPackageName) ^ (-4208132002516133692L))));
            }
            if (i6 > 0) {
                aFPurchaseConnectorA2x.getPackageName = ((i3 + i6) - 2) + ((int) (((long) getQuantity) ^ (-4208132002516133692L))) + i4;
                aFPurchaseConnectorA2x.InAppPurchaseEvent = (char) (i + ((int) (((long) getOneTimePurchaseOfferDetails) ^ (-4208132002516133692L))));
                sb.append(aFPurchaseConnectorA2x.InAppPurchaseEvent);
                aFPurchaseConnectorA2x.getQuantity = aFPurchaseConnectorA2x.InAppPurchaseEvent;
                byte[] bArr4 = InAppPurchaseEvent;
                if (bArr4 != null) {
                    int i11 = $11 + 67;
                    $10 = i11 % 128;
                    if (i11 % 2 != 0) {
                        length = bArr4.length;
                        bArr = new byte[length];
                    } else {
                        length = bArr4.length;
                        bArr = new byte[length];
                    }
                    for (int i12 = 0; i12 < length; i12++) {
                        int i13 = $10 + 53;
                        $11 = i13 % 128;
                        int i14 = i13 % 2;
                        bArr[i12] = (byte) (((long) bArr4[i12]) ^ (-4208132002516133692L));
                    }
                    bArr4 = bArr;
                }
                boolean z = bArr4 != null;
                aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails = 1;
                while (aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails < i6) {
                    if (z) {
                        int i15 = $10 + 13;
                        $11 = i15 % 128;
                        if (i15 % 2 == 0) {
                            byte[] bArr5 = InAppPurchaseEvent;
                            int i16 = aFPurchaseConnectorA2x.getPackageName;
                            aFPurchaseConnectorA2x.getPackageName = i16 << 1;
                            c = (char) (aFPurchaseConnectorA2x.getQuantity >> (((byte) (((byte) (((long) bArr5[i16]) % (-4208132002516133692L))) >>> s)) ^ b));
                        } else {
                            byte[] bArr6 = InAppPurchaseEvent;
                            int i17 = aFPurchaseConnectorA2x.getPackageName;
                            aFPurchaseConnectorA2x.getPackageName = i17 - 1;
                            c = (char) (aFPurchaseConnectorA2x.getQuantity + (((byte) (((byte) (((long) bArr6[i17]) ^ (-4208132002516133692L))) + s)) ^ b));
                        }
                        aFPurchaseConnectorA2x.InAppPurchaseEvent = c;
                    } else {
                        short[] sArr = toJsonMap;
                        int i18 = aFPurchaseConnectorA2x.getPackageName;
                        aFPurchaseConnectorA2x.getPackageName = i18 - 1;
                        aFPurchaseConnectorA2x.InAppPurchaseEvent = (char) (aFPurchaseConnectorA2x.getQuantity + (((short) (((short) (((long) sArr[i18]) ^ (-4208132002516133692L))) + s)) ^ b));
                    }
                    sb.append(aFPurchaseConnectorA2x.InAppPurchaseEvent);
                    aFPurchaseConnectorA2x.getQuantity = aFPurchaseConnectorA2x.InAppPurchaseEvent;
                    aFPurchaseConnectorA2x.getOneTimePurchaseOfferDetails++;
                }
            }
            objArr[0] = sb.toString();
        }

        private static void b(int[] iArr, int i, Object[] objArr) {
            int length;
            int[] iArr2;
            int i2 = 2 % 2;
            AFPurchaseConnectorA1c aFPurchaseConnectorA1c = new AFPurchaseConnectorA1c();
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length * 2];
            int[] iArr3 = stopObservingTransactions;
            if (iArr3 != null) {
                int i3 = $10 + 43;
                $11 = i3 % 128;
                if (i3 % 2 == 0) {
                    length = iArr3.length;
                    iArr2 = new int[length];
                } else {
                    length = iArr3.length;
                    iArr2 = new int[length];
                }
                for (int i4 = 0; i4 < length; i4++) {
                    int i5 = $10 + 125;
                    $11 = i5 % 128;
                    int i6 = i5 % 2;
                    iArr2[i4] = (int) (((long) iArr3[i4]) ^ (-6033101233399176549L));
                }
                iArr3 = iArr2;
            }
            int length2 = iArr3.length;
            int[] iArr4 = new int[length2];
            int[] iArr5 = stopObservingTransactions;
            if (iArr5 != null) {
                int length3 = iArr5.length;
                int[] iArr6 = new int[length3];
                for (int i7 = 0; i7 < length3; i7++) {
                    int i8 = $11 + 119;
                    $10 = i8 % 128;
                    int i9 = i8 % 2;
                    iArr6[i7] = (int) (((long) iArr5[i7]) ^ (-6033101233399176549L));
                }
                iArr5 = iArr6;
            }
            System.arraycopy(iArr5, 0, iArr4, 0, length2);
            aFPurchaseConnectorA1c.InAppPurchaseEvent = 0;
            while (aFPurchaseConnectorA1c.InAppPurchaseEvent < iArr.length) {
                int i10 = $11 + 67;
                $10 = i10 % 128;
                int i11 = i10 % 2;
                cArr[0] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent] >> 16);
                cArr[1] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent];
                cArr[2] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1] >> 16);
                cArr[3] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1];
                aFPurchaseConnectorA1c.getQuantity = (cArr[0] << 16) + cArr[1];
                aFPurchaseConnectorA1c.toJsonMap = (cArr[2] << 16) + cArr[3];
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr4);
                for (int i12 = 0; i12 < 16; i12++) {
                    int i13 = $11 + 57;
                    $10 = i13 % 128;
                    int i14 = i13 % 2;
                    aFPurchaseConnectorA1c.getQuantity ^= iArr4[i12];
                    aFPurchaseConnectorA1c.toJsonMap = AFPurchaseConnectorA1c.getQuantity(aFPurchaseConnectorA1c.getQuantity) ^ aFPurchaseConnectorA1c.toJsonMap;
                    int i15 = aFPurchaseConnectorA1c.getQuantity;
                    aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                    aFPurchaseConnectorA1c.toJsonMap = i15;
                }
                int i16 = aFPurchaseConnectorA1c.getQuantity;
                aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                aFPurchaseConnectorA1c.toJsonMap = i16;
                aFPurchaseConnectorA1c.toJsonMap ^= iArr4[16];
                aFPurchaseConnectorA1c.getQuantity ^= iArr4[17];
                int i17 = aFPurchaseConnectorA1c.getQuantity;
                int i18 = aFPurchaseConnectorA1c.toJsonMap;
                cArr[0] = (char) (aFPurchaseConnectorA1c.getQuantity >>> 16);
                cArr[1] = (char) aFPurchaseConnectorA1c.getQuantity;
                cArr[2] = (char) (aFPurchaseConnectorA1c.toJsonMap >>> 16);
                cArr[3] = (char) aFPurchaseConnectorA1c.toJsonMap;
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr4);
                cArr2[aFPurchaseConnectorA1c.InAppPurchaseEvent * 2] = cArr[0];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 1] = cArr[1];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 2] = cArr[2];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 3] = cArr[3];
                aFPurchaseConnectorA1c.InAppPurchaseEvent += 2;
            }
            objArr[0] = new String(cArr2, 0, i);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        @JvmStatic
        public final ProductPurchase fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a((-582548215) - TextUtils.getOffsetAfter("", 0), (ViewConfiguration.getScrollDefaultDelay() >> 16) - 32, (byte) (ViewConfiguration.getKeyRepeatTimeout() >> 16), (short) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 114), 1175268964 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), objArr);
            String strOptString = p0.optString(((String) objArr[0]).intern());
            Object[] objArr2 = new Object[1];
            b(new int[]{2005301407, -60183927, -1207719689, 400653573, 1362738546, 420062478, 1113928308, 728412629, 380141090, 726507346}, View.resolveSizeAndState(0, 0, 0) + 18, objArr2);
            String strOptString2 = p0.optString(((String) objArr2[0]).intern());
            Object[] objArr3 = new Object[1];
            a((-582548210) - View.resolveSizeAndState(0, 0, 0), (ViewConfiguration.getScrollDefaultDelay() >> 16) - 23, (byte) TextUtils.indexOf("", ""), (short) ((-34) - ExpandableListView.getPackedPositionChild(0L)), 1175268967 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), objArr3);
            int iOptInt = p0.optInt(((String) objArr3[0]).intern(), -1);
            Object[] objArr4 = new Object[1];
            a((-582548223) - View.combineMeasuredStates(0, 0), (-20) - (ViewConfiguration.getKeyRepeatDelay() >> 16), (byte) View.combineMeasuredStates(0, 0), (short) ((-12) - View.resolveSize(0, 0)), 1175268978 - Color.red(0), objArr4);
            int iOptInt2 = p0.optInt(((String) objArr4[0]).intern(), -1);
            Object[] objArr5 = new Object[1];
            b(new int[]{-1326057577, 791766696, -1433654798, -1635830386, 2135481497, -322530907, 1308775003, -422984170}, Gravity.getAbsoluteGravity(0, 0) + 16, objArr5);
            String strOptString3 = p0.optString(((String) objArr5[0]).intern());
            Object[] objArr6 = new Object[1];
            a((-582548211) - Gravity.getAbsoluteGravity(0, 0), (-30) - ImageFormat.getBitsPerPixel(0), (byte) ((-1) - ((byte) KeyEvent.getModifierMetaStateMask())), (short) ((ViewConfiguration.getWindowTouchSlop() >> 8) - 20), 1175268992 - TextUtils.lastIndexOf("", '0', 0, 0), objArr6);
            String strOptString4 = p0.optString(((String) objArr6[0]).intern());
            Object[] objArr7 = new Object[1];
            a((KeyEvent.getMaxKeyCode() >> 16) - 582548210, TextUtils.indexOf("", "", 0) - 24, (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) - 12), 1175268999 - (CdmaCellLocation.convertQuartSecToDecDegrees(0) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 0 : -1)), objArr7);
            int iOptInt3 = p0.optInt(((String) objArr7[0]).intern(), -1);
            Object[] objArr8 = new Object[1];
            a((-582548224) - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (-15) - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (byte) ((-1) - TextUtils.indexOf((CharSequence) "", '0')), (short) (TextUtils.lastIndexOf("", '0', 0, 0) + 57), 1175269011 - (SystemClock.elapsedRealtimeNanos() > 0L ? 1 : (SystemClock.elapsedRealtimeNanos() == 0L ? 0 : -1)), objArr8);
            int iOptInt4 = p0.optInt(((String) objArr8[0]).intern(), -1);
            Object[] objArr9 = new Object[1];
            b(new int[]{2005301407, -60183927, -1207719689, 400653573, -1054609149, 632850071, -2107846801, -699867247}, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 13, objArr9);
            String strOptString5 = p0.optString(((String) objArr9[0]).intern());
            Object[] objArr10 = new Object[1];
            a((-582548210) - (ViewConfiguration.getPressedStateDuration() >> 16), (-27) - (ViewConfiguration.getJumpTapTimeout() >> 16), (byte) (1 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1))), (short) (View.combineMeasuredStates(0, 0) - 71), 1175269029 - View.MeasureSpec.makeMeasureSpec(0, 0), objArr10);
            String strOptString6 = p0.optString(((String) objArr10[0]).intern());
            Object[] objArr11 = new Object[1];
            b(new int[]{-545346571, -391332314, 443699041, -746527974}, 8 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), objArr11);
            int iOptInt5 = p0.optInt(((String) objArr11[0]).intern(), -1);
            Object[] objArr12 = new Object[1];
            b(new int[]{-1626725951, 1230683472, 1378003559, -1364087339, 1691992993, 1113039018, 222303335, 2009666220, -608474663, -2045665009, -666539501, 1939553639, 315608314, -2019676651}, ExpandableListView.getPackedPositionChild(0L) + 28, objArr12);
            String strOptString7 = p0.optString(((String) objArr12[0]).intern());
            Object[] objArr13 = new Object[1];
            b(new int[]{-1626725951, 1230683472, 1378003559, -1364087339, 1691992993, 1113039018, 222303335, 2009666220, 585103710, 1153811338, -732915703, 2036937792, 1227427407, 1561955090}, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 26, objArr13);
            String strOptString8 = p0.optString(((String) objArr13[0]).intern());
            Object[] objArr14 = new Object[1];
            b(new int[]{-74593020, -1978383024, -1878750948, -1905049167, 1905259955, 1187120085}, 10 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), objArr14);
            String strOptString9 = p0.optString(((String) objArr14[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Intrinsics.checkNotNullExpressionValue(strOptString2, "");
            Intrinsics.checkNotNullExpressionValue(strOptString3, "");
            Intrinsics.checkNotNullExpressionValue(strOptString4, "");
            Intrinsics.checkNotNullExpressionValue(strOptString5, "");
            Intrinsics.checkNotNullExpressionValue(strOptString6, "");
            Intrinsics.checkNotNullExpressionValue(strOptString7, "");
            Intrinsics.checkNotNullExpressionValue(strOptString8, "");
            Intrinsics.checkNotNullExpressionValue(strOptString9, "");
            ProductPurchase productPurchase = new ProductPurchase(strOptString, strOptString2, iOptInt, iOptInt2, strOptString3, strOptString4, iOptInt3, iOptInt4, strOptString5, strOptString6, iOptInt5, strOptString7, strOptString8, strOptString9);
            int i2 = equals + 89;
            PurchaseClient = i2 % 128;
            int i3 = i2 % 2;
            return productPurchase;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* synthetic */ ProductPurchase fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = equals + 59;
            PurchaseClient = i2 % 128;
            if (i2 % 2 == 0) {
                return fromJson(jSONObject);
            }
            fromJson(jSONObject);
            Object obj = null;
            obj.hashCode();
            throw null;
        }
    }

    public ProductPurchase(String str, String str2, int i, int i2, String str3, String str4, int i3, int i4, String str5, String str6, int i5, String str7, String str8, String str9) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        Intrinsics.checkNotNullParameter(str4, "");
        Intrinsics.checkNotNullParameter(str5, "");
        Intrinsics.checkNotNullParameter(str6, "");
        Intrinsics.checkNotNullParameter(str7, "");
        Intrinsics.checkNotNullParameter(str8, "");
        Intrinsics.checkNotNullParameter(str9, "");
        this.kind = str;
        this.purchaseTimeMillis = str2;
        this.purchaseState = i;
        this.consumptionState = i2;
        this.developerPayload = str3;
        this.orderId = str4;
        this.purchaseType = i3;
        this.acknowledgementState = i4;
        this.purchaseToken = str5;
        this.productId = str6;
        this.quantity = i5;
        this.obfuscatedExternalAccountId = str7;
        this.obfuscatedExternalProfileId = str8;
        this.regionCode = str9;
    }

    @JvmStatic
    public static ProductPurchase fromJson(JSONObject jSONObject) {
        return INSTANCE.fromJson(jSONObject);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKind() {
        return this.kind;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getObfuscatedExternalAccountId() {
        return this.obfuscatedExternalAccountId;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getObfuscatedExternalProfileId() {
        return this.obfuscatedExternalProfileId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getRegionCode() {
        return this.regionCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPurchaseTimeMillis() {
        return this.purchaseTimeMillis;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPurchaseState() {
        return this.purchaseState;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getConsumptionState() {
        return this.consumptionState;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getPurchaseType() {
        return this.purchaseType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getAcknowledgementState() {
        return this.acknowledgementState;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final ProductPurchase copy(String p0, String p1, int p2, int p3, String p4, String p5, int p6, int p7, String p8, String p9, int p10, String p11, String p12, String p13) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p1, "");
        Intrinsics.checkNotNullParameter(p4, "");
        Intrinsics.checkNotNullParameter(p5, "");
        Intrinsics.checkNotNullParameter(p8, "");
        Intrinsics.checkNotNullParameter(p9, "");
        Intrinsics.checkNotNullParameter(p11, "");
        Intrinsics.checkNotNullParameter(p12, "");
        Intrinsics.checkNotNullParameter(p13, "");
        return new ProductPurchase(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof ProductPurchase)) {
            return false;
        }
        ProductPurchase productPurchase = (ProductPurchase) p0;
        return Intrinsics.areEqual(this.kind, productPurchase.kind) && Intrinsics.areEqual(this.purchaseTimeMillis, productPurchase.purchaseTimeMillis) && this.purchaseState == productPurchase.purchaseState && this.consumptionState == productPurchase.consumptionState && Intrinsics.areEqual(this.developerPayload, productPurchase.developerPayload) && Intrinsics.areEqual(this.orderId, productPurchase.orderId) && this.purchaseType == productPurchase.purchaseType && this.acknowledgementState == productPurchase.acknowledgementState && Intrinsics.areEqual(this.purchaseToken, productPurchase.purchaseToken) && Intrinsics.areEqual(this.productId, productPurchase.productId) && this.quantity == productPurchase.quantity && Intrinsics.areEqual(this.obfuscatedExternalAccountId, productPurchase.obfuscatedExternalAccountId) && Intrinsics.areEqual(this.obfuscatedExternalProfileId, productPurchase.obfuscatedExternalProfileId) && Intrinsics.areEqual(this.regionCode, productPurchase.regionCode);
    }

    public final int getAcknowledgementState() {
        return this.acknowledgementState;
    }

    public final int getConsumptionState() {
        return this.consumptionState;
    }

    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getObfuscatedExternalAccountId() {
        return this.obfuscatedExternalAccountId;
    }

    public final String getObfuscatedExternalProfileId() {
        return this.obfuscatedExternalProfileId;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final int getPurchaseState() {
        return this.purchaseState;
    }

    public final String getPurchaseTimeMillis() {
        return this.purchaseTimeMillis;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final int getPurchaseType() {
        return this.purchaseType;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final String getRegionCode() {
        return this.regionCode;
    }

    public final int hashCode() {
        return (((((((((((((((((((((((((this.kind.hashCode() * 31) + this.purchaseTimeMillis.hashCode()) * 31) + Integer.hashCode(this.purchaseState)) * 31) + Integer.hashCode(this.consumptionState)) * 31) + this.developerPayload.hashCode()) * 31) + this.orderId.hashCode()) * 31) + Integer.hashCode(this.purchaseType)) * 31) + Integer.hashCode(this.acknowledgementState)) * 31) + this.purchaseToken.hashCode()) * 31) + this.productId.hashCode()) * 31) + Integer.hashCode(this.quantity)) * 31) + this.obfuscatedExternalAccountId.hashCode()) * 31) + this.obfuscatedExternalProfileId.hashCode()) * 31) + this.regionCode.hashCode();
    }

    public final String toString() {
        return "ProductPurchase(kind=" + this.kind + ", purchaseTimeMillis=" + this.purchaseTimeMillis + ", purchaseState=" + this.purchaseState + ", consumptionState=" + this.consumptionState + ", developerPayload=" + this.developerPayload + ", orderId=" + this.orderId + ", purchaseType=" + this.purchaseType + ", acknowledgementState=" + this.acknowledgementState + ", purchaseToken=" + this.purchaseToken + ", productId=" + this.productId + ", quantity=" + this.quantity + ", obfuscatedExternalAccountId=" + this.obfuscatedExternalAccountId + ", obfuscatedExternalProfileId=" + this.obfuscatedExternalProfileId + ", regionCode=" + this.regionCode + ")";
    }
}
