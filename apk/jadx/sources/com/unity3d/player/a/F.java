package com.unity3d.player.a;

import com.unity3d.player.C4137r0;
import com.unity3d.player.ISoftInputListener;
import com.unity3d.player.M0;
import com.unity3d.player.RunnableC4139s0;

/* JADX INFO: loaded from: classes5.dex */
public final class F implements r {
    public C4137r0 a;
    public ISoftInputListener b = null;

    @Override // com.unity3d.player.a.r
    public final void a() {
    }

    @Override // com.unity3d.player.a.r
    public final void a(M0 m0) {
    }

    @Override // com.unity3d.player.a.r
    public final void a(C4137r0 c4137r0) {
        this.a = c4137r0;
    }

    @Override // com.unity3d.player.a.r
    public final void a(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2, int i2, boolean z5, boolean z6) {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener != null) {
            iSoftInputListener.show(str, i, z, z2, z3, z4, str2, i2, z5, z6);
        } else {
            t.Log(6, "Soft input listener is not set, cannot setup soft input");
        }
    }

    @Override // com.unity3d.player.a.r
    public final void hide() {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener == null) {
            t.Log(6, "Soft input listener is not set, cannot hide soft input");
            return;
        }
        iSoftInputListener.hide();
        C4137r0 c4137r0 = this.a;
        if (c4137r0 != null) {
            RunnableC4139s0 runnableC4139s0 = c4137r0.a;
            runnableC4139s0.a = true;
            if (runnableC4139s0.b) {
                runnableC4139s0.c.release();
            }
        }
    }

    @Override // com.unity3d.player.a.r
    public final boolean isConsumeOutsideTouchesEnabled() {
        return false;
    }

    @Override // com.unity3d.player.a.r
    public final void setCharacterLimit(int i) {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener != null) {
            iSoftInputListener.setCharacterLimit(i);
        } else {
            t.Log(6, "Soft input listener is not set, cannot set soft input character limit");
        }
    }

    @Override // com.unity3d.player.a.r
    public final void setHideInputField(boolean z) {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener != null) {
            iSoftInputListener.setHideInputField(z);
        } else {
            t.Log(6, "Soft input listener is not set, cannot set soft input field hidden");
        }
    }

    @Override // com.unity3d.player.a.r
    public final void setSelection(int i, int i2) {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener != null) {
            iSoftInputListener.setSelection(i, i2);
        } else {
            t.Log(6, "Soft input listener is not set, cannot set soft input selection");
        }
    }

    @Override // com.unity3d.player.a.r
    public final void setText(String str) {
        ISoftInputListener iSoftInputListener = this.b;
        if (iSoftInputListener != null) {
            iSoftInputListener.setText(str);
        } else {
            t.Log(6, "Soft input listener is not set, cannot set soft input text");
        }
    }
}
