package kotlin;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fn3 implements GestureDetector.OnGestureListener {
    public final rm3 a;

    public fn3(rm3 core) {
        Intrinsics.checkNotNullParameter(core, "core");
        this.a = core;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent e2, float f, float f2) {
        NativeAd.SwipeGestureDirection swipeGestureDirection;
        rv0 rv0Var;
        r31 r31Var;
        Intrinsics.checkNotNullParameter(e2, "e2");
        if (motionEvent == null) {
            return false;
        }
        if (Math.abs(f) > Math.abs(f2)) {
            swipeGestureDirection = f > 0.0f ? NativeAd.SwipeGestureDirection.RIGHT : NativeAd.SwipeGestureDirection.LEFT;
        } else {
            if (f2 <= 0.0f) {
                if (f2 < 0.0f) {
                    swipeGestureDirection = NativeAd.SwipeGestureDirection.UP;
                }
                return false;
            }
            swipeGestureDirection = NativeAd.SwipeGestureDirection.DOWN;
        }
        if (swipeGestureDirection == ((rv0) this.a).e.getCustomClickSwipeGestureDirection() && (r31Var = (rv0Var = (rv0) this.a).m) != null) {
            BuildersKt__Builders_commonKt.launch$default(rv0Var.a, null, null, new iv0(r31Var, rv0Var, null), 3, null);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent e2, float f, float f2) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        return false;
    }
}
