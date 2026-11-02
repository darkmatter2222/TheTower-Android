package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.GmsRpc;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@17.4.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzae implements Continuation {
    static final /* synthetic */ zzae zza = new zzae();

    private /* synthetic */ zzae() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(Task task) throws IOException {
        if (task.isSuccessful()) {
            return (Bundle) task.getResult();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(task.getException());
            String.valueOf(strValueOf);
            Log.d("Rpc", "Error making request: ".concat(String.valueOf(strValueOf)));
        }
        throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE, task.getException());
    }
}
