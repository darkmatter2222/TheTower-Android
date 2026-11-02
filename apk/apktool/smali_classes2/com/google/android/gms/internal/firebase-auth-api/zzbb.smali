.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzbb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbi;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;

    move-result-object p1

    return-object p1
.end method

.method public zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;
    .locals 1

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza(III)V

    :goto_0
    if-ge v0, p3, :cond_0

    .line 3
    aget-byte p2, p1, v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zza(B)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
