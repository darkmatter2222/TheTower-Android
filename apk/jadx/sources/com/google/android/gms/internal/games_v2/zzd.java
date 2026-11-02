package com.google.android.gms.internal.games_v2;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Scope;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzd extends zze {
    zzd() {
        super(null);
    }

    @Override // com.google.android.gms.common.api.Api.BaseClientBuilder
    public final /* bridge */ /* synthetic */ List getImpliedScopes(Object obj) {
        return zzgm.zzh(new Scope(Scopes.GAMES));
    }
}
