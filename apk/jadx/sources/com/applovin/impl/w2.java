package com.applovin.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w2 extends BaseAdapter implements View.OnClickListener {
    protected Context a;
    private List b = new ArrayList();
    private Map c = new HashMap();
    private a d;

    public interface a {
        void a(n2 n2Var, v2 v2Var);
    }

    protected w2(Context context) {
        this.a = context.getApplicationContext();
    }

    private Drawable a(View view) {
        Drawable background = view.getBackground();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.a.getColor(R.color.applovin_sdk_highlightListItemColor));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable);
        stateListDrawable.addState(new int[0], background);
        return stateListDrawable;
    }

    private n2 a(int i) {
        for (int i2 = 0; i2 < b(); i2++) {
            Integer num = (Integer) this.c.get(Integer.valueOf(i2));
            if (num != null) {
                if (i <= num.intValue() + d(i2)) {
                    return new n2(i2, i - (num.intValue() + 1));
                }
            }
        }
        return null;
    }

    protected v2 a() {
        return null;
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected abstract int b();

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v2 getItem(int i) {
        return (v2) this.b.get(i);
    }

    protected abstract List c(int i);

    public void c() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.w2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyDataSetChanged();
            }
        });
    }

    protected abstract int d(int i);

    protected abstract v2 e(int i);

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).m();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        u2 u2Var;
        v2 item = getItem(i);
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(item.j(), viewGroup, false);
            u2Var = new u2();
            u2Var.a = (TextView) view.findViewById(android.R.id.text1);
            u2Var.b = (TextView) view.findViewById(android.R.id.text2);
            u2Var.c = (ImageView) view.findViewById(R.id.imageView);
            u2Var.d = (ImageView) view.findViewById(R.id.detailImageView);
            view.setTag(u2Var);
            view.setOnClickListener(this);
            view.setBackground(a(view));
        } else {
            u2Var = (u2) view.getTag();
        }
        u2Var.a(i);
        u2Var.a(item);
        view.setEnabled(item.o());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return v2.n();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).o();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        int i;
        this.b = new ArrayList();
        int iB = b();
        this.c = new HashMap(iB);
        v2 v2VarA = a();
        if (v2VarA != null) {
            this.b.add(v2VarA);
            i = 1;
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < iB; i2++) {
            int iD = d(i2);
            if (iD != 0) {
                this.b.add(e(i2));
                this.b.addAll(c(i2));
                this.c.put(Integer.valueOf(i2), Integer.valueOf(i));
                i += iD + 1;
            }
        }
        this.b.add(new a5(""));
        super.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        u2 u2Var = (u2) view.getTag();
        v2 v2VarB = u2Var.b();
        n2 n2VarA = a(u2Var.a());
        a aVar = this.d;
        if (aVar == null || n2VarA == null) {
            return;
        }
        aVar.a(n2VarA, v2VarB);
    }
}
