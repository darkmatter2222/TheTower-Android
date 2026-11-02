.class public final Lads_mobile_sdk/xp0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private eoid_:Ljava/lang/String;

.field private timestampMs_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/xp0;)I
    .locals 0

    iget p0, p0, Lads_mobile_sdk/xp0;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/xp0;I)V
    .locals 0

    iput p1, p0, Lads_mobile_sdk/xp0;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimestampMs_(Lads_mobile_sdk/xp0;J)V
    .locals 0

    iput-wide p1, p0, Lads_mobile_sdk/xp0;->timestampMs_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xp0;
    .locals 1

    sget-object v0, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/xp0;

    invoke-direct {v0}, Lads_mobile_sdk/xp0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    .line 5
    const-class v1, Lads_mobile_sdk/xp0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/xp0;->eoid_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/xp0;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    return-object v0
.end method

.method public static y()Lads_mobile_sdk/wp0;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/wp0;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lads_mobile_sdk/vp0;->a:[I

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
    const-class p1, Lads_mobile_sdk/xp0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 24
    :cond_1
    sget-object p1, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    return-object p1

    .line 25
    :cond_2
    const-string p1, "eoid_"

    const-string p2, "timestampMs_"

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 33
    sget-object p2, Lads_mobile_sdk/xp0;->DEFAULT_INSTANCE:Lads_mobile_sdk/xp0;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1208\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    new-instance p1, Lads_mobile_sdk/wp0;

    invoke-direct {p1}, Lads_mobile_sdk/wp0;-><init>()V

    return-object p1

    .line 35
    :cond_4
    new-instance p1, Lads_mobile_sdk/xp0;

    invoke-direct {p1}, Lads_mobile_sdk/xp0;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/xp0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/xp0;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/xp0;->eoid_:Ljava/lang/String;

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lads_mobile_sdk/xp0;->eoid_:Ljava/lang/String;

    return-object v0
.end method

.method public final x()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lads_mobile_sdk/xp0;->timestampMs_:J

    return-wide v0
.end method
