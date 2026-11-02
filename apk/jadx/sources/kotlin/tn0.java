package kotlin;

import android.content.Context;
import com.google.common.base.Strings;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class tn0 implements oy3 {
    public final Context a;
    public final hl3 b;
    public final ts3 c;
    public final String d;
    public final long e;
    public final long f;

    public tn0(Context context, na naVar, hl3 hl3Var, ts3 ts3Var) {
        this.a = context;
        this.d = naVar.M();
        this.e = naVar.K();
        this.f = naVar.O();
        this.b = hl3Var;
        this.c = ts3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(HashMap map) {
        String strW;
        Object objW;
        String strA;
        Long lValueOf;
        Object objI;
        map.put("v", this.d);
        map.put("t", new Throwable());
        long jV = -1;
        Object obj = null;
        try {
            ListenableFuture listenableFuture = (ListenableFuture) map.get("gs");
            if (listenableFuture != null) {
                try {
                    qr3 qr3VarA = this.c.a(lq0.EVENT_ID_DG_ENGINE_COMPOSE_GASS_SIGNAL_STATE);
                    try {
                        qr3VarA.b();
                        fh fhVar = (fh) listenableFuture.get(this.e, TimeUnit.MILLISECONDS);
                        if (fhVar != null) {
                            if (fhVar.C()) {
                                xh xhVarY = fhVar.y();
                                if (xhVarY.y()) {
                                    objI = xhVarY.v().i();
                                    try {
                                        strA = xhVarY.v().a(StandardCharsets.ISO_8859_1);
                                    } catch (Throwable th) {
                                        th = th;
                                        qr3VarA.a();
                                        throw th;
                                    }
                                } else {
                                    objI = null;
                                    strA = null;
                                }
                                try {
                                    lValueOf = xhVarY.A() ? Long.valueOf(xhVarY.x()) : null;
                                    try {
                                        objW = xhVarY.z() ? xhVarY.w() : null;
                                        obj = objI;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        qr3VarA.a();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } else {
                                objW = null;
                                strA = null;
                                lValueOf = null;
                            }
                            try {
                                strW = (fhVar.w().length() <= 1 || fhVar.w().equals("0000000000000000000000000000000000000000000000000000000000000000")) ? "E" : fhVar.w();
                                try {
                                    if (fhVar.A()) {
                                        jV = fhVar.v();
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    qr3VarA.a();
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                qr3VarA.a();
                                throw th;
                            }
                        } else {
                            strW = "E";
                            objW = null;
                            strA = null;
                            lValueOf = null;
                        }
                        qr3VarA.a();
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } catch (ClassCastException | ExecutionException unused) {
                } catch (InterruptedException unused2) {
                    Thread.currentThread().interrupt();
                } catch (TimeoutException unused3) {
                    this.c.b(lq0.EVENT_ID_DG_ENGINE_COMPOSE_GASS_SIGNAL_TIMEOUT);
                }
            } else {
                strW = "E";
                objW = null;
                strA = null;
                lValueOf = null;
            }
        } catch (ClassCastException | ExecutionException unused4) {
        } catch (InterruptedException unused5) {
            strW = "E";
            objW = null;
            strA = null;
            lValueOf = null;
        } catch (TimeoutException unused6) {
            strW = "E";
            objW = null;
            strA = null;
            lValueOf = null;
        }
        if (strW.equals("E")) {
            try {
                try {
                    ListenableFuture listenableFuture2 = (ListenableFuture) map.get("ai");
                    if (listenableFuture2 != null) {
                        qr3 qr3VarA2 = this.c.a(lq0.EVENT_ID_DG_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE);
                        try {
                            qr3VarA2.b();
                            String str = (String) listenableFuture2.get(this.f, TimeUnit.MILLISECONDS);
                            if (!Strings.isNullOrEmpty(str)) {
                                strW = str;
                            }
                            qr3VarA2.a();
                        } catch (Throwable th7) {
                            qr3VarA2.a();
                            throw th7;
                        }
                    }
                } catch (ClassCastException | ExecutionException unused7) {
                }
            } catch (InterruptedException unused8) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused9) {
                this.c.b(lq0.EVENT_ID_DG_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_TIMEOUT);
            }
        }
        map.put("int", strW);
        if (obj != null) {
            map.put("attb", obj);
        }
        if (strA != null) {
            map.put("att", strA);
        }
        if (lValueOf != null) {
            map.put("attts", lValueOf);
        }
        if (objW != null) {
            map.put("attkid", objW);
        }
        map.put("gv", Long.valueOf(jV));
    }
}
