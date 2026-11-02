.class public final Lcom/unity3d/player/a/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Z = false


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/unity3d/player/a/S;->a:Z

    .line 25
    iput-boolean v0, p0, Lcom/unity3d/player/a/S;->b:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/unity3d/player/a/S;->c:Z

    .line 27
    iput-boolean v0, p0, Lcom/unity3d/player/a/S;->d:Z

    return-void
.end method
