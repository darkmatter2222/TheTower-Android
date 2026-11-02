package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.applovin.impl.g2;

/* JADX INFO: loaded from: classes2.dex */
public class k extends View {
    private final g2 a;
    private boolean b;

    interface a {
        void a();

        void b();
    }

    public k(g2 g2Var, Context context) {
        super(context);
        this.a = g2Var;
        setClickable(false);
        setFocusable(false);
    }

    public void a(a aVar) {
        if (this.b) {
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        Drawable drawableA = this.a.a();
        if (drawableA == null) {
            if (aVar != null) {
                aVar.b();
            }
        } else {
            setBackground(drawableA);
            this.b = true;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public boolean a() {
        return this.b;
    }

    public void b() {
        a(null);
    }

    public String getIdentifier() {
        return this.a.b();
    }
}
