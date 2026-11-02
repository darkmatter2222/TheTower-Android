package kotlin;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zb2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ac2 b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zb2(ac2 ac2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.b = ac2Var;
        this.c = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zb2 zb2Var = new zb2(this.b, this.c, continuation);
        zb2Var.a = obj;
        return zb2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zb2) create((SQLiteDatabase) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.a;
        ac2 ac2Var = this.b;
        String str = this.c;
        String str2 = ac2.f;
        ac2Var.getClass();
        ContentValues contentValues = new ContentValues();
        rb2 rb2Var = rb2.READY_TO_PING;
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        ac2.a(this.b, sQLiteDatabase);
        return p005kotlin.Unit.INSTANCE;
    }
}
