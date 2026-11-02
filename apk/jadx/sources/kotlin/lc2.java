package kotlin;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.libraries.ads.mobile.sdk.internal.offline.OfflinePingSender;
import com.google.common.base.Splitter;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lc2 {
    public final Context a;
    public final int b;
    public final long c;
    public final zw3 d;
    public final Mutex e;
    public boolean f;

    public lc2(Context context, int i, long j, zw3 userAgentProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.a = context;
        this.b = i;
        this.c = j;
        this.d = userAgentProvider;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(lc2 lc2Var, Continuation continuation) {
        jc2 jc2Var;
        Mutex mutex;
        WorkManager workManager;
        Constraints constraintsBuild;
        Class cls;
        String str;
        lc2 lc2Var2;
        Data.Builder builder;
        if (continuation instanceof jc2) {
            jc2Var = (jc2) continuation;
            int i = jc2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                jc2Var.j = i - Integer.MIN_VALUE;
            } else {
                jc2Var = new jc2(lc2Var, continuation);
            }
        } else {
            jc2Var = new jc2(lc2Var, continuation);
        }
        Object obj = jc2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jc2Var.j;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                Mutex mutex2 = lc2Var.e;
                jc2Var.a = lc2Var;
                jc2Var.b = mutex2;
                jc2Var.j = 1;
                if (mutex2.lock(null, jc2Var) != coroutine_suspended) {
                    mutex = mutex2;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex3 = jc2Var.b;
                lc2 lc2Var3 = jc2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex3;
                lc2Var = lc2Var3;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                builder = jc2Var.g;
                str = jc2Var.f;
                constraintsBuild = jc2Var.e;
                cls = jc2Var.d;
                workManager = jc2Var.c;
                mutex = jc2Var.b;
                lc2Var2 = jc2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            Data dataBuild = builder.putString(str, (String) obj).putLong("HTTP_CLIENT_TIMEOUT", lc2Var2.c).build();
            Intrinsics.checkNotNullExpressionValue(dataBuild, "build(...)");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(cls).setConstraints(constraintsBuild).setInputData(dataBuild).addTag("offline_ping_sender_work").build();
            Intrinsics.checkNotNullExpressionValue(oneTimeWorkRequestBuild, "build(...)");
            workManager.enqueue(oneTimeWorkRequestBuild);
            mutex.unlock(null);
            return p005kotlin.Unit.INSTANCE;
            if (!lc2Var.f) {
                try {
                    WorkManager.initialize(lc2Var.a, new Configuration.Builder().build());
                    lc2Var.f = true;
                } catch (Exception e) {
                    Splitter splitter = f01.a;
                    f01.a(new kc2(e));
                }
            }
            workManager = WorkManager.getInstance(lc2Var.a);
            workManager.cancelAllWorkByTag("offline_ping_sender_work");
            constraintsBuild = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
            Intrinsics.checkNotNullExpressionValue(constraintsBuild, "build(...)");
            int i3 = OfflinePingSender.a;
            Data.Builder builderPutInt = new Data.Builder().putInt("OFFLINE_DATABASE_VERSION", lc2Var.b);
            zw3 zw3Var = lc2Var.d;
            jc2Var.a = lc2Var;
            jc2Var.b = mutex;
            jc2Var.c = workManager;
            jc2Var.d = OfflinePingSender.class;
            jc2Var.e = constraintsBuild;
            jc2Var.f = "USER_AGENT";
            jc2Var.g = builderPutInt;
            jc2Var.j = 2;
            Object objA = zw3Var.a(jc2Var);
            if (objA != coroutine_suspended) {
                cls = OfflinePingSender.class;
                obj = objA;
                str = "USER_AGENT";
                lc2Var2 = lc2Var;
                builder = builderPutInt;
                Data dataBuild2 = builder.putString(str, (String) obj).putLong("HTTP_CLIENT_TIMEOUT", lc2Var2.c).build();
                Intrinsics.checkNotNullExpressionValue(dataBuild2, "build(...)");
                OneTimeWorkRequest oneTimeWorkRequestBuild2 = new OneTimeWorkRequest.Builder(cls).setConstraints(constraintsBuild).setInputData(dataBuild2).addTag("offline_ping_sender_work").build();
                Intrinsics.checkNotNullExpressionValue(oneTimeWorkRequestBuild2, "build(...)");
                workManager.enqueue(oneTimeWorkRequestBuild2);
                mutex.unlock(null);
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
