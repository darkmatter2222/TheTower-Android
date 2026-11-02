.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field static final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    return-object v0
.end method
