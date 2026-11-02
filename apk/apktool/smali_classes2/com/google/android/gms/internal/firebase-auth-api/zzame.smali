.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzame;
.super Ljava/lang/RuntimeException;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
