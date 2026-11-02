package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hb3 extends nc1 {
    public final CoroutineScope c;
    public final ex0 d;
    public final jb3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hb3(CoroutineScope backgroundScope, ex0 flags, jb3 sdkCore) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sdkCore, "sdkCore");
        this.c = backgroundScope;
        this.d = flags;
        this.e = sdkCore;
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        eb3 eb3Var = this.d.s;
        eb3Var.getClass();
        Intrinsics.checkNotNullParameter("gads:initialize_sdk_core_as_init_task:enabled", C3510b4.i.W);
        if (((Boolean) eb3Var.a("gads:initialize_sdk_core_as_init_task:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            CoroutineScope coroutineScope = this.c;
            gb3 block = new gb3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
