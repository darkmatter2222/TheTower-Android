package kotlin;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.List;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class cv implements r41 {
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("urls");
        if (str == null || str.length() == 0) {
            Splitter splitter = f01.a;
            f01.c("URLs missing in canOpenURLs GMSG.", null);
            return p005kotlin.Unit.INSTANCE;
        }
        List<String> listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
        JsonObject jsonObject = new JsonObject();
        PackageManager packageManager = r31Var.getContext().getPackageManager();
        for (String str2 : listSplit$default) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) str2, new String[]{";"}, false, 2, 2, (Object) null);
            jsonObject.addProperty(str2, Boxing.boxBoolean(packageManager.resolveActivity(new Intent(listSplit$default2.size() > 1 ? StringsKt.trim((CharSequence) listSplit$default2.get(1)).toString() : "android.intent.action.VIEW", Uri.parse(StringsKt.trim((CharSequence) listSplit$default2.get(0)).toString())), 65536) != null));
        }
        String str3 = (String) map.get("ad_mid");
        if (str3 != null && !StringsKt.isBlank(str3)) {
            jsonObject.addProperty("ad_mid", str3);
        }
        Object objA = r31Var.a(jsonObject, "openableURLs", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CAN_OPEN_URLS;
    }
}
