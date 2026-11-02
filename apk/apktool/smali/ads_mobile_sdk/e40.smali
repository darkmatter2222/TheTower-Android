.class public abstract Lads_mobile_sdk/e40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/CoroutineScope;)Lads_mobile_sdk/d40;
    .locals 1

    .line 1
    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    const-string v0, "$scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
