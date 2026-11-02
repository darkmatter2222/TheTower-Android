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
public final class f52 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ JsonArray b;
    public final /* synthetic */ g52 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f52(JsonArray jsonArray, g52 g52Var, Continuation continuation) {
        super(2, continuation);
        this.b = jsonArray;
        this.c = g52Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        f52 f52Var = new f52(this.b, this.c, continuation);
        f52Var.a = obj;
        return f52Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((f52) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        JsonArray jsonArray = this.b;
        g52 g52Var = this.c;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray, 10));
        Iterator<JsonElement> it = jsonArray.iterator();
        while (it.hasNext()) {
            arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new e52(it.next(), g52Var, null), 3, null));
        }
        return arrayList;
    }
}
