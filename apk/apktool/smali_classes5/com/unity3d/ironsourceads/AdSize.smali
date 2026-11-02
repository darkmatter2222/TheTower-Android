.class public final Lcom/unity3d/ironsourceads/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/AdSize$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ironsourceads/AdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ironsourceads/AdSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/ironsourceads/AdSize;->a:I

    iput p2, p0, Lcom/unity3d/ironsourceads/AdSize;->b:I

    iput-object p3, p0, Lcom/unity3d/ironsourceads/AdSize;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static final banner()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->banner()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final large()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->large()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final leaderboard()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->leaderboard()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final mediumRectangle()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->mediumRectangle()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/ironsourceads/AdSize;->b:I

    return v0
.end method

.method public final getSizeDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/AdSize;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/ironsourceads/AdSize;->a:I

    return v0
.end method
