.class public final Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig$Builder;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    return-void
.end method
