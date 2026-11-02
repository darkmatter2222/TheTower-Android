package com.tapjoy.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class iy extends RelativeLayout {
    private ib a;
    private a b;
    private z c;
    private int d;
    private int e;
    private ik f;
    private ArrayList<WeakReference<iq>> g;
    private ArrayList<WeakReference<iq>> h;

    public interface a {
        void a();

        void a(ij ijVar);
    }

    public iy(Context context, ib ibVar, a aVar) {
        super(context);
        this.c = z.UNSPECIFIED;
        this.d = 0;
        this.e = 0;
        this.f = null;
        this.g = null;
        this.h = null;
        this.a = ibVar;
        this.b = aVar;
    }

    private void a() {
        ik ikVar = null;
        for (ik ikVar2 : this.a.a) {
            if (ikVar2.a == this.c) {
                ikVar = ikVar2;
                break;
            } else if (ikVar2.a == z.UNSPECIFIED) {
                ikVar = ikVar2;
            }
        }
        removeAllViews();
        ArrayList<WeakReference<iq>> arrayList = this.g;
        if (arrayList != null) {
            Iterator<WeakReference<iq>> it = arrayList.iterator();
            while (it.hasNext()) {
                iq iqVar = it.next().get();
                if (iqVar != null) {
                    iqVar.c();
                }
            }
            this.g.clear();
        }
        ArrayList<WeakReference<iq>> arrayList2 = this.h;
        if (arrayList2 != null) {
            Iterator<WeakReference<iq>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                iq iqVar2 = it2.next().get();
                if (iqVar2 != null) {
                    iqVar2.c();
                }
            }
            this.h.clear();
        }
        if (ikVar != null) {
            a(ikVar);
        }
    }

    private void a(ik ikVar) {
        final iq iqVar;
        final iq iqVar2;
        this.f = ikVar;
        Context context = getContext();
        for (final ij ijVar : ikVar.c) {
            final RelativeLayout relativeLayout = new RelativeLayout(context);
            if (ijVar.l.c != null) {
                iq iqVar3 = new iq(context);
                iqVar3.setScaleType(ImageView.ScaleType.FIT_XY);
                iqVar3.a(ijVar.l.d, ijVar.l.c);
                if (this.g == null) {
                    this.g = new ArrayList<>();
                }
                this.g.add(new WeakReference<>(iqVar3));
                iqVar = iqVar3;
            } else {
                iqVar = null;
            }
            if (ijVar.m == null || ijVar.m.c == null) {
                iqVar2 = null;
            } else {
                iq iqVar4 = new iq(context);
                iqVar4.setScaleType(ImageView.ScaleType.FIT_XY);
                iqVar4.a(ijVar.m.d, ijVar.m.c);
                if (this.h == null) {
                    this.h = new ArrayList<>();
                }
                this.h.add(new WeakReference<>(iqVar4));
                iqVar2 = iqVar4;
            }
            ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            Bitmap bitmap = ijVar.l.b;
            Bitmap bitmap2 = ijVar.m != null ? ijVar.m.b : null;
            final BitmapDrawable bitmapDrawable = bitmap != null ? new BitmapDrawable((Resources) null, bitmap) : null;
            final BitmapDrawable bitmapDrawable2 = bitmap2 != null ? new BitmapDrawable((Resources) null, bitmap2) : null;
            if (bitmapDrawable != null) {
                aa.a(relativeLayout, bitmapDrawable);
            }
            if (iqVar != null) {
                relativeLayout.addView(iqVar, layoutParams2);
                iqVar.a();
            }
            if (iqVar2 != null) {
                relativeLayout.addView(iqVar2, layoutParams2);
                iqVar2.setVisibility(4);
            }
            final iq iqVar5 = iqVar2;
            final iq iqVar6 = iqVar;
            relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.tapjoy.internal.iy.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    iq iqVar7;
                    if (motionEvent.getAction() == 0) {
                        if (iqVar5 != null || bitmapDrawable2 != null) {
                            iq iqVar8 = iqVar6;
                            if (iqVar8 != null) {
                                iqVar8.b();
                                iqVar6.setVisibility(4);
                            }
                            aa.a(view, null);
                        }
                        BitmapDrawable bitmapDrawable3 = bitmapDrawable2;
                        if (bitmapDrawable3 != null) {
                            aa.a(view, bitmapDrawable3);
                        } else {
                            iq iqVar9 = iqVar5;
                            if (iqVar9 != null) {
                                iqVar9.setVisibility(0);
                                iqVar5.a();
                            }
                        }
                    } else {
                        boolean z = true;
                        if (motionEvent.getAction() == 1) {
                            float x = motionEvent.getX();
                            float y = motionEvent.getY();
                            if (x >= 0.0f && x < view.getWidth() && y >= 0.0f && y < view.getHeight()) {
                                z = false;
                            }
                            if (z) {
                                BitmapDrawable bitmapDrawable4 = bitmapDrawable;
                                if (bitmapDrawable4 != null) {
                                    aa.a(view, bitmapDrawable4);
                                } else if (bitmapDrawable2 != null) {
                                    aa.a(view, null);
                                }
                            }
                            iq iqVar10 = iqVar5;
                            if (iqVar10 != null) {
                                iqVar10.b();
                                iqVar5.setVisibility(4);
                            }
                            if ((iqVar5 != null || bitmapDrawable2 != null) && (iqVar7 = iqVar6) != null && z) {
                                iqVar7.setVisibility(0);
                                iqVar6.a();
                            }
                        }
                    }
                    return false;
                }
            });
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tapjoy.internal.iy.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    iq iqVar7 = iqVar2;
                    if (iqVar7 != null) {
                        iqVar7.b();
                        relativeLayout.removeView(iqVar2);
                    }
                    iq iqVar8 = iqVar;
                    if (iqVar8 != null) {
                        iqVar8.b();
                        relativeLayout.removeView(iqVar);
                    }
                    iy.this.b.a(ijVar);
                }
            });
            relativeLayout.setTag(ijVar);
            addView(relativeLayout, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.a();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0086  */
    @Override // android.widget.RelativeLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        float f;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (size >= size2) {
            if (this.c != z.LANDSCAPE) {
                this.c = z.LANDSCAPE;
                a();
            }
        } else if (this.c != z.PORTRAIT) {
            this.c = z.PORTRAIT;
            a();
        }
        if (this.d != size || this.e != size2) {
            this.d = size;
            this.e = size2;
            float f2 = size;
            float f3 = size2;
            ik ikVar = this.f;
            float f4 = 0.0f;
            float f5 = 2.0f;
            if (ikVar == null || ikVar.b == null) {
                f = 0.0f;
            } else {
                float f6 = ((this.f.b.y * f2) / this.f.b.x) / f3;
                if (f6 < 1.0f) {
                    float f7 = (this.f.b.y * f2) / this.f.b.x;
                    f = (f3 - f7) / 2.0f;
                    f3 = f7;
                } else if (f6 > 1.0f) {
                    float f8 = (this.f.b.x * f3) / this.f.b.y;
                    f4 = (f2 - f8) / 2.0f;
                    f2 = f8;
                    f = 0.0f;
                } else {
                    f = 0.0f;
                }
            }
            for (View view : ab.a(this)) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
                ij ijVar = (ij) view.getTag();
                float fA = ijVar.a.a(f2, f3);
                float fA2 = ijVar.b.a(f2, f3);
                float fA3 = ijVar.c.a(f2, f3);
                float fA4 = ijVar.d.a(f2, f3);
                int i3 = ijVar.e;
                int i4 = ijVar.f;
                if (i3 == 14) {
                    fA += (f2 - fA3) / f5;
                    i3 = 9;
                }
                float f9 = f5;
                if (i4 == 15) {
                    fA2 += (f3 - fA4) / f9;
                    i4 = 10;
                }
                layoutParams.addRule(i3, -1);
                layoutParams.addRule(i4, -1);
                layoutParams.width = Math.round(fA3);
                layoutParams.height = Math.round(fA4);
                if (i3 == 9) {
                    layoutParams.leftMargin = Math.round(fA + f4);
                } else if (i3 == 11) {
                    layoutParams.rightMargin = Math.round(fA + f4);
                }
                if (i4 == 10) {
                    layoutParams.topMargin = Math.round(fA2 + f);
                } else if (i4 == 12) {
                    layoutParams.bottomMargin = Math.round(fA2 + f);
                }
                f5 = f9;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            ArrayList<WeakReference<iq>> arrayList = this.g;
            if (arrayList != null) {
                Iterator<WeakReference<iq>> it = arrayList.iterator();
                while (it.hasNext()) {
                    iq iqVar = it.next().get();
                    if (iqVar != null) {
                        iqVar.b();
                    }
                }
            }
            ArrayList<WeakReference<iq>> arrayList2 = this.h;
            if (arrayList2 != null) {
                Iterator<WeakReference<iq>> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    iq iqVar2 = it2.next().get();
                    if (iqVar2 != null) {
                        iqVar2.b();
                    }
                }
                return;
            }
            return;
        }
        ArrayList<WeakReference<iq>> arrayList3 = this.h;
        if (arrayList3 != null) {
            Iterator<WeakReference<iq>> it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                iq iqVar3 = it3.next().get();
                if (iqVar3 != null) {
                    iqVar3.setVisibility(4);
                    iqVar3.b();
                }
            }
        }
        ArrayList<WeakReference<iq>> arrayList4 = this.g;
        if (arrayList4 != null) {
            Iterator<WeakReference<iq>> it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                iq iqVar4 = it4.next().get();
                if (iqVar4 != null) {
                    iqVar4.setVisibility(0);
                    iqVar4.a();
                }
            }
        }
    }
}
