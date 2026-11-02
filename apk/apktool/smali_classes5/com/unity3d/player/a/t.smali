.class public abstract Lcom/unity3d/player/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false


# direct methods
.method public static Log(ILjava/lang/String;)V
    .locals 2

    .line 34
    sget-boolean v0, Lcom/unity3d/player/a/t;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const-string v1, "Unity"

    if-ne p0, v0, :cond_1

    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
