package com.unity3d.player.a;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: renamed from: com.unity3d.player.a.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewOnKeyListenerC4086b implements View.OnKeyListener {
    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        return i == 4 && keyEvent.getAction() == 1;
    }
}
