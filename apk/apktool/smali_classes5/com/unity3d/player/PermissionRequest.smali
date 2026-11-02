.class public Lcom/unity3d/player/PermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DENIED:I = 0x2

.field static final DENIED_DONT_ASK_AGAIN:I = 0x3

.field static final GRANTED:I = 0x1


# instance fields
.field private mCallbacks:Lcom/unity3d/player/IPermissionRequestCallbacks;

.field private mPermissionNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/unity3d/player/IPermissionRequestCallbacks;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/player/PermissionRequest;->mPermissionNames:[Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/unity3d/player/PermissionRequest;->mCallbacks:Lcom/unity3d/player/IPermissionRequestCallbacks;

    return-void
.end method


# virtual methods
.method getPermissionNames()[Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unity3d/player/PermissionRequest;->mPermissionNames:[Ljava/lang/String;

    return-object v0
.end method

.method permissionResponse([Ljava/lang/String;[I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unity3d/player/PermissionRequest;->mCallbacks:Lcom/unity3d/player/IPermissionRequestCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/IPermissionRequestCallbacks;->onPermissionResult([Ljava/lang/String;[I)V

    return-void
.end method
