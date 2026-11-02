.class public final Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/LevelPlayInitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayInitRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayInitRequest.kt\ncom/unity3d/mediation/LevelPlayInitRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/mediation/LevelPlayInitRequest;
    .locals 6

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayInitRequest;

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/mediation/LevelPlayInitRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final withUserId(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
