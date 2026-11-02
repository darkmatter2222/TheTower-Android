.class public final Lads_mobile_sdk/h81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public final d:Lads_mobile_sdk/p53;

.field public final e:Lkotlinx/coroutines/Deferred;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/p53;Lkotlinx/coroutines/Deferred;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lads_mobile_sdk/h81;->a:I

    .line 5
    iput-object p2, p0, Lads_mobile_sdk/h81;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    .line 8
    iput-object p5, p0, Lads_mobile_sdk/h81;->e:Lkotlinx/coroutines/Deferred;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/h81;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/p53;Lkotlinx/coroutines/Deferred;Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Lads_mobile_sdk/h81;-><init>(ILjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/p53;Lkotlinx/coroutines/Deferred;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/p53;
    .locals 1

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 46
    iget v0, p0, Lads_mobile_sdk/h81;->a:I

    return v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .line 48
    iget-object v0, p0, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/h81;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/h81;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .line 57
    iget v0, p0, Lads_mobile_sdk/h81;->a:I

    const/16 v1, 0xc8

    if-gt v1, v0, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
