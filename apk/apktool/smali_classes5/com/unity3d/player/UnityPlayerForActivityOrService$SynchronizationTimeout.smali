.class public final enum Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayerForActivityOrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SynchronizationTimeout"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

.field public static final enum Destroy:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

.field public static final enum Pause:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

.field public static final enum SurfaceDetach:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;


# instance fields
.field private m_TimeoutMilliseconds:I

.field final value:I


# direct methods
.method private static synthetic $values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;
    .locals 3

    .line 33
    sget-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Pause:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    sget-object v1, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->SurfaceDetach:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    sget-object v2, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Destroy:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    filled-new-array {v0, v1, v2}, [Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    const-string v1, "Pause"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Pause:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    .line 36
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    const-string v1, "SurfaceDetach"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->SurfaceDetach:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    .line 37
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    const-string v1, "Destroy"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Destroy:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    .line 33
    invoke-static {}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->$values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->$VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->value:I

    const/16 p1, 0x7d0

    .line 45
    iput p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return-void
.end method

.method public static setTimeoutForAll(I)V
    .locals 4

    .line 56
    const-class v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    invoke-virtual {v3, p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->setTimeout(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;
    .locals 1

    .line 33
    const-class v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;
    .locals 1

    .line 33
    sget-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->$VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-virtual {v0}, [Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    return-object v0
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return v0
.end method

.method public setTimeout(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return-void
.end method
