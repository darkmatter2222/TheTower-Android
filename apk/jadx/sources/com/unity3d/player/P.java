package com.unity3d.player;

import android.view.accessibility.AccessibilityManager;
import com.unity3d.player.UnityAccessibilityDelegate.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class P implements AccessibilityManager.AccessibilityStateChangeListener, AccessibilityManager.TouchExplorationStateChangeListener {
    public final /* synthetic */ UnityAccessibilityDelegate a;

    public P(UnityAccessibilityDelegate unityAccessibilityDelegate) {
        this.a = unityAccessibilityDelegate;
        unityAccessibilityDelegate.c.addAccessibilityStateChangeListener(this);
        unityAccessibilityDelegate.c.addTouchExplorationStateChangeListener(this);
        if (unityAccessibilityDelegate.c.isEnabled()) {
            onAccessibilityStateChanged(true);
        }
    }

    public void cleanup() {
        this.a.c.removeAccessibilityStateChangeListener(this);
        this.a.c.removeTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        if (!z) {
            this.a.b.setAccessibilityDelegate(null);
            this.a.b.setWillNotDraw(true);
            onTouchExplorationStateChanged(false);
        } else {
            UnityAccessibilityDelegate unityAccessibilityDelegate = this.a;
            unityAccessibilityDelegate.b.setAccessibilityDelegate(unityAccessibilityDelegate);
            this.a.b.setWillNotDraw(false);
            onTouchExplorationStateChanged(this.a.c.isTouchExplorationEnabled());
        }
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        boolean z2 = this.a.c.isEnabled() && z;
        if (z2) {
            UnityAccessibilityDelegate unityAccessibilityDelegate = this.a;
            unityAccessibilityDelegate.b.setOnHoverListener(unityAccessibilityDelegate.new a());
        } else {
            this.a.b.setOnHoverListener(null);
        }
        UnityAccessibilityDelegate unityAccessibilityDelegate2 = this.a;
        if (unityAccessibilityDelegate2.i == z2) {
            return;
        }
        unityAccessibilityDelegate2.i = z2;
        UnityPlayer unityPlayer = unityAccessibilityDelegate2.a;
        Objects.requireNonNull(unityPlayer);
        this.a.a.invokeOnMainThread((Runnable) new O(unityPlayer, z2));
    }
}
