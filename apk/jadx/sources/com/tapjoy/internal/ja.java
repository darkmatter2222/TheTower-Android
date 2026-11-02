package com.tapjoy.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ja extends RelativeLayout implements View.OnClickListener {
    private boolean a;
    private float b;
    private View c;
    private View d;
    private FrameLayout e;
    private ImageView f;
    private ix g;
    private ie h;
    private a i;

    public interface a {
        void a();

        void a(ic icVar);

        void b();
    }

    public ja(Context context, ie ieVar, a aVar) {
        super(context);
        this.b = 1.0f;
        this.h = ieVar;
        this.i = aVar;
        Context context2 = getContext();
        View view = new View(context2);
        this.c = view;
        view.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.c, layoutParams);
        this.d = new View(context2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams2.addRule(13);
        addView(this.d, layoutParams2);
        this.e = new FrameLayout(context2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams3.addRule(13);
        addView(this.e, layoutParams3);
        ImageView imageView = new ImageView(context2);
        this.f = imageView;
        imageView.setOnClickListener(this);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams4.addRule(7, this.c.getId());
        layoutParams4.addRule(6, this.c.getId());
        addView(this.f, layoutParams4);
        if (this.h.m != null) {
            Cif cif = this.h.m;
            if (cif.a != null && (cif.b != null || cif.c != null)) {
                ix ixVar = new ix(context2);
                this.g = ixVar;
                ixVar.setOnClickListener(this);
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(0, 0);
                layoutParams5.addRule(5, this.d.getId());
                layoutParams5.addRule(8, this.d.getId());
                addView(this.g, layoutParams5);
            }
        }
        this.f.setImageBitmap(ieVar.c.b);
        if (this.g == null || ieVar.m == null || ieVar.m.a == null) {
            return;
        }
        this.g.setImageBitmap(ieVar.m.a.b);
    }

    private int a(int i) {
        return (int) (i * this.b);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ix ixVar;
        if (view == this.f) {
            this.i.a();
            return;
        }
        if (view == null || view != (ixVar = this.g)) {
            if (view.getTag() instanceof ic) {
                this.i.a((ic) view.getTag());
            }
        } else {
            ixVar.a = !ixVar.a;
            ixVar.a();
            ixVar.invalidate();
            this.i.b();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0160  */
    @Override // android.widget.RelativeLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        Point point;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.a) {
            this.b = Math.min(size / 480.0f, size2 / 320.0f);
        } else {
            this.b = Math.min(size / 320.0f, size2 / 480.0f);
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams.width = a(this.a ? 480 : 320);
        layoutParams.height = a(this.a ? 320 : 480);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
        layoutParams2.width = a(this.a ? 448 : 290);
        layoutParams2.height = a(this.a ? 290 : 448);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
        layoutParams3.width = layoutParams2.width;
        layoutParams3.height = layoutParams2.height;
        for (View view : ab.a(this.e)) {
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) view.getLayoutParams();
            Rect rect = ((ic) view.getTag()).a;
            layoutParams4.width = a(rect.width());
            layoutParams4.height = a(rect.height());
            layoutParams4.leftMargin = a(rect.left);
            layoutParams4.topMargin = a(rect.top);
        }
        int i4 = 0;
        int iA = a(0);
        this.f.setPadding(iA, iA, iA, iA);
        RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) this.f.getLayoutParams();
        layoutParams5.width = a(30);
        layoutParams5.height = layoutParams5.width;
        int i5 = -iA;
        layoutParams5.rightMargin = a(this.h.d.x) + i5;
        layoutParams5.topMargin = i5 + a(this.h.d.y);
        if (this.g != null) {
            int iA2 = a(this.a ? 16 : 15);
            int iA3 = a(this.a ? 15 : 16);
            this.g.setPadding(iA, iA, iA, iA);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.g.getLayoutParams();
            layoutParams6.width = a(26);
            layoutParams6.height = layoutParams6.width;
            if (this.h.m == null) {
                i3 = 0;
            } else {
                if (this.a) {
                    Cif cif = this.h.m;
                    point = cif.b == null ? cif.c : cif.b;
                } else {
                    Cif cif2 = this.h.m;
                    point = cif2.c == null ? cif2.b : cif2.c;
                }
                if (point != null) {
                    i4 = point.x;
                    i3 = point.y;
                } else {
                    i3 = 0;
                }
            }
            layoutParams6.leftMargin = iA2 + a(i4);
            layoutParams6.topMargin = iA3 + a(i3);
        }
        super.onMeasure(i, i2);
    }

    public final void setLandscape(boolean z) {
        Bitmap bitmap;
        Bitmap bitmap2;
        ArrayList<ic> arrayList;
        this.a = z;
        if (z) {
            bitmap = this.h.b.b;
            bitmap2 = this.h.f.b;
            arrayList = this.h.j;
        } else {
            bitmap = this.h.a.b;
            bitmap2 = this.h.e.b;
            arrayList = this.h.i;
        }
        aa.a(this.c, new BitmapDrawable((Resources) null, bitmap));
        aa.a(this.d, new BitmapDrawable((Resources) null, bitmap2));
        if (this.e.getChildCount() > 0) {
            this.e.removeAllViews();
        }
        Context context = getContext();
        for (ic icVar : arrayList) {
            View view = new View(context);
            view.setTag(icVar);
            view.setOnClickListener(this);
            this.e.addView(view, new FrameLayout.LayoutParams(0, 0, 51));
        }
    }
}
