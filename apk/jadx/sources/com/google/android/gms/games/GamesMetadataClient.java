package com.google.android.gms.games;

import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface GamesMetadataClient {
    @Deprecated
    Task<Game> getCurrentGame();

    @Deprecated
    Task<AnnotatedData<Game>> loadGame();
}
