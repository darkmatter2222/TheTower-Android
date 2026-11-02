.class public final Lads_mobile_sdk/hh2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private expirationTimestampMs_:J

.field private generationTimestampMs_:J

.field private signature_:Lads_mobile_sdk/du;

.field private vmId_:Lads_mobile_sdk/kx3;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hh2;
    .locals 1

    sget-object v0, Lads_mobile_sdk/hh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/hh2;

    invoke-direct {v0}, Lads_mobile_sdk/hh2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/hh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

    .line 5
    const-class v1, Lads_mobile_sdk/hh2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/hh2;->signature_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static v()Lads_mobile_sdk/hh2;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Lads_mobile_sdk/fh2;->a:[I

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

    .line 25
    :cond_0
    const-class p1, Lads_mobile_sdk/hh2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    sget-object p1, Lads_mobile_sdk/hh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

    return-object p1

    .line 27
    :cond_2
    const-string p1, "generationTimestampMs_"

    const-string p2, "expirationTimestampMs_"

    const-string p3, "bitField0_"

    const-string v0, "vmId_"

    const-string v1, "signature_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 37
    sget-object p2, Lads_mobile_sdk/hh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh2;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u1002\u0002\u0004\u1002\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    new-instance p1, Lads_mobile_sdk/gh2;

    invoke-direct {p1}, Lads_mobile_sdk/gh2;-><init>()V

    return-object p1

    .line 39
    :cond_4
    new-instance p1, Lads_mobile_sdk/hh2;

    invoke-direct {p1}, Lads_mobile_sdk/hh2;-><init>()V

    return-object p1
.end method

.method public final w()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lads_mobile_sdk/hh2;->expirationTimestampMs_:J

    return-wide v0
.end method

.method public final x()Lads_mobile_sdk/du;
    .locals 1

    .line 134
    iget-object v0, p0, Lads_mobile_sdk/hh2;->signature_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final y()Lads_mobile_sdk/kx3;
    .locals 1

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/hh2;->vmId_:Lads_mobile_sdk/kx3;

    if-nez v0, :cond_0

    invoke-static {}, Lads_mobile_sdk/kx3;->v()Lads_mobile_sdk/kx3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
