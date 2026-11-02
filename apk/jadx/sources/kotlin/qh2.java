package kotlin;

import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qh2 extends nh2 {
    public final /* synthetic */ uh2 a;
    public final /* synthetic */ ck1 b;

    public qh2(uh2 uh2Var, ck1 ck1Var) {
        this.a = uh2Var;
        this.b = ck1Var;
    }

    @Override // kotlin.nh2
    public final void a(ComponentActivity activity, LinearLayout layout) {
        int i;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(layout, "layout");
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setTag("layout");
        frameLayout.setBackgroundColor(-1);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        String str = this.a.l;
        if (Intrinsics.areEqual(str, "TOP")) {
            i = 49;
        } else {
            i = Intrinsics.areEqual(str, "BOTTOM") ? 81 : 17;
        }
        layoutParams.gravity = i;
        int i2 = this.a.o;
        if (i2 > 0) {
            layoutParams.width = (int) TypedValue.applyDimension(1, i2, activity.getResources().getDisplayMetrics());
        }
        View view = this.b.n;
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        frameLayout.addView(view, layoutParams);
        layout.setBackgroundColor(-1);
        layout.addView(frameLayout);
    }

    @Override // kotlin.h0
    public final void onDestroy() {
        this.b.destroy();
    }
}
