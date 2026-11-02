package com.ironsource.sdk;

import android.app.Activity;
import android.content.Context;
import com.ironsource.InterfaceC3736ne;
import com.ironsource.W9;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class SSAFactory {
    public static InterfaceC3736ne getPublisherInstance(Activity activity) throws Exception {
        return W9.b((Context) activity);
    }

    public static InterfaceC3736ne getPublisherTestInstance(Activity activity, int i) throws Exception {
        return W9.a(activity, i);
    }
}
