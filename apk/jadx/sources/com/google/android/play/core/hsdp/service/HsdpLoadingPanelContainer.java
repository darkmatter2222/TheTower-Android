package com.google.android.play.core.hsdp.service;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class HsdpLoadingPanelContainer extends FrameLayout {
    private Runnable zza;

    public HsdpLoadingPanelContainer(Context context) {
        super(context);
    }

    public HsdpLoadingPanelContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HsdpLoadingPanelContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public HsdpLoadingPanelContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Runnable runnable = this.zza;
        if (runnable != null) {
            removeCallbacks(runnable);
            post(this.zza);
        }
    }

    public void setOnConfigurationChangedListener(Runnable runnable) {
        this.zza = runnable;
    }
}
