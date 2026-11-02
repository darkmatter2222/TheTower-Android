.class public final synthetic Lcom/google/android/gms/internal/nearby/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzkp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzkn;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzkn;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkp;->zzb(Lcom/google/android/gms/internal/nearby/zzkp;Landroid/nfc/Tag;)V

    return-void
.end method
