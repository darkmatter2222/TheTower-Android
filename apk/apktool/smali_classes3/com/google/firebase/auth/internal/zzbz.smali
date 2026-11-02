.class public final synthetic Lcom/google/firebase/auth/internal/zzbz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/firebase/auth/internal/zzca;

.field private synthetic zzb:Lcom/google/firebase/internal/InternalTokenResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/internal/zzca;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbz;->zza:Lcom/google/firebase/auth/internal/zzca;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbz;->zzb:Lcom/google/firebase/internal/InternalTokenResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbz;->zza:Lcom/google/firebase/auth/internal/zzca;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzbz;->zzb:Lcom/google/firebase/internal/InternalTokenResult;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/internal/zzca;->zza(Lcom/google/firebase/auth/internal/zzca;Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void
.end method
