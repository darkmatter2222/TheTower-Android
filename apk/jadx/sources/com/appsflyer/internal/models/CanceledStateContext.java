package com.appsflyer.internal.models;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA2z;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\b\u0018\u0000 +2\u00020\u0001:\u0001+B1\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÇ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\bHÇ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J@\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÇ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cH×\u0001¢\u0006\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\rR\u001c\u0010\"\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010\u000fR\u001c\u0010%\u001a\u0004\u0018\u00010\u00068\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0011R\u001c\u0010(\u001a\u0004\u0018\u00010\b8\u0007X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u0013"}, d2 = {"Lcom/appsflyer/internal/models/CanceledStateContext;", "", "Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;", "p0", "Lcom/appsflyer/internal/models/ReplacementCancellation;", "p1", "Lcom/appsflyer/internal/models/SystemInitiatedCancellation;", "p2", "Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "p3", "<init>", "(Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;Lcom/appsflyer/internal/models/ReplacementCancellation;Lcom/appsflyer/internal/models/SystemInitiatedCancellation;Lcom/appsflyer/internal/models/UserInitiatedCancellation;)V", "component1", "()Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;", "component2", "()Lcom/appsflyer/internal/models/ReplacementCancellation;", "component3", "()Lcom/appsflyer/internal/models/SystemInitiatedCancellation;", "component4", "()Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "copy", "(Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;Lcom/appsflyer/internal/models/ReplacementCancellation;Lcom/appsflyer/internal/models/SystemInitiatedCancellation;Lcom/appsflyer/internal/models/UserInitiatedCancellation;)Lcom/appsflyer/internal/models/CanceledStateContext;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "developerInitiatedCancellation", "Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;", "getDeveloperInitiatedCancellation", "replacementCancellation", "Lcom/appsflyer/internal/models/ReplacementCancellation;", "getReplacementCancellation", "systemInitiatedCancellation", "Lcom/appsflyer/internal/models/SystemInitiatedCancellation;", "getSystemInitiatedCancellation", "userInitiatedCancellation", "Lcom/appsflyer/internal/models/UserInitiatedCancellation;", "getUserInitiatedCancellation", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class CanceledStateContext {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final DeveloperInitiatedCancellation developerInitiatedCancellation;
    private final ReplacementCancellation replacementCancellation;
    private final SystemInitiatedCancellation systemInitiatedCancellation;
    private final UserInitiatedCancellation userInitiatedCancellation;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/CanceledStateContext$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/CanceledStateContext;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CanceledStateContext;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<CanceledStateContext> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getOneTimePurchaseOfferDetails = 1;
        private static int getPackageName = 0;
        private static long getQuantity = 6123178973585501029L;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(String str, int i, Object[] objArr) {
            int i2 = 2 % 2;
            Object charArray = str;
            if (str != null) {
                int i3 = $11 + 97;
                $10 = i3 % 128;
                if (i3 % 2 != 0) {
                    int i4 = 22 / 0;
                    charArray = str.toCharArray();
                } else {
                    charArray = str.toCharArray();
                }
            }
            AFPurchaseConnectorA2z aFPurchaseConnectorA2z = new AFPurchaseConnectorA2z();
            char[] oneTimePurchaseOfferDetails = AFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails(getQuantity ^ 7848782090230080433L, (char[]) charArray, i);
            aFPurchaseConnectorA2z.getPackageName = 4;
            while (aFPurchaseConnectorA2z.getPackageName < oneTimePurchaseOfferDetails.length) {
                int i5 = $10 + 101;
                $11 = i5 % 128;
                int i6 = i5 % 2;
                aFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails = aFPurchaseConnectorA2z.getPackageName - 4;
                oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName] = (char) (((long) (oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName] ^ oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName % 4])) ^ (((long) aFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails) * (getQuantity ^ 7848782090230080433L)));
                aFPurchaseConnectorA2z.getPackageName++;
            }
            String str2 = new String(oneTimePurchaseOfferDetails, 4, oneTimePurchaseOfferDetails.length - 4);
            int i7 = $11 + 33;
            $10 = i7 % 128;
            if (i7 % 2 != 0) {
                throw null;
            }
            objArr[0] = str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final CanceledStateContext fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a("氬\uda93汈捲ሢ뼨\uf2ac\ue531伐㛘ퟺ슁⫾햮뭔ṝ֨\ue83e颋笰\ue109賣緙壵\udcd2ꎔℯ둈뾠䙆ڎ鄝魳\u1af9", TextUtils.getOffsetAfter("", 0), objArr);
            DeveloperInitiatedCancellation developerInitiatedCancellation = (DeveloperInitiatedCancellation) SubscriptionPurchaseKt.toObject(p0, ((String) objArr[0]).intern(), DeveloperInitiatedCancellation.INSTANCE);
            Object[] objArr2 = new Object[1];
            a("‟\ue833\u206d䅲₂篕킪⇅̮Ѵ\uf5efٴ曚\ue729饎\uda8a䦎\uda99몉뿜괳빋忻鰝郦鄸̤", View.resolveSizeAndState(0, 0, 0), objArr2);
            ReplacementCancellation replacementCancellation = (ReplacementCancellation) SubscriptionPurchaseKt.toObject(p0, ((String) objArr2[0]).intern(), ReplacementCancellation.INSTANCE);
            Object[] objArr3 = new Object[1];
            a("戟椫扬伪ꆆ旪\udef1㿢䄪蕢ﮛᡈⓖ昫霋쒗\u0b9b宊듖ꇅ\uef3e㽑冡舳틣ဣ൳溒놖\uf5f0⫌", (-1) - ((byte) KeyEvent.getModifierMetaStateMask()), objArr3);
            SystemInitiatedCancellation systemInitiatedCancellation = (SystemInitiatedCancellation) SubscriptionPurchaseKt.toObject(p0, ((String) objArr3[0]).intern(), SystemInitiatedCancellation.INSTANCE);
            Object[] objArr4 = new Object[1];
            a("\udc12发\udc67뗎魶遪␃쩤＋뾛ş\uedd2髛峄淲ㄓ떆慖丷周儱֠ꭊ瞺泣⫁\uf79f鬉ྜ", View.resolveSize(0, 0), objArr4);
            CanceledStateContext canceledStateContext = new CanceledStateContext(developerInitiatedCancellation, replacementCancellation, systemInitiatedCancellation, (UserInitiatedCancellation) SubscriptionPurchaseKt.toObject(p0, ((String) objArr4[0]).intern(), UserInitiatedCancellation.INSTANCE));
            int i2 = getPackageName + 9;
            getOneTimePurchaseOfferDetails = i2 % 128;
            int i3 = i2 % 2;
            return canceledStateContext;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ CanceledStateContext fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = getOneTimePurchaseOfferDetails + 109;
            getPackageName = i2 % 128;
            int i3 = i2 % 2;
            CanceledStateContext canceledStateContextFromJson = fromJson(jSONObject);
            if (i3 != 0) {
                int i4 = 78 / 0;
            }
            int i5 = getPackageName + 39;
            getOneTimePurchaseOfferDetails = i5 % 128;
            int i6 = i5 % 2;
            return canceledStateContextFromJson;
        }
    }

    public CanceledStateContext(DeveloperInitiatedCancellation developerInitiatedCancellation, ReplacementCancellation replacementCancellation, SystemInitiatedCancellation systemInitiatedCancellation, UserInitiatedCancellation userInitiatedCancellation) {
        this.developerInitiatedCancellation = developerInitiatedCancellation;
        this.replacementCancellation = replacementCancellation;
        this.systemInitiatedCancellation = systemInitiatedCancellation;
        this.userInitiatedCancellation = userInitiatedCancellation;
    }

    public static /* synthetic */ CanceledStateContext copy$default(CanceledStateContext canceledStateContext, DeveloperInitiatedCancellation developerInitiatedCancellation, ReplacementCancellation replacementCancellation, SystemInitiatedCancellation systemInitiatedCancellation, UserInitiatedCancellation userInitiatedCancellation, int i, Object obj) {
        if ((i & 1) != 0) {
            developerInitiatedCancellation = canceledStateContext.developerInitiatedCancellation;
        }
        if ((i & 2) != 0) {
            replacementCancellation = canceledStateContext.replacementCancellation;
        }
        if ((i & 4) != 0) {
            systemInitiatedCancellation = canceledStateContext.systemInitiatedCancellation;
        }
        if ((i & 8) != 0) {
            userInitiatedCancellation = canceledStateContext.userInitiatedCancellation;
        }
        return canceledStateContext.copy(developerInitiatedCancellation, replacementCancellation, systemInitiatedCancellation, userInitiatedCancellation);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final DeveloperInitiatedCancellation getDeveloperInitiatedCancellation() {
        return this.developerInitiatedCancellation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ReplacementCancellation getReplacementCancellation() {
        return this.replacementCancellation;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SystemInitiatedCancellation getSystemInitiatedCancellation() {
        return this.systemInitiatedCancellation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UserInitiatedCancellation getUserInitiatedCancellation() {
        return this.userInitiatedCancellation;
    }

    public final CanceledStateContext copy(DeveloperInitiatedCancellation p0, ReplacementCancellation p1, SystemInitiatedCancellation p2, UserInitiatedCancellation p3) {
        return new CanceledStateContext(p0, p1, p2, p3);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof CanceledStateContext)) {
            return false;
        }
        CanceledStateContext canceledStateContext = (CanceledStateContext) p0;
        return Intrinsics.areEqual(this.developerInitiatedCancellation, canceledStateContext.developerInitiatedCancellation) && Intrinsics.areEqual(this.replacementCancellation, canceledStateContext.replacementCancellation) && Intrinsics.areEqual(this.systemInitiatedCancellation, canceledStateContext.systemInitiatedCancellation) && Intrinsics.areEqual(this.userInitiatedCancellation, canceledStateContext.userInitiatedCancellation);
    }

    public final DeveloperInitiatedCancellation getDeveloperInitiatedCancellation() {
        return this.developerInitiatedCancellation;
    }

    public final ReplacementCancellation getReplacementCancellation() {
        return this.replacementCancellation;
    }

    public final SystemInitiatedCancellation getSystemInitiatedCancellation() {
        return this.systemInitiatedCancellation;
    }

    public final UserInitiatedCancellation getUserInitiatedCancellation() {
        return this.userInitiatedCancellation;
    }

    public final int hashCode() {
        DeveloperInitiatedCancellation developerInitiatedCancellation = this.developerInitiatedCancellation;
        int iHashCode = (developerInitiatedCancellation == null ? 0 : developerInitiatedCancellation.hashCode()) * 31;
        ReplacementCancellation replacementCancellation = this.replacementCancellation;
        int iHashCode2 = (iHashCode + (replacementCancellation == null ? 0 : replacementCancellation.hashCode())) * 31;
        SystemInitiatedCancellation systemInitiatedCancellation = this.systemInitiatedCancellation;
        int iHashCode3 = (iHashCode2 + (systemInitiatedCancellation == null ? 0 : systemInitiatedCancellation.hashCode())) * 31;
        UserInitiatedCancellation userInitiatedCancellation = this.userInitiatedCancellation;
        return iHashCode3 + (userInitiatedCancellation != null ? userInitiatedCancellation.hashCode() : 0);
    }

    public final String toString() {
        return "CanceledStateContext(developerInitiatedCancellation=" + this.developerInitiatedCancellation + ", replacementCancellation=" + this.replacementCancellation + ", systemInitiatedCancellation=" + this.systemInitiatedCancellation + ", userInitiatedCancellation=" + this.userInitiatedCancellation + ")";
    }
}
