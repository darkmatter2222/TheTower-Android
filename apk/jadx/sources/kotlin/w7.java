package kotlin;

import android.net.Uri;
import android.util.Base64;
import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class w7 implements v7 {
    public final vw3 a;
    public final ex0 b;
    public final g83 c;

    public w7(vw3 urlPinger, ex0 flags, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = urlPinger;
        this.b = flags;
        this.c = rootTraceCreator;
    }

    public final boolean a(o6 adQualityData) {
        Intrinsics.checkNotNullParameter(adQualityData, "adQualityData");
        yh1.f<String> fVarV = adQualityData.v();
        if (fVarV.isEmpty()) {
            return true;
        }
        g83 g83Var = this.c;
        s11 s11Var = s11.CUI_NAME_AQM_URL_PING;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strEncodeToString = Base64.encodeToString(((o6) ((n6) adQualityData.u()).i().b()).c(), 10);
                ArrayList arrayList = new ArrayList();
                rr3 rr3VarA = hs3.a(s11.CUI_NAME_AQM_URL_MACRO_EXPAND, CollectionsKt.emptyList(), true);
                try {
                    for (String str : fVarV) {
                        Intrinsics.checkNotNull(str);
                        ex0 ex0Var = this.b;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:ad_quality_macro", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("@gw_aq_data@", "defaultValue");
                        String str2 = (String) ex0Var.a("gads:ad_quality_macro", "@gw_aq_data@", yr.o);
                        Intrinsics.checkNotNull(strEncodeToString);
                        arrayList.add(Uri.parse(StringsKt.replace$default(str, str2, strEncodeToString, false, 4, (Object) null)));
                    }
                    Object obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    vw3 vw3Var = this.a;
                    List uris = CollectionsKt.toList(arrayList);
                    vw3Var.getClass();
                    Intrinsics.checkNotNullParameter(uris, "uris");
                    Iterator it = uris.iterator();
                    while (it.hasNext()) {
                        vw3Var.e.mo4525trySendJP2dKIU(new p005kotlin.Pair((Uri) it.next(), null));
                    }
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                } catch (Throwable th) {
                    try {
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(rr3VarA, th2);
                            throw th3;
                        }
                    }
                }
            } catch (Throwable th4) {
                try {
                    tu2VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        tu2VarA.a(th4);
                    }
                    if (th4 instanceof TimeoutCancellationException) {
                        throw new i21(th4);
                    }
                    if (th4 instanceof CancellationException) {
                        throw new wz0(th4);
                    }
                    if (th4 instanceof w01) {
                        throw th4;
                    }
                    throw new b01(th4);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(tu2VarA, th5);
                        throw th6;
                    }
                }
            }
        } else {
            rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                String strEncodeToString2 = Base64.encodeToString(((o6) ((n6) adQualityData.u()).i().b()).c(), 10);
                ArrayList arrayList2 = new ArrayList();
                rr3 rr3VarA3 = hs3.a(s11.CUI_NAME_AQM_URL_MACRO_EXPAND, CollectionsKt.emptyList(), true);
                try {
                    for (String str3 : fVarV) {
                        Intrinsics.checkNotNull(str3);
                        ex0 ex0Var2 = this.b;
                        ex0Var2.getClass();
                        Intrinsics.checkNotNullParameter("gads:ad_quality_macro", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("@gw_aq_data@", "defaultValue");
                        String str4 = (String) ex0Var2.a("gads:ad_quality_macro", "@gw_aq_data@", yr.o);
                        Intrinsics.checkNotNull(strEncodeToString2);
                        arrayList2.add(Uri.parse(StringsKt.replace$default(str3, str4, strEncodeToString2, false, 4, (Object) null)));
                    }
                    Object obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA3, null);
                    vw3 vw3Var2 = this.a;
                    List uris2 = CollectionsKt.toList(arrayList2);
                    vw3Var2.getClass();
                    Intrinsics.checkNotNullParameter(uris2, "uris");
                    Iterator it2 = uris2.iterator();
                    while (it2.hasNext()) {
                        vw3Var2.e.mo4525trySendJP2dKIU(new p005kotlin.Pair((Uri) it2.next(), null));
                    }
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                } catch (Throwable th7) {
                    try {
                        rr3VarA3.b(th7);
                        if (th7 instanceof v24) {
                            throw th7;
                        }
                        if (!(th7 instanceof TimeoutCancellationException) && !(th7 instanceof CancellationException)) {
                            rr3VarA3.a(th7);
                        }
                        if (th7 instanceof TimeoutCancellationException) {
                            throw new i21(th7);
                        }
                        if (th7 instanceof CancellationException) {
                            throw new wz0(th7);
                        }
                        if (th7 instanceof w01) {
                            throw th7;
                        }
                        throw new b01(th7);
                    } catch (Throwable th8) {
                        try {
                            throw th8;
                        } catch (Throwable th9) {
                            CloseableKt.closeFinally(rr3VarA3, th8);
                            throw th9;
                        }
                    }
                }
            } catch (Throwable th10) {
                try {
                    rr3VarA2.b(th10);
                    if (th10 instanceof v24) {
                        throw th10;
                    }
                    if (!(th10 instanceof TimeoutCancellationException) && !(th10 instanceof CancellationException)) {
                        rr3VarA2.a(th10);
                    }
                    if (th10 instanceof TimeoutCancellationException) {
                        throw new i21(th10);
                    }
                    if (th10 instanceof CancellationException) {
                        throw new wz0(th10);
                    }
                    if (th10 instanceof w01) {
                        throw th10;
                    }
                    throw new b01(th10);
                } catch (Throwable th11) {
                    try {
                        throw th11;
                    } catch (Throwable th12) {
                        CloseableKt.closeFinally(rr3VarA2, th11);
                        throw th12;
                    }
                }
            }
        }
        return true;
    }
}
