package kotlin;

import android.net.Uri;
import kotlinx.coroutines.CompletableDeferred;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface nr1 {
    Object a(r31 r31Var, Uri uri, Continuation continuation);

    Object a(r31 r31Var, String str, Continuation continuation);

    Object a(String str, r41 r41Var, Continuation continuation);

    Object a(String str, CompletableDeferred completableDeferred, w21 w21Var);
}
