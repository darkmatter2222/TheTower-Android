.class public final synthetic Lcom/unity3d/services/core/network/domain/CleanupDirectory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/unity3d/services/core/network/domain/CleanupDirectory;->$r8$lambda$aZzg_ys7kUtAObSaTmQuDSHpRLw(Lkotlin/Pair;Ljava/io/File;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
