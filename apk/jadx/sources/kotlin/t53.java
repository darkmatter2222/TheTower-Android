package kotlin;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.ironsource.C3510b4;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class t53 implements r41 {
    public final Mutex a = MutexKt.Mutex(false);
    public final HashMap b = new HashMap();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        q53 q53Var;
        String str;
        t53 t53Var;
        String str2;
        String str3;
        Map map2;
        Mutex mutex;
        if (continuation instanceof q53) {
            q53Var = (q53) continuation;
            int i = q53Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                q53Var.i = i - Integer.MIN_VALUE;
            } else {
                q53Var = new q53(this, continuation);
            }
        } else {
            q53Var = new q53(this, continuation);
        }
        Object obj = q53Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = q53Var.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            String str4 = (String) map.get("id");
            if (str4 == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            str = (String) map.get(C3510b4.g.e);
            String str5 = (String) map.get("result");
            Mutex mutex2 = this.a;
            q53Var.a = this;
            q53Var.b = map;
            q53Var.c = str4;
            q53Var.d = str;
            q53Var.e = str5;
            q53Var.f = mutex2;
            q53Var.i = 1;
            if (mutex2.lock(null, q53Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            t53Var = this;
            str2 = str4;
            str3 = str5;
            map2 = map;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = q53Var.f;
            str3 = q53Var.e;
            str = q53Var.d;
            str2 = q53Var.c;
            map2 = q53Var.b;
            t53Var = q53Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            CompletableDeferred completableDeferred = (CompletableDeferred) t53Var.b.remove(str2);
            mutex.unlock(null);
            if (completableDeferred == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            String str6 = (String) map2.get("fail_stack");
            String str7 = (String) map2.get("fail_reason");
            if (str6 == null || str6.length() == 0) {
                str7 = "Unknown Fail Reason.";
            }
            String strTrimIndent = (str6 == null || str6.length() == 0) ? "" : StringsKt.trimIndent(str6);
            if (str != null && str.length() != 0) {
                completableDeferred.cancel(new CancellationException(str7 + strTrimIndent));
                xs3.a(str7 + strTrimIndent, null, 6);
                return p005kotlin.Unit.INSTANCE;
            }
            if (str3 == null) {
                completableDeferred.complete(null);
                return p005kotlin.Unit.INSTANCE;
            }
            try {
                completableDeferred.complete((JsonObject) new Gson().fromJson(str3, JsonObject.class));
            } catch (JsonSyntaxException e) {
                CancellationException cancellationException = new CancellationException(e.toString());
                cancellationException.initCause(e);
                completableDeferred.cancel(cancellationException);
            }
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(JsonObject jsonObject, Continuation continuation) {
        r53 r53Var;
        String strA;
        t53 t53Var;
        String str;
        JsonObject jsonObject2;
        JsonObject jsonObject3;
        Mutex mutex;
        if (continuation instanceof r53) {
            r53Var = (r53) continuation;
            int i = r53Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                r53Var.i = i - Integer.MIN_VALUE;
            } else {
                r53Var = new r53(this, continuation);
            }
        } else {
            r53Var = new r53(this, continuation);
        }
        Object obj = r53Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r53Var.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            String strA2 = ds1.a(jsonObject, "id", "");
            strA = ds1.a(jsonObject, C3510b4.g.e, "");
            JsonObject jsonObjectA = ds1.a(jsonObject, "result", (JsonObject) null);
            Mutex mutex2 = this.a;
            r53Var.a = this;
            r53Var.b = jsonObject;
            r53Var.c = strA2;
            r53Var.d = strA;
            r53Var.e = jsonObjectA;
            r53Var.f = mutex2;
            r53Var.i = 1;
            if (mutex2.lock(null, r53Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            t53Var = this;
            str = strA2;
            jsonObject2 = jsonObjectA;
            jsonObject3 = jsonObject;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = r53Var.f;
            jsonObject2 = r53Var.e;
            strA = r53Var.d;
            str = r53Var.c;
            jsonObject3 = r53Var.b;
            t53Var = r53Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            CompletableDeferred completableDeferred = (CompletableDeferred) t53Var.b.remove(str);
            mutex.unlock(null);
            if (completableDeferred == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            String strA3 = ds1.a(jsonObject3, "fail_stack", "");
            String strA4 = ds1.a(jsonObject3, "fail_reason", "");
            if (strA3.length() == 0) {
                strA4 = "Unknown Fail Reason.";
            }
            String strTrimIndent = strA3.length() == 0 ? "" : StringsKt.trimIndent(strA3);
            if (strA.length() > 0) {
                completableDeferred.cancel(new CancellationException(strA4 + strTrimIndent));
                xs3.a(strA4 + strTrimIndent, null, 6);
                return p005kotlin.Unit.INSTANCE;
            }
            if (jsonObject2 == null) {
                completableDeferred.complete(null);
                return p005kotlin.Unit.INSTANCE;
            }
            completableDeferred.complete(jsonObject2);
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, CompletableDeferred completableDeferred, Continuation continuation) {
        s53 s53Var;
        Mutex mutex;
        t53 t53Var;
        if (continuation instanceof s53) {
            s53Var = (s53) continuation;
            int i = s53Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                s53Var.g = i - Integer.MIN_VALUE;
            } else {
                s53Var = new s53(this, continuation);
            }
        } else {
            s53Var = new s53(this, continuation);
        }
        Object obj = s53Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s53Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.a;
            s53Var.a = this;
            s53Var.b = str;
            s53Var.c = completableDeferred;
            s53Var.d = mutex;
            s53Var.g = 1;
            if (mutex.lock(null, s53Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            t53Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = s53Var.d;
            completableDeferred = s53Var.c;
            String str2 = s53Var.b;
            t53Var = s53Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            t53Var.b.put(str, completableDeferred);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NAME_RESULT;
    }
}
