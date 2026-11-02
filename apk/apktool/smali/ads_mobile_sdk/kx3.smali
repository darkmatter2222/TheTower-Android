.class public final Lads_mobile_sdk/kx3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private protocolNumber_:I

.field private variant_:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/kx3;
    .locals 1

    sget-object v0, Lads_mobile_sdk/kx3;->DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/kx3;

    invoke-direct {v0}, Lads_mobile_sdk/kx3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/kx3;->DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

    .line 5
    const-class v1, Lads_mobile_sdk/kx3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method

.method public static v()Lads_mobile_sdk/kx3;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/kx3;->DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lads_mobile_sdk/ix3;->a:[I

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

    .line 23
    :cond_0
    const-class p1, Lads_mobile_sdk/kx3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 24
    :cond_1
    sget-object p1, Lads_mobile_sdk/kx3;->DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

    return-object p1

    .line 25
    :cond_2
    const-string p1, "protocolNumber_"

    const-string p2, "variant_"

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 33
    sget-object p2, Lads_mobile_sdk/kx3;->DEFAULT_INSTANCE:Lads_mobile_sdk/kx3;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    new-instance p1, Lads_mobile_sdk/jx3;

    invoke-direct {p1}, Lads_mobile_sdk/jx3;-><init>()V

    return-object p1

    .line 35
    :cond_4
    new-instance p1, Lads_mobile_sdk/kx3;

    invoke-direct {p1}, Lads_mobile_sdk/kx3;-><init>()V

    return-object p1
.end method

.method public final w()I
    .locals 1

    .line 63
    iget v0, p0, Lads_mobile_sdk/kx3;->protocolNumber_:I

    return v0
.end method

.method public final x()I
    .locals 1

    .line 126
    iget v0, p0, Lads_mobile_sdk/kx3;->variant_:I

    return v0
.end method
