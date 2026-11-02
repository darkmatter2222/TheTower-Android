package com.ironsource;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Cg {
    private int b = 4;
    private int c = 4;
    private HashMap<String, Boolean> a = new a();

    class a extends HashMap<String, Boolean> {
        a() {
            put(C3658j8.k, Boolean.valueOf(Cg.this.b == 0));
            put(C3658j8.l, Boolean.valueOf(Cg.this.c == 0));
            Boolean bool = Boolean.FALSE;
            put(C3658j8.m, bool);
            put(C3658j8.n, bool);
        }
    }

    Cg() {
    }

    public JSONObject a() {
        return new JSONObject(this.a);
    }

    void a(String str, int i, boolean z) {
        if (this.a.containsKey(str)) {
            this.a.put(str, Boolean.valueOf(i == 0));
        }
        this.a.put(C3658j8.m, Boolean.valueOf(z));
        this.a.put(C3658j8.n, Boolean.valueOf((this.a.get(C3658j8.l).booleanValue() || this.a.get(C3658j8.k).booleanValue()) && this.a.get(C3658j8.m).booleanValue()));
    }
}
