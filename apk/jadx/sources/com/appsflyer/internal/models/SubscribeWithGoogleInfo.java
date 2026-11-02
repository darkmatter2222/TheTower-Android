package com.appsflyer.internal.models;

import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1c;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1e;
import java.io.UnsupportedEncodingException;
import kotlin.fh;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u0000 $2\u00020\u0001:\u0001$B1\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJB\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0018\u0010\u000bR\u001a\u0010\u0019\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u000bR\u001a\u0010\u001c\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001a\u001a\u0004\b\u001d\u0010\u000bR\u001a\u0010\u001e\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u000bR\u001a\u0010 \u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010\u001a\u001a\u0004\b!\u0010\u000bR\u001a\u0010\"\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010\u000b"}, d2 = {"Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "", "", "p0", "p1", "p2", "p3", "p4", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "emailAddress", "Ljava/lang/String;", "getEmailAddress", "familyName", "getFamilyName", "givenName", "getGivenName", "profileId", "getProfileId", "profileName", "getProfileName", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class SubscribeWithGoogleInfo {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String emailAddress;
    private final String familyName;
    private final String givenName;
    private final String profileId;
    private final String profileName;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<SubscribeWithGoogleInfo> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getPackageName = 0;
        private static int toJsonMap = 1;
        private static char[] getOneTimePurchaseOfferDetails = {61850, 61904, 61903, 61896, 61896, 61895, 61937, 61941, 61897, 61894, 61892, 61898, 61840, 61892, 61897, 61899, 61940, 61941, 61897, 61906, 61907};
        private static int[] getQuantity = {418796712, 1948537304, -1650439581, 1033086924, 1645603133, 2007808860, 1857338365, 1823483694, 1952796418, 1977383259, -878785260, -804681131, 1207939658, -1435865874, -736037599, 1663337011, 155467428, 1644775619};

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(boolean z, String str, int[] iArr, Object[] objArr) throws UnsupportedEncodingException {
            char[] cArr;
            char c;
            String str2 = str;
            int i = 2 % 2;
            Object bytes = str2;
            if (str2 != null) {
                int i2 = $11 + 35;
                $10 = i2 % 128;
                if (i2 % 2 != 0) {
                    int i3 = 33 / 0;
                    bytes = str2.getBytes("ISO-8859-1");
                } else {
                    bytes = str2.getBytes("ISO-8859-1");
                }
            }
            byte[] bArr = (byte[]) bytes;
            AFPurchaseConnectorA1e aFPurchaseConnectorA1e = new AFPurchaseConnectorA1e();
            int i4 = iArr[0];
            int i5 = iArr[1];
            int i6 = iArr[2];
            int i7 = iArr[3];
            char[] cArr2 = getOneTimePurchaseOfferDetails;
            if (cArr2 != null) {
                int length = cArr2.length;
                char[] cArr3 = new char[length];
                int i8 = $10 + 59;
                $11 = i8 % 128;
                int i9 = i8 % 2;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = $11 + 67;
                    $10 = i11 % 128;
                    int i12 = i11 % 2;
                    cArr3[i10] = (char) (((long) cArr2[i10]) ^ (-6597605525082934877L));
                }
                cArr2 = cArr3;
            }
            char[] cArr4 = new char[i5];
            System.arraycopy(cArr2, i4, cArr4, 0, i5);
            if (bArr != null) {
                int i13 = $11 + 63;
                $10 = i13 % 128;
                if (i13 % 2 != 0) {
                    cArr = new char[i5];
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails = 1;
                    c = 1;
                } else {
                    cArr = new char[i5];
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails = 0;
                    c = 0;
                }
                while (aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails < i5) {
                    int i14 = $10 + 1;
                    $11 = i14 % 128;
                    int i15 = i14 % 2;
                    if (bArr[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] == 1) {
                        int i16 = $11 + 31;
                        $10 = i16 % 128;
                        if (i16 % 2 != 0) {
                            cArr[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] = (char) ((cArr4[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] >>> 5) >>> c);
                        } else {
                            cArr[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] = (char) (((cArr4[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] * 2) + 1) - c);
                        }
                    } else {
                        cArr[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] = (char) ((cArr4[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] * 2) - c);
                    }
                    c = cArr[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails];
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails++;
                }
                cArr4 = cArr;
            }
            if (i7 > 0) {
                char[] cArr5 = new char[i5];
                System.arraycopy(cArr4, 0, cArr5, 0, i5);
                int i17 = i5 - i7;
                System.arraycopy(cArr5, 0, cArr4, i17, i7);
                System.arraycopy(cArr5, i7, cArr4, 0, i17);
            }
            if (z) {
                int i18 = $10 + 109;
                $11 = i18 % 128;
                int i19 = i18 % 2;
                char[] cArr6 = new char[i5];
                aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails = 0;
                while (aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails < i5) {
                    cArr6[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] = cArr4[(i5 - aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails) - 1];
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails++;
                }
                cArr4 = cArr6;
            }
            if (i6 > 0) {
                int i20 = $10 + 49;
                $11 = i20 % 128;
                if (i20 % 2 == 0) {
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails = 1;
                } else {
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails = 0;
                }
                while (aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails < i5) {
                    cArr4[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] = (char) (cArr4[aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails] - iArr[2]);
                    aFPurchaseConnectorA1e.getOneTimePurchaseOfferDetails++;
                }
            }
            objArr[0] = new String(cArr4);
        }

        private static void b(int[] iArr, int i, Object[] objArr) {
            int length;
            int[] iArr2;
            int i2;
            char c = 2;
            int i3 = 2 % 2;
            AFPurchaseConnectorA1c aFPurchaseConnectorA1c = new AFPurchaseConnectorA1c();
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length * 2];
            int[] iArr3 = getQuantity;
            long j = -6033101233399176549L;
            if (iArr3 != null) {
                int i4 = $11 + fh.h1;
                int i5 = i4 % 128;
                $10 = i5;
                int i6 = i4 % 2;
                int length2 = iArr3.length;
                int[] iArr4 = new int[length2];
                int i7 = i5 + 121;
                $11 = i7 % 128;
                int i8 = i7 % 2;
                for (int i9 = 0; i9 < length2; i9++) {
                    iArr4[i9] = (int) (((long) iArr3[i9]) ^ (-6033101233399176549L));
                }
                iArr3 = iArr4;
            }
            int length3 = iArr3.length;
            int[] iArr5 = new int[length3];
            int[] iArr6 = getQuantity;
            if (iArr6 != null) {
                int i10 = $11 + 87;
                $10 = i10 % 128;
                if (i10 % 2 != 0) {
                    length = iArr6.length;
                    iArr2 = new int[length];
                    i2 = 1;
                } else {
                    length = iArr6.length;
                    iArr2 = new int[length];
                    i2 = 0;
                }
                while (i2 < length) {
                    int i11 = $10 + 97;
                    $11 = i11 % 128;
                    int i12 = i11 % 2;
                    long j2 = j;
                    iArr2[i2] = (int) (((long) iArr6[i2]) ^ j2);
                    i2++;
                    c = c;
                    j = j2;
                }
                iArr6 = iArr2;
            }
            char c2 = c;
            System.arraycopy(iArr6, 0, iArr5, 0, length3);
            aFPurchaseConnectorA1c.InAppPurchaseEvent = 0;
            while (aFPurchaseConnectorA1c.InAppPurchaseEvent < iArr.length) {
                cArr[0] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent] >> 16);
                cArr[1] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent];
                cArr[c2] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1] >> 16);
                cArr[3] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1];
                aFPurchaseConnectorA1c.getQuantity = (cArr[0] << 16) + cArr[1];
                aFPurchaseConnectorA1c.toJsonMap = (cArr[c2] << 16) + cArr[3];
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr5);
                int i13 = $11 + 1;
                $10 = i13 % 128;
                int i14 = i13 % 2;
                for (int i15 = 0; i15 < 16; i15++) {
                    int i16 = $10 + 1;
                    $11 = i16 % 128;
                    int i17 = i16 % 2;
                    aFPurchaseConnectorA1c.getQuantity ^= iArr5[i15];
                    aFPurchaseConnectorA1c.toJsonMap = AFPurchaseConnectorA1c.getQuantity(aFPurchaseConnectorA1c.getQuantity) ^ aFPurchaseConnectorA1c.toJsonMap;
                    int i18 = aFPurchaseConnectorA1c.getQuantity;
                    aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                    aFPurchaseConnectorA1c.toJsonMap = i18;
                }
                int i19 = aFPurchaseConnectorA1c.getQuantity;
                aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                aFPurchaseConnectorA1c.toJsonMap = i19;
                aFPurchaseConnectorA1c.toJsonMap ^= iArr5[16];
                aFPurchaseConnectorA1c.getQuantity ^= iArr5[17];
                int i20 = aFPurchaseConnectorA1c.getQuantity;
                int i21 = aFPurchaseConnectorA1c.toJsonMap;
                cArr[0] = (char) (aFPurchaseConnectorA1c.getQuantity >>> 16);
                cArr[1] = (char) aFPurchaseConnectorA1c.getQuantity;
                cArr[c2] = (char) (aFPurchaseConnectorA1c.toJsonMap >>> 16);
                cArr[3] = (char) aFPurchaseConnectorA1c.toJsonMap;
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr5);
                cArr2[aFPurchaseConnectorA1c.InAppPurchaseEvent * 2] = cArr[0];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 1] = cArr[1];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 2] = cArr[c2];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 3] = cArr[3];
                aFPurchaseConnectorA1c.InAppPurchaseEvent += 2;
                int i22 = $11 + 117;
                $10 = i22 % 128;
                int i23 = i22 % 2;
            }
            objArr[0] = new String(cArr2, 0, i);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final SubscribeWithGoogleInfo fromJson(JSONObject p0) throws UnsupportedEncodingException {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a(true, "\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000", new int[]{0, 12, 0, 0}, objArr);
            String strOptString = p0.optString(((String) objArr[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Object[] objArr2 = new Object[1];
            b(new int[]{1362738978, 1051242831, -1218499737, 1371039766, 758915324, 155961919}, 11 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), objArr2);
            String strOptString2 = p0.optString(((String) objArr2[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString2, "");
            Object[] objArr3 = new Object[1];
            b(new int[]{-4608109, 1363044340, -149718670, 2092778429, 2119728533, -1200540607}, View.MeasureSpec.getSize(0) + 9, objArr3);
            String strOptString3 = p0.optString(((String) objArr3[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString3, "");
            Object[] objArr4 = new Object[1];
            a(false, "\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001", new int[]{12, 9, 0, 6}, objArr4);
            String strOptString4 = p0.optString(((String) objArr4[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString4, "");
            Object[] objArr5 = new Object[1];
            b(new int[]{2057795536, 2114002524, -557252362, -1811934362, 1380551411, -389149381}, View.MeasureSpec.makeMeasureSpec(0, 0) + 11, objArr5);
            String strOptString5 = p0.optString(((String) objArr5[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString5, "");
            SubscribeWithGoogleInfo subscribeWithGoogleInfo = new SubscribeWithGoogleInfo(strOptString, strOptString2, strOptString3, strOptString4, strOptString5);
            int i2 = getPackageName + 57;
            toJsonMap = i2 % 128;
            int i3 = i2 % 2;
            return subscribeWithGoogleInfo;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ SubscribeWithGoogleInfo fromJson(JSONObject jSONObject) throws UnsupportedEncodingException {
            int i = 2 % 2;
            int i2 = toJsonMap + 23;
            getPackageName = i2 % 128;
            int i3 = i2 % 2;
            SubscribeWithGoogleInfo subscribeWithGoogleInfoFromJson = fromJson(jSONObject);
            int i4 = toJsonMap + 31;
            getPackageName = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 75 / 0;
            }
            return subscribeWithGoogleInfoFromJson;
        }
    }

    public SubscribeWithGoogleInfo(String str, String str2, String str3, String str4, String str5) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        Intrinsics.checkNotNullParameter(str4, "");
        Intrinsics.checkNotNullParameter(str5, "");
        this.emailAddress = str;
        this.familyName = str2;
        this.givenName = str3;
        this.profileId = str4;
        this.profileName = str5;
    }

    public static /* synthetic */ SubscribeWithGoogleInfo copy$default(SubscribeWithGoogleInfo subscribeWithGoogleInfo, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscribeWithGoogleInfo.emailAddress;
        }
        if ((i & 2) != 0) {
            str2 = subscribeWithGoogleInfo.familyName;
        }
        if ((i & 4) != 0) {
            str3 = subscribeWithGoogleInfo.givenName;
        }
        if ((i & 8) != 0) {
            str4 = subscribeWithGoogleInfo.profileId;
        }
        if ((i & 16) != 0) {
            str5 = subscribeWithGoogleInfo.profileName;
        }
        String str6 = str5;
        String str7 = str3;
        return subscribeWithGoogleInfo.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEmailAddress() {
        return this.emailAddress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFamilyName() {
        return this.familyName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGivenName() {
        return this.givenName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getProfileId() {
        return this.profileId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getProfileName() {
        return this.profileName;
    }

    public final SubscribeWithGoogleInfo copy(String p0, String p1, String p2, String p3, String p4) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p1, "");
        Intrinsics.checkNotNullParameter(p2, "");
        Intrinsics.checkNotNullParameter(p3, "");
        Intrinsics.checkNotNullParameter(p4, "");
        return new SubscribeWithGoogleInfo(p0, p1, p2, p3, p4);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof SubscribeWithGoogleInfo)) {
            return false;
        }
        SubscribeWithGoogleInfo subscribeWithGoogleInfo = (SubscribeWithGoogleInfo) p0;
        return Intrinsics.areEqual(this.emailAddress, subscribeWithGoogleInfo.emailAddress) && Intrinsics.areEqual(this.familyName, subscribeWithGoogleInfo.familyName) && Intrinsics.areEqual(this.givenName, subscribeWithGoogleInfo.givenName) && Intrinsics.areEqual(this.profileId, subscribeWithGoogleInfo.profileId) && Intrinsics.areEqual(this.profileName, subscribeWithGoogleInfo.profileName);
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final String getFamilyName() {
        return this.familyName;
    }

    public final String getGivenName() {
        return this.givenName;
    }

    public final String getProfileId() {
        return this.profileId;
    }

    public final String getProfileName() {
        return this.profileName;
    }

    public final int hashCode() {
        return (((((((this.emailAddress.hashCode() * 31) + this.familyName.hashCode()) * 31) + this.givenName.hashCode()) * 31) + this.profileId.hashCode()) * 31) + this.profileName.hashCode();
    }

    public final String toString() {
        return "SubscribeWithGoogleInfo(emailAddress=" + this.emailAddress + ", familyName=" + this.familyName + ", givenName=" + this.givenName + ", profileId=" + this.profileId + ", profileName=" + this.profileName + ")";
    }
}
