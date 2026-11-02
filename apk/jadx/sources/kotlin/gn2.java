package kotlin;

import android.content.Context;
import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gn2 implements rh3 {
    public final Context a;
    public final ao0 b;
    public final ex0 c;
    public final zd3 d;

    public gn2(Context context, ao0 displayUtil, ex0 flags, zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = context;
        this.b = displayUtil;
        this.c = flags;
        this.d = sharedSettingsDataStore;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.PHONE_ORIENTATION;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        fn2 fn2Var;
        gn2 gn2Var;
        dn2 dn2Var;
        if (continuation instanceof fn2) {
            fn2Var = (fn2) continuation;
            int i = fn2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                fn2Var.d = i - Integer.MIN_VALUE;
            } else {
                fn2Var = new fn2(this, continuation);
            }
        } else {
            fn2Var = new fn2(this, continuation);
        }
        Object objB = fn2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fn2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:phone_orientation:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:phone_orientation:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                zd3 zd3Var = this.d;
                fn2Var.a = this;
                fn2Var.d = 1;
                zd3Var.getClass();
                objB = zd3.b(zd3Var, fn2Var);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
                gn2Var = this;
            }
            return new q01(new en2(dn2.UNKNOWN));
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        gn2Var = fn2Var.a;
        p005kotlin.ResultKt.throwOnFailure(objB);
        if (!((Boolean) objB).booleanValue()) {
            int i3 = gn2Var.b.c(gn2Var.a).getResources().getConfiguration().orientation;
            if (i3 != 1) {
                dn2Var = i3 != 2 ? dn2.UNKNOWN : dn2.LANDSCAPE;
            } else {
                dn2Var = dn2.PORTRAIT;
            }
            return new q01(new en2(dn2Var));
        }
        return new q01(new en2(dn2.UNKNOWN));
    }
}
