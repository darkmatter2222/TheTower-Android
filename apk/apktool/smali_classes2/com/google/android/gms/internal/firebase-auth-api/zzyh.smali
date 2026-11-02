.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyh;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzamx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzyh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzyh;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzyh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzamx;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzani;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzani<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzalx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;-><init>()V

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    .line 22
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zze:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    throw p2

    .line 18
    :pswitch_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    .line 16
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 8
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    return-object p1

    .line 5
    :pswitch_3
    const-string p1, "zze"

    const-string p2, "zzf"

    const-class p3, Lcom/google/android/gms/internal/firebase-auth-api/zzxn;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyl;)V

    return-object p1

    .line 3
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
