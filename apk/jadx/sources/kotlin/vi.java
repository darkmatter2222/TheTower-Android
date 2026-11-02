package kotlin;

import androidx.datastore.core.DataStore;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vi {
    public final ks1 a;

    public vi(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        ui uiVar;
        if (continuation instanceof ui) {
            uiVar = (ui) continuation;
            int i = uiVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                uiVar.c = i - Integer.MIN_VALUE;
            } else {
                uiVar = new ui(this, continuation);
            }
        } else {
            uiVar = new ui(this, continuation);
        }
        Object objFirstOrNull = uiVar.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uiVar.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
            Flow data = ((DataStore) this.a.get()).getData();
            uiVar.c = 1;
            objFirstOrNull = FlowKt.firstOrNull(data, uiVar);
            if (objFirstOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
        }
        ri riVar = (ri) objFirstOrNull;
        if (riVar != null) {
            return riVar.w();
        }
        return null;
    }
}
