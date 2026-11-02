.class public final Lcom/unity3d/player/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/PermissionRequest;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:[I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/PermissionRequest;[Ljava/lang/String;[I)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/unity3d/player/g0;->a:Lcom/unity3d/player/PermissionRequest;

    iput-object p2, p0, Lcom/unity3d/player/g0;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/g0;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/unity3d/player/g0;->a:Lcom/unity3d/player/PermissionRequest;

    iget-object v1, p0, Lcom/unity3d/player/g0;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/player/g0;->c:[I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/PermissionRequest;->permissionResponse([Ljava/lang/String;[I)V

    return-void
.end method
