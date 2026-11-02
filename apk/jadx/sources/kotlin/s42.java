package kotlin;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class s42 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ JsonArray b;
    public final /* synthetic */ v42 c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s42(v42 v42Var, JsonArray jsonArray, Continuation continuation, boolean z) {
        super(2, continuation);
        this.b = jsonArray;
        this.c = v42Var;
        this.d = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        s42 s42Var = new s42(this.c, this.b, continuation, this.d);
        s42Var.a = obj;
        return s42Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((s42) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        JsonArray jsonArray = this.b;
        v42 v42Var = this.c;
        boolean z = this.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray, 10));
        Iterator<JsonElement> it = jsonArray.iterator();
        while (it.hasNext()) {
            arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new r42(v42Var, it.next(), z, null), 3, null));
        }
        return arrayList;
    }
}
