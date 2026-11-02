package com.google.firebase.auth.internal;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.Recaptcha;
import com.google.android.recaptcha.RecaptchaTasksClient;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbt implements zzbu {
    zzbt() {
    }

    @Override // com.google.firebase.auth.internal.zzbu
    public final Task<RecaptchaTasksClient> zza(Application application, String str) {
        return Recaptcha.fetchTaskClient(application, str);
    }
}
