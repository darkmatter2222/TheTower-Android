package com.applovin.impl;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class u2 {
    public TextView a;
    public TextView b;
    public ImageView c;
    public ImageView d;
    private v2 e;
    private int f;

    public int a() {
        return this.f;
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(v2 v2Var) {
        this.e = v2Var;
        this.a.setText(v2Var.k());
        this.a.setTextColor(v2Var.l());
        if (this.b != null) {
            if (TextUtils.isEmpty(v2Var.f())) {
                this.b.setVisibility(8);
            } else {
                this.b.setTypeface(null, 0);
                this.b.setVisibility(0);
                this.b.setText(v2Var.f());
                this.b.setTextColor(v2Var.g());
                if (v2Var.p()) {
                    this.b.setTypeface(null, 1);
                }
            }
        }
        if (this.c != null) {
            if (v2Var.h() > 0) {
                this.c.setImageResource(v2Var.h());
                this.c.setColorFilter(v2Var.i());
                this.c.setVisibility(0);
            } else {
                this.c.setVisibility(8);
            }
        }
        if (this.d != null) {
            if (v2Var.d() <= 0) {
                this.d.setVisibility(8);
                return;
            }
            this.d.setImageResource(v2Var.d());
            this.d.setColorFilter(v2Var.e());
            this.d.setVisibility(0);
        }
    }

    public v2 b() {
        return this.e;
    }
}
