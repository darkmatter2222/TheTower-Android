package kotlin;

import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.IntIterator;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.ranges.IntRange;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class ri2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ vi2 b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ri2(vi2 vi2Var, int i, Continuation continuation) {
        super(2, continuation);
        this.b = vi2Var;
        this.c = i;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ri2 ri2Var = new ri2(this.b, this.c, continuation);
        ri2Var.a = obj;
        return ri2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ri2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        vi2 vi2Var = this.b;
        IntRange intRangeUntil = RangesKt.until(0, this.c);
        vi2 vi2Var2 = this.b;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            arrayList.add(BuildersKt__Builders_commonKt.launch$default(coroutineScope, vi2Var2.b, null, new qi2(vi2Var2, null), 2, null));
        }
        vi2Var.g = arrayList;
        return p005kotlin.Unit.INSTANCE;
    }
}
