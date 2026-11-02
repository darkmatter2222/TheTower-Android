.class public final Lads_mobile_sdk/cn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[J


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    .line 280
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 281
    sput-object v0, Lads_mobile_sdk/cn0;->f:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    .line 47
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lads_mobile_sdk/mm0;->b:Lads_mobile_sdk/mm0;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lads_mobile_sdk/om0;->b:Lads_mobile_sdk/om0;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    return-void
.end method

.method public static a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-object p5

    .line 471
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 527
    new-instance p3, Ljava/util/ArrayList;

    const/16 p5, 0xa

    invoke-static {p2, p5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p5

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    .line 529
    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    int-to-long v0, p5

    .line 530
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 587
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 588
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p2, :cond_3

    .line 589
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_3

    .line 590
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, p7

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 592
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_3
    return-object p6
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/nm0;
    .locals 21

    move-object/from16 v0, p0

    .line 106
    iget-object v1, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-string v2, "gads:available_memory_tier:enabled"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lads_mobile_sdk/nm0;->b:Lads_mobile_sdk/nm0;

    return-object v1

    .line 126
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 127
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 128
    iget-object v1, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v2

    const/4 v2, 0x7

    move/from16 v17, v7

    new-array v7, v2, [Ljava/lang/Integer;

    const/16 v18, 0x0

    aput-object v6, v7, v18

    aput-object v8, v7, v16

    aput-object v10, v7, v17

    const/4 v6, 0x3

    aput-object v12, v7, v6

    aput-object v13, v7, v9

    const/4 v8, 0x5

    aput-object v14, v7, v8

    aput-object v15, v7, v11

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 130
    const-string v10, "gads:device_tier:available_memory_thresholds_gb"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v3, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v1, v10, v7, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-wide/16 v12, 0x1

    .line 179
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v12, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v13, 0x8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v14, 0xc

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v19, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move/from16 v19, v6

    new-array v6, v2, [Ljava/lang/Long;

    aput-object v3, v6, v18

    aput-object v7, v6, v16

    aput-object v10, v6, v17

    aput-object v12, v6, v19

    aput-object v13, v6, v9

    aput-object v14, v6, v8

    aput-object v15, v6, v11

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 187
    new-array v2, v2, [Lads_mobile_sdk/nm0;

    sget-object v3, Lads_mobile_sdk/nm0;->d:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v18

    sget-object v3, Lads_mobile_sdk/nm0;->e:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v16

    sget-object v3, Lads_mobile_sdk/nm0;->f:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v17

    sget-object v3, Lads_mobile_sdk/nm0;->g:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v19

    sget-object v3, Lads_mobile_sdk/nm0;->h:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v9

    sget-object v3, Lads_mobile_sdk/nm0;->i:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v8

    sget-object v3, Lads_mobile_sdk/nm0;->j:Lads_mobile_sdk/nm0;

    aput-object v3, v2, v11

    .line 188
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 197
    sget-object v9, Lads_mobile_sdk/nm0;->c:Lads_mobile_sdk/nm0;

    .line 198
    sget-object v10, Lads_mobile_sdk/nm0;->k:Lads_mobile_sdk/nm0;

    const-wide/32 v11, 0x40000000

    move-object v6, v1

    .line 199
    invoke-static/range {v4 .. v12}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/nm0;

    return-object v1
.end method

.method public final a(I)Lads_mobile_sdk/om0;
    .locals 14

    int-to-long v0, p1

    .line 401
    iget-object p1, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v5, v10, v3

    aput-object v6, v10, v2

    const/4 v5, 0x3

    aput-object v7, v10, v5

    aput-object v8, v10, v4

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 403
    const-string v7, "key"

    const-string v8, "gads:device_tier:available_processor_thresholds"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaultValue"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    sget-object v7, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {p1, v8, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-wide/16 v6, 0x2

    .line 452
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v12, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, 0xa

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Long;

    aput-object v6, v13, v11

    aput-object v7, v13, v3

    aput-object v8, v13, v2

    aput-object v10, v13, v5

    aput-object v12, v13, v4

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 458
    new-array v7, v9, [Lads_mobile_sdk/om0;

    sget-object v8, Lads_mobile_sdk/om0;->d:Lads_mobile_sdk/om0;

    aput-object v8, v7, v11

    sget-object v8, Lads_mobile_sdk/om0;->e:Lads_mobile_sdk/om0;

    aput-object v8, v7, v3

    sget-object v3, Lads_mobile_sdk/om0;->f:Lads_mobile_sdk/om0;

    aput-object v3, v7, v2

    sget-object v2, Lads_mobile_sdk/om0;->g:Lads_mobile_sdk/om0;

    aput-object v2, v7, v5

    sget-object v2, Lads_mobile_sdk/om0;->h:Lads_mobile_sdk/om0;

    aput-object v2, v7, v4

    .line 459
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 466
    sget-object v5, Lads_mobile_sdk/om0;->c:Lads_mobile_sdk/om0;

    move-object v3, v6

    .line 467
    sget-object v6, Lads_mobile_sdk/om0;->i:Lads_mobile_sdk/om0;

    const-wide/16 v7, 0x1

    move-object v2, p1

    .line 468
    invoke-static/range {v0 .. v8}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object p1

    .line 469
    check-cast p1, Lads_mobile_sdk/om0;

    return-object p1
.end method

.method public final b()V
    .locals 22

    move-object/from16 v0, p0

    .line 78
    iget-object v1, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/mm0;->b:Lads_mobile_sdk/mm0;

    if-eq v1, v2, :cond_0

    .line 79
    iget-object v1, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/om0;->b:Lads_mobile_sdk/om0;

    if-eq v1, v2, :cond_0

    .line 80
    iget-object v1, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-void

    .line 86
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    .line 87
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 88
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 90
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    :goto_0
    move-wide v3, v1

    .line 92
    iget-object v1, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    iget-object v2, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v10

    const/4 v10, 0x7

    move/from16 v17, v5

    new-array v5, v10, [Ljava/lang/Integer;

    const/16 v18, 0x0

    aput-object v6, v5, v18

    aput-object v8, v5, v17

    aput-object v16, v5, v7

    const/4 v6, 0x3

    aput-object v12, v5, v6

    aput-object v13, v5, v9

    const/4 v8, 0x5

    aput-object v14, v5, v8

    aput-object v15, v5, v11

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 95
    const-string v12, "gads:device_tier:advertised_memory_thresholds_gb"

    const-string v13, "key"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "defaultValue"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v14, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v2, v12, v5, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    const-wide/16 v14, 0x1

    .line 144
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v14, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v14, 0x4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v15, 0x6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v19, 0x8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-wide/16 v19, 0xc

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-wide/16 v20, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v21, v6

    new-array v6, v10, [Ljava/lang/Long;

    aput-object v2, v6, v18

    aput-object v12, v6, v17

    aput-object v14, v6, v7

    aput-object v15, v6, v21

    aput-object v16, v6, v9

    aput-object v19, v6, v8

    aput-object v20, v6, v11

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 152
    new-array v2, v10, [Lads_mobile_sdk/mm0;

    sget-object v12, Lads_mobile_sdk/mm0;->d:Lads_mobile_sdk/mm0;

    aput-object v12, v2, v18

    sget-object v12, Lads_mobile_sdk/mm0;->e:Lads_mobile_sdk/mm0;

    aput-object v12, v2, v17

    sget-object v12, Lads_mobile_sdk/mm0;->f:Lads_mobile_sdk/mm0;

    aput-object v12, v2, v7

    sget-object v7, Lads_mobile_sdk/mm0;->g:Lads_mobile_sdk/mm0;

    aput-object v7, v2, v21

    sget-object v7, Lads_mobile_sdk/mm0;->h:Lads_mobile_sdk/mm0;

    aput-object v7, v2, v9

    sget-object v7, Lads_mobile_sdk/mm0;->i:Lads_mobile_sdk/mm0;

    aput-object v7, v2, v8

    sget-object v7, Lads_mobile_sdk/mm0;->j:Lads_mobile_sdk/mm0;

    aput-object v7, v2, v11

    .line 153
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 162
    sget-object v8, Lads_mobile_sdk/mm0;->c:Lads_mobile_sdk/mm0;

    .line 163
    sget-object v9, Lads_mobile_sdk/mm0;->k:Lads_mobile_sdk/mm0;

    move v2, v10

    const-wide/32 v10, 0x40000000

    .line 164
    invoke-static/range {v3 .. v11}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/mm0;

    .line 165
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 166
    iget-object v1, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    iget-object v5, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    .line 169
    const-string v6, "gads:device_tier:advertised_memory_granularity"

    invoke-static {v5, v6, v13, v2}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 170
    sget-object v7, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v5, v6, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 171
    sget-object v7, Lads_mobile_sdk/cn0;->f:[J

    const/16 v8, 0x13

    if-lt v2, v8, :cond_2

    goto :goto_1

    :cond_2
    if-gtz v2, :cond_3

    goto :goto_2

    .line 177
    :cond_3
    aget-wide v5, v7, v2

    .line 178
    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    move-wide v3, v5

    .line 179
    :goto_2
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 184
    iget-object v2, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/cn0;->a(I)Lads_mobile_sdk/om0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
