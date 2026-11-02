package com.tapjoy.internal;

import com.tapjoy.internal.ej;
import com.tapjoy.internal.ej.a;
import java.io.IOException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ej<M extends ej<M, B>, B extends a<M, B>> implements Serializable {
    transient int a = 0;
    protected transient int b = 0;
    private final transient el<M> c;
    private final transient je d;

    public static abstract class a<T extends ej<T, B>, B extends a<T, B>> {
        jb a;
        en b;

        protected a() {
        }

        public final a<T, B> a(int i, ei eiVar, Object obj) {
            if (this.b == null) {
                this.a = new jb();
                this.b = new en(this.a);
            }
            try {
                eiVar.a().a(this.b, i, obj);
                return this;
            } catch (IOException unused) {
                throw new AssertionError();
            }
        }

        public final a<T, B> a(je jeVar) {
            if (jeVar.c() <= 0) {
                return this;
            }
            if (this.b == null) {
                this.a = new jb();
                this.b = new en(this.a);
            }
            try {
                this.b.a(jeVar);
                return this;
            } catch (IOException unused) {
                throw new AssertionError();
            }
        }

        public final je a() {
            jb jbVar = this.a;
            return jbVar != null ? new je(jbVar.clone().h()) : je.b;
        }
    }

    protected ej(el<M> elVar, je jeVar) {
        if (elVar == null) {
            throw new NullPointerException("adapter == null");
        }
        if (jeVar == null) {
            throw new NullPointerException("unknownFields == null");
        }
        this.c = elVar;
        this.d = jeVar;
    }

    public final je a() {
        je jeVar = this.d;
        return jeVar != null ? jeVar : je.b;
    }

    public String toString() {
        return el.c(this);
    }
}
