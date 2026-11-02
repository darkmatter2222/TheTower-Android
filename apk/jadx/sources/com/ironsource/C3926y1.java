package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3926y1 {

    @Deprecated
    public static final int c = 80;
    private final G1 a;
    private static final a b = new a(null);
    private static final char[] d = {'.', '/', G5.U, AbstractJsonLexerKt.BEGIN_OBJ};

    /* JADX INFO: renamed from: com.ironsource.y1$a */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final char[] a() {
            return C3926y1.d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3926y1() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public C3926y1(G1 appEventsManager) {
        Intrinsics.checkNotNullParameter(appEventsManager, "appEventsManager");
        this.a = appEventsManager;
    }

    public /* synthetic */ C3926y1(G1 g1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Pb.w.d().q() : g1);
    }

    private final String a(String str) {
        List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.substringBefore$default(str, '(', (String) null, 2, (Object) null), new char[]{' '}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        loop0: for (Object obj : listSplit$default) {
            String str2 = (String) obj;
            for (char c2 : d) {
                if (StringsKt.contains$default((CharSequence) str2, c2, false, 2, (Object) null)) {
                    break loop0;
                }
            }
            arrayList.add(obj);
        }
        return StringsKt.take(StringsKt.trim((CharSequence) CollectionsKt.joinToString$default(arrayList, " ", null, null, 0, null, null, 62, null)).toString(), 80);
    }

    public final void a(C1 report) {
        Intrinsics.checkNotNullParameter(report, "report");
        StringBuilder sb = new StringBuilder();
        sb.append("sig=" + report.u() + ";");
        sb.append("nf=" + report.v() + ";");
        sb.append("sdkAt=" + report.x() + ";");
        sb.append("imp=" + report.q() + ";");
        sb.append("exit=" + report.p() + ";");
        sb.append("at=" + report.m() + ";");
        sb.append("lag=" + report.s() + ";");
        sb.append("seq=" + report.t() + ";");
        sb.append("gh=2a5b4f8;");
        sb.append("proc=" + report.r() + ";");
        sb.append("desc=" + a(report.o()) + ";");
        sb.append("top=" + report.w());
        String string = sb.toString();
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        jSONObjectB.put("reason", report.n());
        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, string);
        this.a.a(new C5(D5.TROUBLESHOOTING_ANR_DETECTED, jSONObjectB));
    }

    public final void a(D1 summary) {
        Intrinsics.checkNotNullParameter(summary, "summary");
        StringBuilder sb = new StringBuilder();
        sb.append("total=" + summary.j() + ";");
        sb.append("noTrace=" + summary.l() + ";");
        sb.append("notOurs=" + summary.k() + ";");
        sb.append("stale=" + summary.h() + ";");
        sb.append("staleUnk=" + summary.i() + ";");
        sb.append("reported=" + summary.g() + ";");
        sb.append("gh=2a5b4f8");
        String string = sb.toString();
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, string);
        this.a.a(new C5(D5.TROUBLESHOOTING_ANR_SCAN, jSONObjectB));
    }
}
