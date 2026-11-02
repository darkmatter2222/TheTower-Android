.class public final Lcom/unity3d/player/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field public final b:J

.field public final c:[Ljava/lang/String;

.field public final d:[I

.field public final e:[I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/unity3d/player/g;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    .line 247
    iput-wide p2, p0, Lcom/unity3d/player/g;->b:J

    .line 248
    iput-object p4, p0, Lcom/unity3d/player/g;->c:[Ljava/lang/String;

    .line 249
    iput-object p5, p0, Lcom/unity3d/player/g;->d:[I

    .line 250
    iput-object p6, p0, Lcom/unity3d/player/g;->e:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/unity3d/player/g;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    iget-wide v1, p0, Lcom/unity3d/player/g;->b:J

    iget-object v3, p0, Lcom/unity3d/player/g;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/player/g;->d:[I

    iget-object v5, p0, Lcom/unity3d/player/g;->e:[I

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;->onStatusResult(J[Ljava/lang/String;[I[I)V

    return-void
.end method
