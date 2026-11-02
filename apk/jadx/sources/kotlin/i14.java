package kotlin;

import androidx.webkit.Profile;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i14 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r14 a;
    public final /* synthetic */ Profile b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i14(Profile profile, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.a = r14Var;
        this.b = profile;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i14(this.b, this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        r14 r14Var = this.a;
        return new i14(this.b, r14Var, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ex0 ex0Var = this.a.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"https://fonts.googleapis.com", "https://googleads.g.doubleclick.net", "https://lh3.googleusercontent.com", "https://pagead2.googlesyndication.com", "https://pubads.g.doubleclick.net", "https://redirector.gvt1.com", "https://redirector.gvt1-cn.com", "https://static.doubleclick.net", "https://s0.2mdn.net", "https://s1.2mdn.net", "https://tpc.googlesyndication.com", "https://www.googletagservices.com", "https://www.gstatic.com"});
        Intrinsics.checkNotNullParameter("gads:webview_preconnect_domain_list", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        for (String url : (List) ex0Var.a("gads:webview_preconnect_domain_list", defaultValue, yr.g)) {
            AtomicBoolean atomicBoolean = az3.a;
            Profile profile = this.b;
            Intrinsics.checkNotNullParameter(profile, "profile");
            Intrinsics.checkNotNullParameter(url, "url");
            if (az3.c.get()) {
                try {
                    profile.preconnect(url);
                } catch (Throwable unused) {
                    az3.c.set(false);
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
