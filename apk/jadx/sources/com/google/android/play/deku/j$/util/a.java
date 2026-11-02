package com.google.android.play.deku.j$.util;

import com.google.android.play.deku.java.util.function.Consumer;
import com.ironsource.G5;
import java.util.Collection;
import java.util.Iterator;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static void a(Collection collection, Consumer consumer) {
        if (collection instanceof b) {
            ((b) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static void b(Iterator it, Consumer consumer) {
        if (it instanceof c) {
            ((c) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static String c(Object obj, Object obj2) {
        String string;
        String string2;
        String str = AbstractJsonLexerKt.NULL;
        if (obj == null || (string = obj.toString()) == null) {
            string = AbstractJsonLexerKt.NULL;
        }
        int length = string.length();
        if (obj2 != null && (string2 = obj2.toString()) != null) {
            str = string2;
        }
        int length2 = str.length();
        char[] cArr = new char[length + length2 + 1];
        string.getChars(0, length, cArr, 0);
        cArr[length] = G5.U;
        str.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }
}
