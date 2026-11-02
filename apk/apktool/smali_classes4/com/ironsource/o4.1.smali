.class public final Lcom/ironsource/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineVersionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineVersionProvider.kt\ncom/ironsource/environment/coroutine/CoroutineVersionProvider\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,43:1\n12637#2,2:44\n*S KotlinDebug\n*F\n+ 1 CoroutineVersionProvider.kt\ncom/ironsource/environment/coroutine/CoroutineVersionProvider\n*L\n17#1:44,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final c()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "kotlinx.coroutines.test.TestScope"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private final d()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "kotlinx.coroutines.flow.FlowKt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "getDeclaredMethods(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 30
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/o4;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.9.0+"

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/o4;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1.6.0-1.8.x"

    return-object v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/o4;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1.3.0-1.5.x"

    return-object v0

    .line 4
    :cond_2
    const-string v0, "<1.3.0"

    return-object v0
.end method
