package com.appsflyer.api.models;

import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1z;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004HÇ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0004HÇ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004HÇ\u0003¢\u0006\u0004\b\u0014\u0010\u0010J\u0010\u0010\u0015\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u000eJL\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0002HÇ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0003\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001c\u0010\u000eJ\u001b\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00180\u001dH\u0017¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004H×\u0001¢\u0006\u0004\b \u0010\u0010R\u0017\u0010!\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u000eR\u001a\u0010$\u001a\u00020\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010\u0010R\u001a\u0010'\u001a\u00020\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010%\u001a\u0004\b(\u0010\u0010R\u001a\u0010)\u001a\u00020\u00078\u0007X\u0087\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\u0013R\u001a\u0010,\u001a\u00020\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010%\u001a\u0004\b-\u0010\u0010R\u001a\u0010.\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010\"\u001a\u0004\b/\u0010\u000e"}, d2 = {"Lcom/appsflyer/api/models/PricingPhases;", "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1z;", "", "p0", "", "p1", "p2", "", "p3", "p4", "p5", "<init>", "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V", "component1", "()I", "component2", "()Ljava/lang/String;", "component3", "component4", "()J", "component5", "component6", "copy", "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lcom/appsflyer/api/models/PricingPhases;", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toJsonMap", "()Ljava/util/Map;", "toString", "billingCycleCount", "I", "getBillingCycleCount", "billingPeriod", "Ljava/lang/String;", "getBillingPeriod", "formattedPrice", "getFormattedPrice", "priceAmountMicros", "J", "getPriceAmountMicros", "priceCurrencyCode", "getPriceCurrencyCode", "recurrenceMode", "getRecurrenceMode"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class PricingPhases implements AFPurchaseConnectorA1z {
    private final int billingCycleCount;
    private final String billingPeriod;
    private final String formattedPrice;
    private final long priceAmountMicros;
    private final String priceCurrencyCode;
    private final int recurrenceMode;

    public PricingPhases(int i, String str, String str2, long j, String str3, int i2) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        this.billingCycleCount = i;
        this.billingPeriod = str;
        this.formattedPrice = str2;
        this.priceAmountMicros = j;
        this.priceCurrencyCode = str3;
        this.recurrenceMode = i2;
    }

    public static /* synthetic */ PricingPhases copy$default(PricingPhases pricingPhases, int i, String str, String str2, long j, String str3, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = pricingPhases.billingCycleCount;
        }
        if ((i3 & 2) != 0) {
            str = pricingPhases.billingPeriod;
        }
        if ((i3 & 4) != 0) {
            str2 = pricingPhases.formattedPrice;
        }
        if ((i3 & 8) != 0) {
            j = pricingPhases.priceAmountMicros;
        }
        if ((i3 & 16) != 0) {
            str3 = pricingPhases.priceCurrencyCode;
        }
        if ((i3 & 32) != 0) {
            i2 = pricingPhases.recurrenceMode;
        }
        long j2 = j;
        String str4 = str2;
        return pricingPhases.copy(i, str, str4, j2, str3, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getBillingCycleCount() {
        return this.billingCycleCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBillingPeriod() {
        return this.billingPeriod;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getRecurrenceMode() {
        return this.recurrenceMode;
    }

    public final PricingPhases copy(int p0, String p1, String p2, long p3, String p4, int p5) {
        Intrinsics.checkNotNullParameter(p1, "");
        Intrinsics.checkNotNullParameter(p2, "");
        Intrinsics.checkNotNullParameter(p4, "");
        return new PricingPhases(p0, p1, p2, p3, p4, p5);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof PricingPhases)) {
            return false;
        }
        PricingPhases pricingPhases = (PricingPhases) p0;
        return this.billingCycleCount == pricingPhases.billingCycleCount && Intrinsics.areEqual(this.billingPeriod, pricingPhases.billingPeriod) && Intrinsics.areEqual(this.formattedPrice, pricingPhases.formattedPrice) && this.priceAmountMicros == pricingPhases.priceAmountMicros && Intrinsics.areEqual(this.priceCurrencyCode, pricingPhases.priceCurrencyCode) && this.recurrenceMode == pricingPhases.recurrenceMode;
    }

    public final int getBillingCycleCount() {
        return this.billingCycleCount;
    }

    public final String getBillingPeriod() {
        return this.billingPeriod;
    }

    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    public final long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public final int getRecurrenceMode() {
        return this.recurrenceMode;
    }

    public final int hashCode() {
        return (((((((((Integer.hashCode(this.billingCycleCount) * 31) + this.billingPeriod.hashCode()) * 31) + this.formattedPrice.hashCode()) * 31) + Long.hashCode(this.priceAmountMicros)) * 31) + this.priceCurrencyCode.hashCode()) * 31) + Integer.hashCode(this.recurrenceMode);
    }

    public final Map<String, Object> toJsonMap() {
        return MapsKt.mutableMapOf(TuplesKt.to("billing_cycle_count", Integer.valueOf(this.billingCycleCount)), TuplesKt.to("billing_period", this.billingPeriod), TuplesKt.to("formatted_price", this.formattedPrice), TuplesKt.to("price_amount_micros", Long.valueOf(this.priceAmountMicros)), TuplesKt.to("price_currency_code", this.priceCurrencyCode), TuplesKt.to("recurrence_mode", Integer.valueOf(this.recurrenceMode)));
    }

    public final String toString() {
        return "PricingPhases(billingCycleCount=" + this.billingCycleCount + ", billingPeriod=" + this.billingPeriod + ", formattedPrice=" + this.formattedPrice + ", priceAmountMicros=" + this.priceAmountMicros + ", priceCurrencyCode=" + this.priceCurrencyCode + ", recurrenceMode=" + this.recurrenceMode + ")";
    }
}
