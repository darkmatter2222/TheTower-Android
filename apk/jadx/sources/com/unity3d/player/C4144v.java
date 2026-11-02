package com.unity3d.player;

import android.view.KeyEvent;
import android.widget.TextView;

/* JADX INFO: renamed from: com.unity3d.player.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4144v implements TextView.OnEditorActionListener {
    public final /* synthetic */ AbstractC4146w a;

    public C4144v(AbstractC4146w abstractC4146w) {
        this.a = abstractC4146w;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            AbstractC4146w abstractC4146w = this.a;
            abstractC4146w.a(abstractC4146w.b(), false);
        }
        return false;
    }
}
