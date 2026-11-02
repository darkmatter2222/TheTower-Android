package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqd {
    private final Map<zzqg, zzpx<?, ?>> zza;
    private final Map<Class<?>, zzqi<?, ?>> zzb;

    private zzqd() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    private zzqd(zzqb zzqbVar) {
        this.zza = new HashMap(zzqbVar.zza);
        this.zzb = new HashMap(zzqbVar.zzb);
    }

    public final zzqb zza() {
        return new zzqb(this);
    }

    public final <KeyT extends zzbt, PrimitiveT> zzqd zza(zzpx<KeyT, PrimitiveT> zzpxVar) throws GeneralSecurityException {
        if (zzpxVar == null) {
            throw new NullPointerException("primitive constructor must be non-null");
        }
        zzqg zzqgVar = new zzqg(zzpxVar.zza(), zzpxVar.zzb());
        if (!this.zza.containsKey(zzqgVar)) {
            this.zza.put(zzqgVar, zzpxVar);
            return this;
        }
        zzpx<?, ?> zzpxVar2 = this.zza.get(zzqgVar);
        if (zzpxVar2.equals(zzpxVar) && zzpxVar.equals(zzpxVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + String.valueOf(zzqgVar));
    }

    public final <InputPrimitiveT, WrapperPrimitiveT> zzqd zza(zzqi<InputPrimitiveT, WrapperPrimitiveT> zzqiVar) throws GeneralSecurityException {
        if (zzqiVar == null) {
            throw new NullPointerException("wrapper must be non-null");
        }
        Class<WrapperPrimitiveT> clsZzb = zzqiVar.zzb();
        if (!this.zzb.containsKey(clsZzb)) {
            this.zzb.put(clsZzb, zzqiVar);
            return this;
        }
        zzqi<?, ?> zzqiVar2 = this.zzb.get(clsZzb);
        if (zzqiVar2.equals(zzqiVar) && zzqiVar.equals(zzqiVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type" + String.valueOf(clsZzb));
    }
}
