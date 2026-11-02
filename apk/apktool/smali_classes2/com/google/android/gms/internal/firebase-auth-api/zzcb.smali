.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private zza:Z

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzbv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;Lcom/google/android/gms/internal/firebase-auth-api/zzcc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Z

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Z

    return p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcc;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Z

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    return-object p0
.end method
