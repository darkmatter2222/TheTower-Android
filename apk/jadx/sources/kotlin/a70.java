package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class a70 extends Lambda implements Function0 {
    public final /* synthetic */ k70 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a70(k70 k70Var) {
        super(0);
        this.a = k70Var;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003e  */
    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        int iIntValue;
        k70 k70Var = this.a;
        boolean zBooleanValue = true;
        if (k70Var.g == null) {
            ex0 ex0Var = k70Var.b;
            if (ex0Var != null) {
                Intrinsics.checkNotNullParameter("gads:use_cronet_fallback_provider_for_offline_client:enabled", C3510b4.i.W);
                zBooleanValue = ((Boolean) ex0Var.a("gads:use_cronet_fallback_provider_for_offline_client:enabled", Boolean.TRUE, yr.b)).booleanValue();
            }
            return Boolean.valueOf(zBooleanValue);
        }
        ex0 ex0Var2 = k70Var.b;
        if (ex0Var2 != null) {
            Intrinsics.checkNotNullParameter("gads:initialize_device_tier_manager_in_cronet_provider:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var2.a("gads:initialize_device_tier_manager_in_cronet_provider:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                this.a.g.b();
            }
        } else {
            this.a.g.b();
        }
        ex0 ex0Var3 = this.a.b;
        if (ex0Var3 != null) {
            int i = ex0.B;
            Intrinsics.checkNotNullParameter("gads:cronet_fallback_device_memory_threshold", C3510b4.i.W);
            iIntValue = ((Number) ex0Var3.a("gads:cronet_fallback_device_memory_threshold", Integer.valueOf(i), yr.f)).intValue();
        } else {
            iIntValue = ex0.B;
        }
        return Boolean.valueOf(((mm0) this.a.g.b.get()).getNumber() <= iIntValue);
    }
}
