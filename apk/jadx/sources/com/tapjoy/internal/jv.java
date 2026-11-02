package com.tapjoy.internal;

import android.app.RemoteInput;
import android.os.Bundle;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class jv {
    final String a;
    final CharSequence b;
    final CharSequence[] c;
    final boolean d;
    final Bundle e;
    final Set<String> f;

    static RemoteInput[] a(jv[] jvVarArr) {
        if (jvVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[jvVarArr.length];
        for (int i = 0; i < jvVarArr.length; i++) {
            jv jvVar = jvVarArr[i];
            remoteInputArr[i] = new RemoteInput.Builder(jvVar.a).setLabel(jvVar.b).setChoices(jvVar.c).setAllowFreeFormInput(jvVar.d).addExtras(jvVar.e).build();
        }
        return remoteInputArr;
    }
}
