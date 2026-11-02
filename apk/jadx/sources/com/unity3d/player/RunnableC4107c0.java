package com.unity3d.player;

import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.unity3d.player.a.AbstractC4087c;

/* JADX INFO: renamed from: com.unity3d.player.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4107c0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            ProgressBar progressBar = AbstractC4087c.b;
            if (progressBar != null) {
                if (AbstractC4087c.c != null) {
                    ViewGroup viewGroup = (ViewGroup) progressBar.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(AbstractC4087c.b);
                        viewGroup.removeView(AbstractC4087c.c);
                    }
                    AbstractC4087c.b = null;
                    AbstractC4087c.c = null;
                }
                AbstractC4087c.d = -1;
            }
        } catch (Exception e) {
            com.unity3d.player.a.t.Log(6, "Exception when hiding Activity Indicator " + e);
        }
    }
}
