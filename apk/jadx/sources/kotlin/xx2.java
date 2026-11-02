package kotlin;

import android.net.Uri;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class xx2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ yx2 a;
    public final /* synthetic */ v01 b;
    public final /* synthetic */ List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xx2(yx2 yx2Var, v01 v01Var, List list, Continuation continuation) {
        super(2, continuation);
        this.a = yx2Var;
        this.b = v01Var;
        this.c = list;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xx2(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xx2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        p005kotlin.Pair pair;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        yx2 yx2Var = this.a;
        i01 i01Var = (i01) this.b;
        List list = this.c;
        m01 m01Var = yx2.u;
        yx2Var.getClass();
        if ((i01Var instanceof j01) && (((j01) i01Var).c instanceof InterruptedIOException)) {
            pair = new p005kotlin.Pair("0.2.0.0", "timeout");
        } else {
            pair = i01Var instanceof k01 ? new p005kotlin.Pair("0.6.0.0", String.valueOf(((k01) i01Var).c)) : new p005kotlin.Pair("0.6.0.0", "fetch failed");
        }
        String str = (String) pair.component1();
        String str2 = (String) pair.component2();
        vw3 vw3Var = yx2Var.s;
        ArrayList uris = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String str3 = str2;
            uris.add(Uri.parse(StringsKt.replace$default(StringsKt.replace$default(string, "@gw_adnetstatus@", str, false, 4, (Object) null), "@error_code@", str3, false, 4, (Object) null)));
            str2 = str3;
        }
        vw3Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        Iterator it2 = uris.iterator();
        while (it2.hasNext()) {
            vw3Var.e.mo4525trySendJP2dKIU(new p005kotlin.Pair((Uri) it2.next(), null));
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
