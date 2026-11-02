package com.unity3d.player;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.EditText;

/* JADX INFO: loaded from: classes5.dex */
public final class A extends EditText {
    public final /* synthetic */ AbstractC4146w a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(Context context, AbstractC4146w abstractC4146w) {
        super(context);
        this.a = abstractC4146w;
    }

    @Override // android.widget.TextView
    public final void onEditorAction(int i) {
        if (i == 6) {
            AbstractC4146w abstractC4146w = this.a;
            abstractC4146w.a(abstractC4146w.b(), false);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (keyEvent.getAction() == 1) {
                AbstractC4146w abstractC4146w = this.a;
                abstractC4146w.a(abstractC4146w.b(), false);
            }
            return true;
        }
        if (i == 84) {
            return true;
        }
        if (i != 66 || keyEvent.getAction() != 0 || (getInputType() & 131072) != 0) {
            return super.onKeyPreIme(i, keyEvent);
        }
        AbstractC4146w abstractC4146w2 = this.a;
        abstractC4146w2.a(abstractC4146w2.b(), false);
        return true;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        this.a.b.reportSoftInputSelection(i, i2 - i);
    }
}
