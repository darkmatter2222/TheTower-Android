package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class u8 {
    public static final u8 f = new u8();
    private final u8 a;
    private final String b;
    private final Map c;
    protected String d;
    protected final List e;

    private u8() {
        this.a = null;
        this.b = "";
        this.c = Collections.EMPTY_MAP;
        this.d = "";
        this.e = Collections.EMPTY_LIST;
    }

    public u8(String str, Map map, u8 u8Var) {
        this.a = u8Var;
        this.b = str;
        this.c = Collections.unmodifiableMap(map);
        this.e = new ArrayList();
    }

    public List a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified.");
        }
        ArrayList arrayList = new ArrayList(this.e.size());
        for (u8 u8Var : this.e) {
            if (str.equalsIgnoreCase(u8Var.c())) {
                arrayList.add(u8Var);
            }
        }
        return arrayList;
    }

    public Map a() {
        return this.c;
    }

    public u8 b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified.");
        }
        if (this.e.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        while (!arrayList.isEmpty()) {
            u8 u8Var = (u8) arrayList.get(0);
            arrayList.remove(0);
            if (str.equalsIgnoreCase(u8Var.c())) {
                return u8Var;
            }
            arrayList.addAll(u8Var.b());
        }
        return null;
    }

    public List b() {
        return Collections.unmodifiableList(this.e);
    }

    public u8 c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified.");
        }
        for (u8 u8Var : this.e) {
            if (str.equalsIgnoreCase(u8Var.c())) {
                return u8Var;
            }
        }
        return null;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.d;
    }

    public String toString() {
        return "XmlNode{elementName='" + this.b + "', text='" + this.d + "', attributes=" + this.c + AbstractJsonLexerKt.END_OBJ;
    }
}
