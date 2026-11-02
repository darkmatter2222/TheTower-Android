package kotlin;

import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class n04 implements gj1 {
    public final r14 a;
    public final ex0 b;

    public n04(r14 webViewProfileWrapper, ex0 flags) {
        Intrinsics.checkNotNullParameter(webViewProfileWrapper, "webViewProfileWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = webViewProfileWrapper;
        this.b = flags;
    }

    @Override // kotlin.gj1
    public final Object a(Map map, Continuation continuation) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:webview_prefetch_resource_url_header", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("X-Afma-Creative-Resource-Urls", "defaultValue");
        List list = (List) map.get((String) ex0Var.a("gads:webview_prefetch_resource_url_header", "X-Afma-Creative-Resource-Urls", yr.o));
        if (list == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return p005kotlin.Unit.INSTANCE;
        }
        r14 r14Var = this.a;
        r14Var.getClass();
        Object objA = r14.a(r14Var, arrayList, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
