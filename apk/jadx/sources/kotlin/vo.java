package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import kotlinx.coroutines.channels.Channel;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class vo {
    public static Channel a(String adResponse, AdLoadCallback adLoadCallback) {
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        zz0 zz0Var = a01.a;
        zz0Var.getClass();
        cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
        zz0Var.getClass();
        vf0 vf0Var = ((vf0) zz0.a()).c;
        adResponse.getClass();
        wh0 wh0Var = new wh0(vf0Var, j53.f, adResponse, Boolean.FALSE);
        cm1Var.a((Function1) new to((zy2) wh0Var.i.get(), adLoadCallback, null));
        return (Channel) wh0Var.h.get();
    }
}
