package kotlin;

import android.net.Uri;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p005kotlin.collections.SetsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class p21 {
    public static final Set a = SetsKt.setOf((Object[]) new String[]{".mp4", ".webm", ".mkv", ".3gp", ".m4v", ".ts", ".flv", ".ogv", ".avi", ".mov", ".qt", ".wmv", ".mp3", ".aac", ".wav", ".flac", ".ogg", ".m4a", ".mid", ".xmf", ".mxmf", ".rtttl", ".rtx", ".ota", ".imy"});

    public static final boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        String path = uri.getPath();
        if (path == null) {
            return false;
        }
        Set set = a;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (StringsKt.endsWith(path, (String) it.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }
}
