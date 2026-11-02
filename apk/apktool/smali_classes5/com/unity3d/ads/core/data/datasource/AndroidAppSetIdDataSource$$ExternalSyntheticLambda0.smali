.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->$r8$lambda$P2PCuDJ46uvK8iqTv0iUysFmd3U(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;Lcom/google/android/gms/appset/AppSetIdInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
