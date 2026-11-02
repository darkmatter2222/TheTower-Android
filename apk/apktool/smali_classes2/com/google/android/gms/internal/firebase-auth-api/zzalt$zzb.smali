.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzamx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzamx;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;-><init>()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zze;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    return-object v0
.end method
