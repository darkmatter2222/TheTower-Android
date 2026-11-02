package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3009pN {
    public final int[] A00(View view, int i, int i2) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), c2621ix.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), c2621ix.height));
        return new int[]{view.getMeasuredWidth() + c2621ix.leftMargin + c2621ix.rightMargin, view.getMeasuredHeight() + c2621ix.bottomMargin + c2621ix.topMargin};
    }
}
