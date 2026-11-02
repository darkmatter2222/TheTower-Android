.class public final enum Lcom/unity3d/player/W;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/unity3d/player/W;

.field public static final enum b:Lcom/unity3d/player/W;

.field public static final enum c:Lcom/unity3d/player/W;

.field public static final enum d:Lcom/unity3d/player/W;

.field public static final enum e:Lcom/unity3d/player/W;

.field public static final enum f:Lcom/unity3d/player/W;

.field public static final enum g:Lcom/unity3d/player/W;

.field public static final enum h:Lcom/unity3d/player/W;

.field public static final enum i:Lcom/unity3d/player/W;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x0

    const-string v2, "PAUSE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x1

    const-string v2, "RESUME"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->b:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x2

    const-string v2, "QUIT"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->c:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x3

    const-string v2, "SURFACE_LOST"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->d:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x4

    const-string v2, "SURFACE_ACQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->e:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x5

    const-string v2, "FOCUS_LOST"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->f:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x6

    const-string v2, "FOCUS_GAINED"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->g:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/4 v1, 0x7

    const-string v2, "NEXT_FRAME"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->h:Lcom/unity3d/player/W;

    new-instance v0, Lcom/unity3d/player/W;

    const/16 v1, 0x8

    const-string v2, "ORIENTATION_ANGLE_CHANGE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/W;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/player/W;->i:Lcom/unity3d/player/W;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
