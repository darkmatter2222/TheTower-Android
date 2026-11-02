.class public Lcom/google/android/play/agesignals/AgeSignalsManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/agesignals/AgeSignalsManager;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/agesignals/zzb;

    new-instance v1, Lcom/google/android/play/agesignals/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/play/agesignals/zzg;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/agesignals/zzb;-><init>(Lcom/google/android/play/agesignals/zzg;)V

    return-object v0
.end method
