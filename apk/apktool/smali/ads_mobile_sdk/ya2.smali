.class public final Lads_mobile_sdk/ya2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zt;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ya2;->a:Lads_mobile_sdk/zt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 137
    iget-object v0, p0, Lads_mobile_sdk/ya2;->a:Lads_mobile_sdk/zt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CSRB buildSdkCoreAdUrlResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lads_mobile_sdk/ya2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
