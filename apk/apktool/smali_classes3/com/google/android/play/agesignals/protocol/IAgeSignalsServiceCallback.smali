.class public interface abstract Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCompleteCheckAgeSignals(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
