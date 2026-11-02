.class public final Lads_mobile_sdk/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final a:Lads_mobile_sdk/y7;

.field public static final b:Lads_mobile_sdk/u7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/y7;

    invoke-direct {v0}, Lads_mobile_sdk/y7;-><init>()V

    sput-object v0, Lads_mobile_sdk/y7;->a:Lads_mobile_sdk/y7;

    .line 11
    invoke-static {}, Lads_mobile_sdk/u7;->v()Lads_mobile_sdk/u7;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/y7;->b:Lads_mobile_sdk/u7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/y7;->b:Lads_mobile_sdk/u7;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    :try_start_0
    invoke-static {p1}, Lads_mobile_sdk/u7;->a(Ljava/io/InputStream;)Lads_mobile_sdk/u7;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 17
    :catch_0
    sget-object p1, Lads_mobile_sdk/y7;->b:Lads_mobile_sdk/u7;

    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lads_mobile_sdk/u7;

    .line 9
    invoke-virtual {p1, p2}, Lads_mobile_sdk/f;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
