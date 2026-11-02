.class public Lcom/google/android/play/agesignals/AgeSignalsRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/agesignals/AgeSignalsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/play/agesignals/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/play/agesignals/AgeSignalsRequest;
    .locals 2

    new-instance v0, Lcom/google/android/play/agesignals/AgeSignalsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/agesignals/AgeSignalsRequest;-><init>(Lcom/google/android/play/agesignals/zzc;)V

    return-object v0
.end method
