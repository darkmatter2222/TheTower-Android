package com.google.android.gms.internal.games_v2;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.games.RecallAccess;
import com.google.android.gms.games.RecallClient;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzey extends GoogleApi implements RecallClient {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;
    private final zzaw zzd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzeu zzeuVar = new zzeu();
        zzb = zzeuVar;
        zzc = new Api("Recall.API", zzeuVar, clientKey);
    }

    public zzey(Context context, zzaw zzawVar) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zzd = zzawVar;
    }

    @Override // com.google.android.gms.games.RecallClient
    public final Task<RecallAccess> requestRecallAccess() {
        final TaskApiCall taskApiCallBuild = TaskApiCall.builder().setMethodKey(6742).setAutoResolveMissingFeatures(false).setFeatures(com.google.android.gms.games.zzd.zze).run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzex
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                ((zzal) ((zzft) obj).getService()).zzd(new zzev(this.zza, (TaskCompletionSource) obj2), "unusedServerClientId");
            }
        }).build();
        return this.zzd.zzd().onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.internal.games_v2.zzew
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final /* synthetic */ Task then(Object obj) {
                return this.zza.doRead(taskApiCallBuild);
            }
        });
    }
}
