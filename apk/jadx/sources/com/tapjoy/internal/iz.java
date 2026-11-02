package com.tapjoy.internal;

import android.content.Context;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes5.dex */
public final class iz extends ad {
    private final ie a;
    private final ja b;
    private z c;

    public iz(Context context, ie ieVar, ja jaVar) {
        super(context);
        this.a = ieVar;
        this.b = jaVar;
        addView(jaVar, new ViewGroup.LayoutParams(-1, -1));
        this.c = null;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0079  */
    @Override // com.tapjoy.internal.ad, com.tapjoy.internal.ae, android.view.View
    public final void onMeasure(int i, int i2) {
        z zVar;
        z zVar2;
        z zVarA = z.a(getContext());
        if (this.a.a()) {
            if (this.a.b()) {
                if (zVarA.a()) {
                    zVar2 = z.PORTRAIT;
                } else {
                    zVar2 = (zVarA.b() || !z.b(getContext()).a()) ? z.LANDSCAPE : z.PORTRAIT;
                }
                setRotationCount(0);
            } else {
                zVar = z.PORTRAIT;
                if (!zVarA.b()) {
                    setRotationCount(0);
                } else if (zVarA.c() == 3) {
                    setRotationCount(1);
                } else {
                    setRotationCount(3);
                }
            }
            if (this.c != zVar2) {
                this.c = zVar2;
                this.b.setLandscape(zVar2.b());
            }
            super.onMeasure(i, i2);
        }
        zVar = z.LANDSCAPE;
        if (!zVarA.a()) {
            setRotationCount(0);
        } else if (zVarA.c() == 3) {
            setRotationCount(1);
        } else {
            setRotationCount(1);
        }
        zVar2 = zVar;
        if (this.c != zVar2) {
            this.c = zVar2;
            this.b.setLandscape(zVar2.b());
        }
        super.onMeasure(i, i2);
    }
}
