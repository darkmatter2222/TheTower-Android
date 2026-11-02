package com.unity3d.player;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.EditText;

/* JADX INFO: loaded from: classes5.dex */
public final class C extends EditText {
    public final /* synthetic */ AbstractC4146w a;
    public final /* synthetic */ D b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(D d, Context context, AbstractC4146w abstractC4146w) {
        super(context);
        this.b = d;
        this.a = abstractC4146w;
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        com.unity3d.player.a.x xVar;
        com.unity3d.player.a.w wVar;
        Runnable runnable;
        if (i == 4) {
            if (keyEvent.getAction() == 1 && (xVar = this.b.h.e) != null && (wVar = xVar.a) != null && (runnable = wVar.a) != null) {
                runnable.run();
            }
            return true;
        }
        if (i == 84) {
            return true;
        }
        if (i == 66 && keyEvent.getAction() == 0 && (getInputType() & 131072) == 0) {
            AbstractC4146w abstractC4146w = this.a;
            abstractC4146w.a(abstractC4146w.b(), false);
            return true;
        }
        if (i != 111 || keyEvent.getAction() != 0) {
            return super.onKeyPreIme(i, keyEvent);
        }
        AbstractC4146w abstractC4146w2 = this.a;
        abstractC4146w2.a(abstractC4146w2.b(), true);
        return true;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        this.a.b.reportSoftInputSelection(i, i2 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            requestFocus();
            this.a.c();
        }
    }
}
