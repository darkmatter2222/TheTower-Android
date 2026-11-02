.class public interface abstract Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/uwb/RangingSessionCallback$RangingSuspendedReason;
    }
.end annotation


# virtual methods
.method public abstract onRangingInitialized(Lcom/google/android/gms/nearby/uwb/UwbDevice;)V
.end method

.method public abstract onRangingResult(Lcom/google/android/gms/nearby/uwb/UwbDevice;Lcom/google/android/gms/nearby/uwb/RangingPosition;)V
.end method

.method public abstract onRangingSuspended(Lcom/google/android/gms/nearby/uwb/UwbDevice;I)V
.end method
