package com.unity3d.player;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.unity3d.player.a.C4091g;

/* JADX INFO: loaded from: classes5.dex */
public final class U extends FrameLayout {
    public final C4091g a;
    public final UnityPlayerForActivityOrService b;
    public final com.unity3d.player.a.C c;

    public U(UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        super(unityPlayerForActivityOrService.getContext());
        Context context = unityPlayerForActivityOrService.getContext();
        this.c = new com.unity3d.player.a.C(context);
        this.b = unityPlayerForActivityOrService;
        C4091g c4091g = new C4091g(unityPlayerForActivityOrService);
        this.a = c4091g;
        c4091g.setId(context.getResources().getIdentifier("unitySurfaceView", "id", context.getPackageName()));
        unityPlayerForActivityOrService.applySurfaceViewSettings(c4091g);
        c4091g.getHolder().addCallback(new T(this));
        c4091g.setFocusable(true);
        c4091g.setFocusableInTouchMode(true);
        c4091g.setContentDescription(context.getResources().getString(context.getResources().getIdentifier("game_view_content_description", TypedValues.Custom.S_STRING, context.getPackageName())));
        addView(c4091g, new FrameLayout.LayoutParams(-1, -1, 17));
    }
}
