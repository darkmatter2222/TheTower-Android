package kotlin;

import com.google.gson.JsonObject;
import com.ironsource.C3658j8;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class f24 implements o24 {
    public final CoroutineScope a;
    public final Optional b;
    public final zy c;
    public final String d;

    public f24(CoroutineScope uiScope, Optional optionalWebView, zy commonConfiguration, String afmaVersion) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        this.a = uiScope;
        this.b = optionalWebView;
        this.c = commonConfiguration;
        this.d = afmaVersion;
    }

    @Override // kotlin.o24
    public final p005kotlin.Unit a(boolean z) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.b);
        if (r31Var == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        String str = z ? "1" : "0";
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(C3658j8.k, str);
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new e24(r31Var, jsonObject, z, this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
