package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;

/* JADX INFO: loaded from: classes4.dex */
public interface F6 {
    void a(Activity activity);

    void a(C3859u6 c3859u6);

    void a(C3859u6 c3859u6, IronSourceError ironSourceError);

    void a(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);

    void b(C3859u6 c3859u6, IronSourceError ironSourceError);

    void b(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);

    void c(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);

    void loadAd();
}
