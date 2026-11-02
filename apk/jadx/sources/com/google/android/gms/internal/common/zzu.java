package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzu implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzx zzb;

    zzu(zzx zzxVar, CharSequence charSequence) {
        this.zza = charSequence;
        Objects.requireNonNull(zzxVar);
        this.zzb = zzxVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zzb.zze(this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractJsonLexerKt.BEGIN_LIST);
        Iterator it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(zzr.zza(it.next(), ", "));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(zzr.zza(it.next(), ", "));
                }
            }
            sb.append(AbstractJsonLexerKt.END_LIST);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
