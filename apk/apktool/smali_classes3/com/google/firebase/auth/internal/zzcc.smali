.class public final synthetic Lcom/google/firebase/auth/internal/zzcc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/firebase/auth/internal/zzca;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/internal/zzca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzcc;->zza:Lcom/google/firebase/auth/internal/zzca;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzcc;->zza:Lcom/google/firebase/auth/internal/zzca;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzca;->zza(Lcom/google/firebase/auth/internal/zzca;)V

    return-void
.end method
