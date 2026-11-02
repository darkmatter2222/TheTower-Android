package com.applovin.impl;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes2.dex */
public class e2 extends x1 {
    public e2(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.l lVar) {
        super(bVar, activity, lVar);
    }

    @Override // com.applovin.impl.x1
    public /* bridge */ /* synthetic */ void a(View view) {
        super.a(view);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0088  */
    /* JADX WARN: Code duplicated, block: B:20:0x0090  */
    /* JADX WARN: Code duplicated, block: B:23:0x009e  */
    /* JADX WARN: Code duplicated, block: B:25:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:29:0x0131  */
    /* JADX WARN: Code duplicated, block: B:31:0x0153  */
    /* JADX WARN: Code duplicated, block: B:33:0x015d  */
    /* JADX WARN: Code duplicated, block: B:35:0x019e  */
    /* JADX WARN: Code duplicated, block: B:37:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x01ad  */
    public void a(ImageView imageView, com.applovin.impl.adview.g gVar, a aVar, ProgressBar progressBar, k0 k0Var, View view, View view2, AppLovinAdView appLovinAdView, com.applovin.impl.adview.k kVar, ImageView imageView2, ViewGroup viewGroup) {
        int i;
        FrameLayout.LayoutParams layoutParams;
        v7 v7Var;
        if (this.c.k0() == com.applovin.impl.sdk.ad.b.e.TOP) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2, 48);
        } else {
            if (this.c.k0() != com.applovin.impl.sdk.ad.b.e.BOTTOM) {
                if (this.c.k0() == com.applovin.impl.sdk.ad.b.e.LEFT) {
                    layoutParams = new FrameLayout.LayoutParams(-2, -1, 3);
                } else if (this.c.k0() == com.applovin.impl.sdk.ad.b.e.RIGHT) {
                    i = 5;
                    layoutParams = new FrameLayout.LayoutParams(-2, -1, 5);
                } else {
                    i = 5;
                    layoutParams = this.e;
                }
                appLovinAdView.setLayoutParams(this.e);
                this.d.addView(appLovinAdView);
                view2.setLayoutParams(this.e);
                this.d.addView(view2);
                view.setLayoutParams(layoutParams);
                this.d.addView(view);
                if (gVar != null) {
                    if (this.c.B0()) {
                        i = 3;
                    }
                    a(this.c.o(), i | 48, gVar);
                }
                if (imageView != null) {
                    int iDpToPx = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.l2)).intValue());
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iDpToPx, iDpToPx, ((Integer) this.a.a(c5.n2)).intValue());
                    int iDpToPx2 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.m2)).intValue());
                    layoutParams2.setMargins(iDpToPx2, iDpToPx2, iDpToPx2, iDpToPx2);
                    this.d.addView(imageView, layoutParams2);
                }
                if (aVar != null) {
                    this.d.addView(aVar, this.e);
                }
                if (k0Var != null) {
                    int iDpToPx3 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.Y1)).intValue());
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iDpToPx3, iDpToPx3, ((Integer) this.a.a(c5.X1)).intValue());
                    int iDpToPx4 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.W1)).intValue());
                    layoutParams3.setMargins(iDpToPx4, iDpToPx4, iDpToPx4, iDpToPx4);
                    this.d.addView(k0Var, layoutParams3);
                }
                if (progressBar != null) {
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, 20, 80);
                    layoutParams4.setMargins(0, 0, 0, ((Integer) this.a.a(c5.q2)).intValue());
                    this.d.addView(progressBar, layoutParams4);
                }
                if (imageView2 != null) {
                    v7Var = (v7) this.c;
                    if (v7Var.r1()) {
                        int iDpToPx5 = AppLovinSdkUtils.dpToPx(this.b, v7Var.l1().g());
                        int iDpToPx6 = AppLovinSdkUtils.dpToPx(this.b, v7Var.l1().d());
                        int iDpToPx7 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.k5)).intValue());
                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(iDpToPx5, iDpToPx6, 83);
                        layoutParams5.setMargins(iDpToPx7, iDpToPx7, iDpToPx7, iDpToPx7);
                        this.d.addView(imageView2, layoutParams5);
                    }
                }
                if (kVar != null) {
                    this.d.addView(kVar, this.e);
                }
                if (viewGroup != null) {
                    viewGroup.addView(this.d);
                } else {
                    this.b.setContentView(this.d);
                }
            }
            layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        }
        i = 5;
        appLovinAdView.setLayoutParams(this.e);
        this.d.addView(appLovinAdView);
        view2.setLayoutParams(this.e);
        this.d.addView(view2);
        view.setLayoutParams(layoutParams);
        this.d.addView(view);
        if (gVar != null) {
            if (this.c.B0()) {
                i = 3;
            }
            a(this.c.o(), i | 48, gVar);
        }
        if (imageView != null) {
            int iDpToPx8 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.l2)).intValue());
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(iDpToPx8, iDpToPx8, ((Integer) this.a.a(c5.n2)).intValue());
            int iDpToPx9 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.m2)).intValue());
            layoutParams6.setMargins(iDpToPx9, iDpToPx9, iDpToPx9, iDpToPx9);
            this.d.addView(imageView, layoutParams6);
        }
        if (aVar != null) {
            this.d.addView(aVar, this.e);
        }
        if (k0Var != null) {
            int iDpToPx10 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.Y1)).intValue());
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(iDpToPx10, iDpToPx10, ((Integer) this.a.a(c5.X1)).intValue());
            int iDpToPx11 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.W1)).intValue());
            layoutParams7.setMargins(iDpToPx11, iDpToPx11, iDpToPx11, iDpToPx11);
            this.d.addView(k0Var, layoutParams7);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, 20, 80);
            layoutParams8.setMargins(0, 0, 0, ((Integer) this.a.a(c5.q2)).intValue());
            this.d.addView(progressBar, layoutParams8);
        }
        if (imageView2 != null) {
            v7Var = (v7) this.c;
            if (v7Var.r1()) {
                int iDpToPx12 = AppLovinSdkUtils.dpToPx(this.b, v7Var.l1().g());
                int iDpToPx13 = AppLovinSdkUtils.dpToPx(this.b, v7Var.l1().d());
                int iDpToPx14 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(c5.k5)).intValue());
                FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(iDpToPx12, iDpToPx13, 83);
                layoutParams9.setMargins(iDpToPx14, iDpToPx14, iDpToPx14, iDpToPx14);
                this.d.addView(imageView2, layoutParams9);
            }
        }
        if (kVar != null) {
            this.d.addView(kVar, this.e);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.d);
        } else {
            this.b.setContentView(this.d);
        }
    }

    @Override // com.applovin.impl.x1
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.g gVar) {
        super.a(gVar);
    }

    public void a(com.applovin.impl.adview.g gVar, com.applovin.impl.adview.k kVar, View view, ProgressBar progressBar) {
        if (view != null) {
            view.setVisibility(0);
        }
        if (((Boolean) this.a.a(c5.e7)).booleanValue()) {
            s.b(this.d, view);
        } else {
            s.a(this.d, view);
        }
        if (gVar != null) {
            a(this.c.o(), (this.c.v0() ? 3 : 5) | 48, gVar);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 20, ((Boolean) this.a.a(c5.x2)).booleanValue() ? 80 : 48);
            layoutParams.setMargins(0, 0, 0, ((Integer) this.a.a(c5.y2)).intValue());
            this.d.addView(progressBar, layoutParams);
        }
        if (kVar != null) {
            this.d.addView(kVar, this.e);
        }
    }
}
