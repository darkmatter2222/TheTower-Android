package kotlin;

import android.content.Intent;
import androidx.webkit.internal.AssetHelper;
import com.ironsource.C3510b4;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class gd3 implements r41 {
    public final o21 a;

    public gd3(o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = gmaUtil;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3510b4.i.K0);
        String str2 = (String) map.get("title");
        if (str == null || StringsKt.isBlank(str)) {
            return p005kotlin.Unit.INSTANCE;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", str);
        if (str2 != null && !StringsKt.isBlank(str2)) {
            intent.putExtra("android.intent.extra.TITLE", str2);
        }
        this.a.a(intent);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_SHARE_SHEET;
    }
}
