package com.unity3d.ads.core.data.model;

import com.ironsource.C3635i2;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmInline;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GatewayUrl.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002¨\u0006\u0013"}, d2 = {"Lcom/unity3d/ads/core/data/model/GatewayUrl;", "", "url", "", "constructor-impl", "(Ljava/lang/String;)Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "equals", "", C3635i2.d, "equals-impl", "(Ljava/lang/String;Ljava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(Ljava/lang/String;)I", "toString", "toString-impl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class GatewayUrl {
    private final String url;

    private /* synthetic */ GatewayUrl(String str) {
        this.url = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GatewayUrl m2751boximpl(String str) {
        return new GatewayUrl(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m2752constructorimpl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return url;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2753equalsimpl(String str, Object obj) {
        return (obj instanceof GatewayUrl) && Intrinsics.areEqual(str, ((GatewayUrl) obj).m2757unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2754equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2755hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2756toStringimpl(String str) {
        return "GatewayUrl(url=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m2753equalsimpl(this.url, obj);
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return m2755hashCodeimpl(this.url);
    }

    public String toString() {
        return m2756toStringimpl(this.url);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m2757unboximpl() {
        return this.url;
    }
}
