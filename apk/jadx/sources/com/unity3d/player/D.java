package com.unity3d.player;

import android.content.Context;
import android.widget.EditText;

/* JADX INFO: loaded from: classes5.dex */
public final class D extends AbstractC4146w {
    public DialogC4150y h;

    public D(Context context, UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        super(context, unityPlayerForActivityOrService);
    }

    @Override // com.unity3d.player.a.r
    public final void a() {
        this.h.show();
    }

    @Override // com.unity3d.player.AbstractC4146w, com.unity3d.player.a.r
    public final void a(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2, int i2, boolean z5, boolean z6) {
        DialogC4150y dialogC4150y = new DialogC4150y(this.a, this.b);
        this.h = dialogC4150y;
        dialogC4150y.a(this, z5, z6);
        this.h.setOnDismissListener(new com.unity3d.player.a.H(this));
        this.e = z6;
        setupTextInput(str, i, z, z2, z3, z4, str2, i2);
        setHideInputField(z5);
        this.b.getFrameLayout().getViewTreeObserver().addOnGlobalLayoutListener(new com.unity3d.player.a.I(this));
        this.c.requestFocus();
        this.h.setOnCancelListener(new com.unity3d.player.a.J(this));
    }

    @Override // com.unity3d.player.AbstractC4146w
    public EditText createEditText(AbstractC4146w abstractC4146w) {
        return new C(this, this.a, abstractC4146w);
    }

    @Override // com.unity3d.player.a.r
    public final void hide() {
        this.h.dismiss();
    }

    public void reportSoftInputArea() {
        if (this.h.isShowing()) {
            this.b.reportSoftInputArea(this.h.a());
        }
    }

    @Override // com.unity3d.player.AbstractC4146w, com.unity3d.player.a.r
    public final void setHideInputField(boolean z) {
        this.d = z;
        this.h.a(z);
    }
}
