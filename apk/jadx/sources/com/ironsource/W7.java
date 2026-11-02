package com.ironsource;

import java.util.List;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public enum W7 {
    UnknownProvider(0),
    DeliverySonic(1),
    MarketPlaceISX(3);

    private final int a;
    private static final /* synthetic */ EnumEntries g = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001e  */
        /* JADX WARN: Code duplicated, block: B:15:0x0021 A[RETURN] */
        public final W7 a(Integer num) {
            for (W7 w7 : W7.values()) {
                int iC = w7.c();
                if (num != null && iC == num.intValue()) {
                    if (w7 == null) {
                        return W7.UnknownProvider;
                    }
                    return w7;
                }
            }
            w7 = null;
            if (w7 == null) {
                return W7.UnknownProvider;
            }
            return w7;
        }

        public final W7 a(String dynamicDemandSourceId) {
            Intrinsics.checkNotNullParameter(dynamicDemandSourceId, "dynamicDemandSourceId");
            List listSplit$default = StringsKt.split$default((CharSequence) dynamicDemandSourceId, new String[]{"_"}, false, 0, 6, (Object) null);
            return listSplit$default.size() < 2 ? W7.UnknownProvider : a(StringsKt.toIntOrNull((String) listSplit$default.get(1)));
        }
    }

    W7(int i) {
        this.a = i;
    }

    public static EnumEntries<W7> b() {
        return g;
    }

    public final int c() {
        return this.a;
    }
}
