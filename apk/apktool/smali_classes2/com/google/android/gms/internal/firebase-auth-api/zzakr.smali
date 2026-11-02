.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakr;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzakq;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;-><init>([BIIZLcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method protected final zzy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzab()I

    move-result v0

    return v0
.end method

.method protected final zzz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzab()I

    move-result v0

    return v0
.end method
