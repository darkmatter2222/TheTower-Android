package com.ironsource;

import android.content.Context;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.y9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3934y9 {
    public static final a a = new a(null);

    /* JADX INFO: renamed from: com.ironsource.y9$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final List<String> a() {
            return CollectionsKt.listOf((Object[]) new String[]{"AppLovin", "APS", "BidMachine", "Bigo", "Chartboost", "Fyber", "AdMob", "HyprMX", "InMobi", "IronSource", "Vungle", "Line", "Facebook", "Mintegral", "MobileFuse", "Moloco", "MyTarget", "Ogury", "Pangle", "PubMatic", "Smaato", "SuperAwesome", R6.H1, "Verve", "Voodoo", "Yandex", "YSO"});
        }

        public final void a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            C3952z9.b(context);
        }
    }

    @JvmStatic
    public static final List<String> a() {
        return a.a();
    }
}
