package com.google.android.libraries.ads.mobile.sdk.internal.offline;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import java.util.concurrent.ExecutorService;
import kotlin.a01;
import kotlin.ac2;
import kotlin.cc2;
import kotlin.ic2;
import kotlin.ja1;
import kotlin.k70;
import kotlin.nj0;
import kotlin.sz;
import kotlin.vf0;
import kotlin.xb2;
import kotlin.yb2;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/offline/OfflinePingSender;", "Landroidx/work/Worker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class OfflinePingSender extends Worker {
    public static final /* synthetic */ int a = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflinePingSender(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        try {
            a01.a.getClass();
            ac2 ac2Var = (ac2) ((vf0) zz0.a()).s1.get();
            ac2Var.getClass();
            BuildersKt__Builders_commonKt.launch$default(ac2Var.a, null, null, new xb2(ac2Var, new yb2(ac2Var, null), null), 3, null);
        } catch (Exception unused) {
            int i = getInputData().getInt("OFFLINE_DATABASE_VERSION", 1);
            long j = getInputData().getLong("HTTP_CLIENT_TIMEOUT", 20L);
            String string = getInputData().getString("USER_AGENT");
            if (string == null) {
                ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
                return resultFailure;
            }
            InitializationConfig initializationConfigBuild = new InitializationConfig.Builder("offline-ping-sender").build();
            ja1 ja1Var = new ja1();
            ja1Var.a = initializationConfigBuild;
            sz szVar = new sz(ja1Var);
            CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) szVar.d));
            ic2 ic2Var = new ic2(string);
            Duration.Companion companion = Duration.INSTANCE;
            DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
            Context applicationContext = getApplicationContext();
            ExecutorCoroutineDispatcher executorCoroutineDispatcherFrom = ExecutorsKt.from((ExecutorService) szVar.d);
            Intrinsics.checkNotNull(applicationContext);
            cc2 cc2Var = new cc2(new k70(CoroutineScope, executorCoroutineDispatcherFrom, null, szVar, ic2Var, applicationContext, null, null, null));
            Context applicationContext2 = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            applicationContext2.getClass();
            ac2 ac2Var2 = (ac2) new nj0(applicationContext2, Integer.valueOf(i), Long.valueOf(j), ic2Var, cc2Var, CoroutineScope).g.get();
            ac2Var2.getClass();
            BuildersKt__Builders_commonKt.launch$default(ac2Var2.a, null, null, new xb2(ac2Var2, new yb2(ac2Var2, null), null), 3, null);
        }
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(resultSuccess, "success(...)");
        return resultSuccess;
    }
}
