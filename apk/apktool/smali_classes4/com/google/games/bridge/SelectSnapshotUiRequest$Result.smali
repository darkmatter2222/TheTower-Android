.class public Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;
.super Ljava/lang/Object;
.source "SelectSnapshotUiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/games/bridge/SelectSnapshotUiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public metadata:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

.field public status:I

.field final synthetic this$0:Lcom/google/games/bridge/SelectSnapshotUiRequest;


# direct methods
.method constructor <init>(Lcom/google/games/bridge/SelectSnapshotUiRequest;ILcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;->this$0:Lcom/google/games/bridge/SelectSnapshotUiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;->status:I

    .line 42
    iput-object p3, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;->metadata:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    return-void
.end method
