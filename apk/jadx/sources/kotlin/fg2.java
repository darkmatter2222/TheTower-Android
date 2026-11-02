package kotlin;

import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fg2 implements rh3 {
    public final kd2 a;
    public final String b;
    public final ex0 c;
    public final o21 d;

    public fg2(kd2 omid, String afmaVersion, ex0 flags, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = omid;
        this.b = afmaVersion;
        this.c = flags;
        this.d = gmaUtil;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.OMID;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        String strG;
        String str;
        if (CollectionsKt.contains(this.c.i0(), this.a.g()) && this.d.c()) {
            strG = null;
            str = null;
        } else {
            strG = this.a.g();
            str = this.c.j0() + this.b;
        }
        return new q01(new eg2(this.a.g(), strG, str));
    }
}
