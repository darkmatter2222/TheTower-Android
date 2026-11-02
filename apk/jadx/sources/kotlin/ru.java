package kotlin;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ru implements r41 {
    public final Context a;

    public ru(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        if (Build.VERSION.SDK_INT >= 30) {
            xs3.a("CanOpenAppGmsgHandler not enabled on R+ devices.", null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        String str = (String) map.get(C3510b4.i.V);
        if (str == null || str.length() == 0) {
            xs3.a("Package name missing in canOpenApp GMSG.", null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        PackageManager packageManager = this.a.getPackageManager();
        boolean z = (packageManager != null ? packageManager.getLaunchIntentForPackage(str) : null) != null;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(str, Boxing.boxBoolean(z));
        Object objA = r31Var.a(jsonObject, "openableApp", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CAN_OPEN_APP;
    }
}
