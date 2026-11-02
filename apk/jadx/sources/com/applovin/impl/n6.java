package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n6 extends n5 {
    private final AppLovinAdLoadListener g;
    private final a h;

    private static final class a extends z7 {
        a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.l lVar) {
            super(jSONObject, jSONObject2, lVar);
        }

        void a(u8 u8Var) {
            if (u8Var == null) {
                throw new IllegalArgumentException("No aggregated vast response specified");
            }
            this.b.add(u8Var);
        }
    }

    private static final class b extends n6 {
        private final String i;

        b(String str, z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
            super(z7Var, appLovinAdLoadListener, lVar);
            this.i = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            u8 u8VarB = b(this.i);
            if (u8VarB != null) {
                a(u8VarB);
                return;
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to process XML: " + this.i);
            }
            c(this.i);
            a(a8.XML_PARSING);
        }
    }

    private static final class c extends n6 {
        private final JSONObject i;

        c(z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
            super(z7Var, appLovinAdLoadListener, lVar);
            this.i = z7Var.b();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.i, "xml", null);
            if (!StringUtils.isValidString(string)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "No VAST response received.");
                }
                a(a8.NO_WRAPPER_RESPONSE);
            } else {
                if (string.length() >= ((Integer) this.a.a(c5.c5)).intValue()) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.b(this.b, "VAST response is over max length");
                    }
                    a(a8.XML_PARSING);
                    return;
                }
                u8 u8VarB = b(string);
                if (u8VarB != null) {
                    a(u8VarB);
                    return;
                }
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Unable to process XML: " + string);
                }
                c(string);
                a(a8.XML_PARSING);
            }
        }
    }

    private static final class d extends n6 {
        private final u8 i;

        d(u8 u8Var, z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
            super(z7Var, appLovinAdLoadListener, lVar);
            if (u8Var == null) {
                throw new IllegalArgumentException("No response specified.");
            }
            if (z7Var == null) {
                throw new IllegalArgumentException("No context specified.");
            }
            if (appLovinAdLoadListener == null) {
                throw new IllegalArgumentException("No callback specified.");
            }
            this.i = u8Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Processing VAST Wrapper response...");
            }
            a(this.i);
        }
    }

    n6(z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        super("TaskProcessVastResponse", lVar);
        if (z7Var == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        this.g = appLovinAdLoadListener;
        this.h = (a) z7Var;
    }

    public static n6 a(u8 u8Var, z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        return new d(u8Var, z7Var, appLovinAdLoadListener, lVar);
    }

    public static n6 a(String str, JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        return new b(str, new a(jSONObject, jSONObject2, lVar), appLovinAdLoadListener, lVar);
    }

    public static n6 a(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        return new c(new a(jSONObject, jSONObject2, lVar), appLovinAdLoadListener, lVar);
    }

    void a(a8 a8Var) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.b(this.b, "Failed to process VAST response due to VAST error code " + a8Var);
        }
        h8.a(this.h, this.g, a8Var, -6, this.a);
    }

    void a(u8 u8Var) {
        int iD = this.h.d();
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finished parsing XML at depth " + iD);
        }
        this.h.a(u8Var);
        if (!h8.b(u8Var)) {
            if (!h8.a(u8Var)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "VAST response is an error");
                }
                a(a8.NO_WRAPPER_RESPONSE);
                return;
            } else {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "VAST response is inline. Rendering ad...");
                }
                this.a.s0().a(new q6(this.h, this.g, this.a));
                return;
            }
        }
        int iIntValue = ((Integer) this.a.a(c5.d5)).intValue();
        if (iD >= iIntValue) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Reached beyond max wrapper depth of " + iIntValue);
            }
            a(a8.WRAPPER_LIMIT_REACHED);
        } else {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "VAST response is wrapper. Resolving...");
            }
            this.a.s0().a(new v6(this.h, this.g, this.a));
        }
    }

    protected u8 b(String str) {
        try {
            return v8.a(str, this.a);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Failed to process VAST response", th);
            }
            a(a8.XML_PARSING);
            this.a.E().a(this.b, th);
            return null;
        }
    }

    protected void c(String str) {
        if (str == null) {
            return;
        }
        Iterator<String> it = StringUtils.getRegexMatches(StringUtils.match(str, (String) this.a.a(c5.v5)), 1).iterator();
        while (it.hasNext()) {
            u8 u8VarB = b("<VAST>" + it.next() + "</VAST>");
            if (u8VarB != null) {
                this.h.a(u8VarB);
            }
        }
    }
}
