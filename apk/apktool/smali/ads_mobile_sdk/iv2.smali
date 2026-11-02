.class public final Lads_mobile_sdk/iv2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private activeExperimentIdsMemoizedSerializedSize:I

.field private activeExperimentIds_:Lads_mobile_sdk/yh1$c;

.field private architecture_:I

.field private bitField0_:I

.field private metadataCase_:I

.field private metadata_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetactiveExperimentIds_(Lads_mobile_sdk/iv2;)Lads_mobile_sdk/yh1$c;
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/iv2;->activeExperimentIds_:Lads_mobile_sdk/yh1$c;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/iv2;)I
    .locals 0

    iget p0, p0, Lads_mobile_sdk/iv2;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputactiveExperimentIds_(Lads_mobile_sdk/iv2;Lads_mobile_sdk/yh1$c;)V
    .locals 0

    iput-object p1, p0, Lads_mobile_sdk/iv2;->activeExperimentIds_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputarchitecture_(Lads_mobile_sdk/iv2;I)V
    .locals 0

    iput p1, p0, Lads_mobile_sdk/iv2;->architecture_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/iv2;I)V
    .locals 0

    iput p1, p0, Lads_mobile_sdk/iv2;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/iv2;
    .locals 1

    sget-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/iv2;

    invoke-direct {v0}, Lads_mobile_sdk/iv2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    .line 5
    const-class v1, Lads_mobile_sdk/iv2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lads_mobile_sdk/iv2;->metadataCase_:I

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Lads_mobile_sdk/iv2;->activeExperimentIdsMemoizedSerializedSize:I

    .line 269
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/iv2;->activeExperimentIds_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method public static A()Lads_mobile_sdk/gv2;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gv2;

    return-object v0
.end method

.method public static a(Lads_mobile_sdk/du;)Lads_mobile_sdk/iv2;
    .locals 1

    .line 243
    sget-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/iv2;

    return-object p0
.end method

.method public static a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/iv2;
    .locals 1

    .line 244
    sget-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BLads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/iv2;

    return-object p0
.end method

.method public static x()Lads_mobile_sdk/iv2;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 245
    sget-object p2, Lads_mobile_sdk/ev2;->a:[I

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

    .line 272
    :cond_0
    const-class p1, Lads_mobile_sdk/iv2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 273
    :cond_1
    sget-object p1, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    return-object p1

    .line 274
    :cond_2
    const-class v3, Lads_mobile_sdk/jv2;

    const-class v4, Lads_mobile_sdk/hh2;

    sget-object v6, Lads_mobile_sdk/xn;->a:Lads_mobile_sdk/xn;

    const-string v7, "activeExperimentIds_"

    const-string v0, "metadata_"

    const-string v1, "metadataCase_"

    const-string v2, "bitField0_"

    const-string v5, "architecture_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 280
    sget-object p2, Lads_mobile_sdk/iv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/iv2;

    const-string p3, "\u0004\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\u180c\u0000\u0004\'"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 281
    :cond_3
    new-instance p1, Lads_mobile_sdk/gv2;

    invoke-direct {p1}, Lads_mobile_sdk/gv2;-><init>()V

    return-object p1

    .line 282
    :cond_4
    new-instance p1, Lads_mobile_sdk/iv2;

    invoke-direct {p1}, Lads_mobile_sdk/iv2;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/hh2;)V
    .locals 0

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iput-object p1, p0, Lads_mobile_sdk/iv2;->metadata_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 242
    iput p1, p0, Lads_mobile_sdk/iv2;->metadataCase_:I

    return-void
.end method

.method public final a(Lads_mobile_sdk/jv2;)V
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lads_mobile_sdk/iv2;->metadata_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 96
    iput p1, p0, Lads_mobile_sdk/iv2;->metadataCase_:I

    return-void
.end method

.method public final v()Lads_mobile_sdk/yh1$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/iv2;->activeExperimentIds_:Lads_mobile_sdk/yh1$c;

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/yn;
    .locals 1

    .line 201
    iget v0, p0, Lads_mobile_sdk/iv2;->architecture_:I

    invoke-static {v0}, Lads_mobile_sdk/yn;->a(I)Lads_mobile_sdk/yn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    :cond_0
    return-object v0
.end method

.method public final y()Lads_mobile_sdk/jv2;
    .locals 2

    .line 85
    iget v0, p0, Lads_mobile_sdk/iv2;->metadataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lads_mobile_sdk/iv2;->metadata_:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/jv2;

    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lads_mobile_sdk/jv2;->w()Lads_mobile_sdk/jv2;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lads_mobile_sdk/hh2;
    .locals 2

    .line 135
    iget v0, p0, Lads_mobile_sdk/iv2;->metadataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lads_mobile_sdk/iv2;->metadata_:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/hh2;

    return-object v0

    .line 138
    :cond_0
    invoke-static {}, Lads_mobile_sdk/hh2;->v()Lads_mobile_sdk/hh2;

    move-result-object v0

    return-object v0
.end method
