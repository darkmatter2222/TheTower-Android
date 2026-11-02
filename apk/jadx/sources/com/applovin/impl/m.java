package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class m extends w2 {
    private final n e;
    private final o f;
    private final o8 g;
    private final String h;
    private final List i;
    private final List j;
    private final List k;

    enum a {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    class b extends e4 {
        private final o8 p;

        b(o8 o8Var, String str, boolean z) {
            super(o8Var.b().d(), m.this.a);
            this.p = o8Var;
            this.c = StringUtils.createSpannedString(o8Var.b().a(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            this.d = !TextUtils.isEmpty(str) ? new SpannedString(str) : null;
            this.b = z;
        }

        @Override // com.applovin.impl.v2
        public int g() {
            return -12303292;
        }

        @Override // com.applovin.impl.e4, com.applovin.impl.v2
        public boolean o() {
            return this.b;
        }

        public o8 v() {
            return this.p;
        }
    }

    m(n nVar, o oVar, o8 o8Var, Context context) {
        super(context);
        this.e = nVar;
        this.g = o8Var;
        this.f = oVar != null ? oVar : nVar.f();
        this.h = oVar != null ? oVar.c() : nVar.d();
        this.i = h();
        this.j = e();
        this.k = l();
        notifyDataSetChanged();
    }

    private v2 d() {
        return v2.a().d("Ad Format").c(this.e.b()).a();
    }

    private List e() {
        o8 o8Var = this.g;
        if (o8Var != null && !o8Var.d()) {
            return new ArrayList();
        }
        List<o8> listA = this.f.a();
        ArrayList arrayList = new ArrayList(listA.size());
        for (o8 o8Var2 : listA) {
            o8 o8Var3 = this.g;
            if (o8Var3 == null || o8Var3.b().c().equals(o8Var2.b().c())) {
                arrayList.add(new b(o8Var2, o8Var2.a() != null ? o8Var2.a().a() : "", this.g == null));
            }
        }
        return arrayList;
    }

    private v2 f() {
        return v2.a().d("AB Test Experiment Name").c(j().b()).a();
    }

    private v2 g() {
        return v2.a().d("ID").c(this.e.c()).a();
    }

    private List h() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(g());
        arrayList.add(d());
        if (this.f.b() != null) {
            arrayList.add(f());
        }
        if (this.g != null) {
            arrayList.add(i());
        }
        return arrayList;
    }

    private v2 i() {
        return v2.a().d("Selected Network").c(this.g.b().a()).a();
    }

    private List l() {
        o8 o8Var = this.g;
        if (o8Var != null && o8Var.d()) {
            return new ArrayList();
        }
        List<o8> listE = this.f.e();
        ArrayList arrayList = new ArrayList(listE.size());
        for (o8 o8Var2 : listE) {
            o8 o8Var3 = this.g;
            if (o8Var3 == null || o8Var3.b().c().equals(o8Var2.b().c())) {
                arrayList.add(new b(o8Var2, null, this.g == null));
                for (f4 f4Var : o8Var2.c()) {
                    arrayList.add(v2.a().d(f4Var.a()).c(f4Var.b()).b(true).a());
                }
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.w2
    protected int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.w2
    protected List c(int i) {
        if (i == a.INFO.ordinal()) {
            return this.i;
        }
        return i == a.BIDDERS.ordinal() ? this.j : this.k;
    }

    @Override // com.applovin.impl.w2
    protected int d(int i) {
        if (i == a.INFO.ordinal()) {
            return this.i.size();
        }
        return i == a.BIDDERS.ordinal() ? this.j.size() : this.k.size();
    }

    @Override // com.applovin.impl.w2
    protected v2 e(int i) {
        if (i == a.INFO.ordinal()) {
            return new a5("INFO");
        }
        return i == a.BIDDERS.ordinal() ? new a5("BIDDERS") : new a5("WATERFALL");
    }

    public o j() {
        return this.f;
    }

    public String k() {
        return this.h;
    }
}
