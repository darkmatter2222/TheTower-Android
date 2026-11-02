package com.ironsource;

import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Cc {
    private final C3855u2 a;
    private final boolean b;

    public static final class a {
        public static final a a = new a();
        public static final String b = "adm";
        public static final String c = "isOneFlow";
        public static final String d = "isMultipleAdObjects";
        public static final String e = "adsInternalInfo";
        public static final String f = "success";
        public static final String g = "error";
        public static final String h = "data";

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cc() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public Cc(C3855u2 c3855u2, boolean z) {
        this.a = c3855u2;
        this.b = z;
    }

    public /* synthetic */ Cc(C3855u2 c3855u2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : c3855u2, (i & 2) != 0 ? false : z);
    }

    public final HashMap<String, String> a() {
        C3945z2 c3945z2G;
        HashMap<String, String> map = new HashMap<>();
        map.put("isOneFlow", String.valueOf(this.b));
        map.put("isMultipleAdObjects", "true");
        List<O> listA = Pb.w.d().K().a();
        String string = listA != null ? new JSONObject().put("success", true).put("data", listA).toString() : new JSONObject().put("success", false).put("error", "Failed to get ad internal info").toString();
        Intrinsics.checkNotNull(string);
        map.put(a.e, string);
        C3855u2 c3855u2 = this.a;
        if (c3855u2 != null && (c3945z2G = c3855u2.g()) != null) {
            map.put("adm", c3945z2G.a());
            map.putAll(c3945z2G.b());
        }
        return map;
    }
}
