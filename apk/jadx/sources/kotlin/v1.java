package kotlin;

import androidx.datastore.core.Serializer;
import com.google.common.base.Splitter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v1 implements Serializer {
    public static final v1 a = new v1();
    public static final o1 b = o1.x();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        o1 o1VarA;
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_METADATA_READ;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            try {
                o1VarA = o1.a(inputStream);
            } catch (Throwable th) {
                try {
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(rr3VarA, th2);
                        throw th3;
                    }
                }
            }
        } catch (Exception e) {
            xs3.a("Stored data has been corrupted: " + e, null, 6);
            Splitter splitter = f01.a;
            f01.c("Stored data has been corrupted: " + e, null);
            o1VarA = b;
        }
        if (o1VarA instanceof i01) {
            xs3.a((i01) o1VarA, false);
        }
        CloseableKt.closeFinally(rr3VarA, null);
        Intrinsics.checkNotNull(o1VarA);
        return o1VarA;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((o1) obj).writeTo(outputStream);
        return p005kotlin.Unit.INSTANCE;
    }
}
