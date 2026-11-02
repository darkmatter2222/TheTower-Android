.class public final synthetic Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataStoreProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/datastore/core/CorruptionException;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataStoreProvider;->$r8$lambda$WwaLluScZNjVmjhiaN-c6P393L8(Landroidx/datastore/core/CorruptionException;)Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;

    move-result-object p1

    return-object p1
.end method
