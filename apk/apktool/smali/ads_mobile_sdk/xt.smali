.class public final Lads_mobile_sdk/xt;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private thirdPartyJavascript_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/nt;",
            ">;"
        }
    .end annotation
.end field

.field private thirdPartySdk_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/wt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetthirdPartySdk_(Lads_mobile_sdk/xt;)Lads_mobile_sdk/yh1$f;
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xt;
    .locals 1

    sget-object v0, Lads_mobile_sdk/xt;->DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/xt;

    invoke-direct {v0}, Lads_mobile_sdk/xt;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/xt;->DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

    .line 5
    const-class v1, Lads_mobile_sdk/xt;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 64
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    .line 65
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xt;->thirdPartyJavascript_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static w()Lads_mobile_sdk/gt;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/xt;->DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gt;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lads_mobile_sdk/ft;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    const-class p1, Lads_mobile_sdk/xt;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    sget-object p1, Lads_mobile_sdk/xt;->DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

    return-object p1

    .line 33
    :cond_2
    const-class p1, Lads_mobile_sdk/wt;

    const-string p2, "thirdPartyJavascript_"

    const-class p3, Lads_mobile_sdk/nt;

    const-string v0, "thirdPartySdk_"

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 42
    sget-object p2, Lads_mobile_sdk/xt;->DEFAULT_INSTANCE:Lads_mobile_sdk/xt;

    const-string p3, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_3
    new-instance p1, Lads_mobile_sdk/gt;

    invoke-direct {p1}, Lads_mobile_sdk/gt;-><init>()V

    return-object p1

    .line 44
    :cond_4
    new-instance p1, Lads_mobile_sdk/xt;

    invoke-direct {p1}, Lads_mobile_sdk/xt;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/wt;)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    .line 4
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    .line 7
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 5007
    iget-object v0, p0, Lads_mobile_sdk/xt;->thirdPartySdk_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method
