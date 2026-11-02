package kotlin;

import android.net.Uri;
import android.os.Bundle;
import com.ironsource.C3510b4;
import com.unity3d.services.core.fid.Constants;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class qs0 {
    public final ls0 a;
    public final CoroutineScope b;
    public final ex0 c;

    public qs0(ls0 firebaseAnalyticsAdapter, CoroutineScope backgroundScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = firebaseAnalyticsAdapter;
        this.b = backgroundScope;
        this.c = flags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Uri.Builder builder, Continuation continuation) {
        ns0 ns0Var;
        Uri.Builder builder2;
        Uri.Builder builder3;
        Uri uri;
        qs0 qs0Var;
        if (continuation instanceof ns0) {
            ns0Var = (ns0) continuation;
            int i = ns0Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                ns0Var.g = i - Integer.MIN_VALUE;
            } else {
                ns0Var = new ns0(this, continuation);
            }
        } else {
            ns0Var = new ns0(this, continuation);
        }
        Object obj = ns0Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ns0Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Uri uriBuild = builder.build();
            ls0 ls0Var = this.a;
            ns0Var.a = this;
            ns0Var.b = builder;
            ns0Var.c = builder;
            ns0Var.d = uriBuild;
            ns0Var.g = 1;
            ls0Var.getClass();
            Object objA = ls0.a(ls0Var, ns0Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            builder2 = builder;
            builder3 = builder2;
            uri = uriBuild;
            obj = objA;
            qs0Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            uri = ns0Var.d;
            builder2 = ns0Var.c;
            builder3 = ns0Var.b;
            qs0Var = ns0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        if (str != null && uri.getQueryParameter("gmp_app_id") == null) {
            builder2.appendQueryParameter("gmp_app_id", str);
        }
        Object objA2 = qs0Var.a.a(Constants.GET_APP_INSTANCE_ID);
        String string = objA2 != null ? objA2.toString() : null;
        if (string != null && uri.getQueryParameter("fbs_aiid") == null) {
            builder2.appendQueryParameter("fbs_aiid", string);
        }
        return builder3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Uri uri, is0 is0Var, Bundle bundle, Continuation continuation) {
        ps0 ps0Var;
        qs0 qs0Var;
        Uri.Builder builder;
        is0 is0Var2;
        Bundle bundle2;
        if (continuation instanceof ps0) {
            ps0Var = (ps0) continuation;
            int i = ps0Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                ps0Var.g = i - Integer.MIN_VALUE;
            } else {
                ps0Var = new ps0(this, continuation);
            }
        } else {
            ps0Var = new ps0(this, continuation);
        }
        Object obj = ps0Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ps0Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:firebase_analytics_integration:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:firebase_analytics_integration:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                return uri;
            }
            Uri.Builder builderBuildUpon = uri.buildUpon();
            Intrinsics.checkNotNull(builderBuildUpon);
            String string = builderBuildUpon.build().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            if (!StringsKt.contains$default((CharSequence) string, (CharSequence) this.c.R(), false, 2, (Object) null)) {
                Uri uriBuild = builderBuildUpon.build();
                Intrinsics.checkNotNullExpressionValue(uriBuild, "build(...)");
                return uriBuild;
            }
            ps0Var.a = this;
            ps0Var.b = is0Var;
            ps0Var.c = bundle;
            ps0Var.d = builderBuildUpon;
            ps0Var.g = 1;
            if (a(builderBuildUpon, ps0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            qs0Var = this;
            builder = builderBuildUpon;
            is0Var2 = is0Var;
            bundle2 = bundle;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            builder = ps0Var.d;
            Bundle bundle3 = ps0Var.c;
            is0 is0Var3 = ps0Var.b;
            qs0 qs0Var2 = ps0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            qs0Var = qs0Var2;
            bundle2 = bundle3;
            is0Var2 = is0Var3;
        }
        Intrinsics.checkNotNull(builder);
        Object objA = qs0Var.a.a("generateEventId");
        String string2 = objA != null ? objA.toString() : null;
        if (string2 == null) {
            Uri uriBuild2 = builder.build();
            Intrinsics.checkNotNullExpressionValue(uriBuild2, "build(...)");
            return uriBuild2;
        }
        CoroutineScope coroutineScope = qs0Var.b;
        os0 block = new os0(qs0Var, is0Var2, bundle2, string2, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        String string3 = builder.build().toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        Uri uri2 = Uri.parse(StringsKt.replace$default(string3, qs0Var.c.R(), string2, false, 4, (Object) null));
        Intrinsics.checkNotNullExpressionValue(uri2, "parse(...)");
        return uri2;
    }
}
