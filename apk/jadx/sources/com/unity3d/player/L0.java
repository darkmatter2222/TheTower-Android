package com.unity3d.player;

import android.view.ViewGroup;
import com.unity3d.player.a.C4091g;

/* JADX INFO: loaded from: classes5.dex */
public final class L0 implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ UnityPlayerForActivityOrService b;

    public L0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, float f) {
        this.b = unityPlayerForActivityOrService;
        this.a = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        U view = this.b.getView();
        if (view != null) {
            float f = this.a;
            C4091g c4091g = view.a;
            c4091g.a = f;
            ViewGroup.LayoutParams layoutParams = c4091g.getLayoutParams();
            if (f <= 0.0f) {
                layoutParams.width = -1;
                layoutParams.height = -1;
            } else {
                layoutParams.width = -2;
                layoutParams.height = -2;
            }
            c4091g.setLayoutParams(layoutParams);
        }
    }
}
