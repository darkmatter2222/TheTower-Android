.class public final enum Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayerForActivityOrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUsage"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

.field public static final enum Critical:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

.field public static final enum High:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

.field public static final enum Low:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

.field public static final enum Medium:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;
    .locals 4

    .line 66
    sget-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Low:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    sget-object v1, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Medium:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    sget-object v2, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->High:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    sget-object v3, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Critical:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    const-string v1, "Low"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Low:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    .line 69
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    const-string v1, "Medium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Medium:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    .line 70
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    const-string v1, "High"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->High:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    .line 71
    new-instance v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    const-string v1, "Critical"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->Critical:Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    .line 66
    invoke-static {}, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->$values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->$VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;
    .locals 1

    .line 66
    const-class v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;
    .locals 1

    .line 66
    sget-object v0, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->$VALUES:[Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    invoke-virtual {v0}, [Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;

    return-object v0
.end method
