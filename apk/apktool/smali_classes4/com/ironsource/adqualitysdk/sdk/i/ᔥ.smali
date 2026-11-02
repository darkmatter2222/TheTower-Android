.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﾇ:Ljava/util/HashMap;

.field public final ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "I9BfDNitR5QC1lAb\n"

    const-string v1, "bLI1abvZAf0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾇ:Ljava/util/HashMap;

    return-void
.end method

.method public static ﾒ(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_4

    .line 457
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 460
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 461
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 462
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 465
    :cond_1
    new-array v1, v3, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 466
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    const/4 v4, 0x1

    .line 467
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 469
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 471
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 472
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v2

    :catch_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/Object;ZZZ)Ljava/util/ArrayList;
    .locals 1

    if-eqz p0, :cond_2

    .line 450
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 451
    new-instance p1, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 452
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 453
    new-instance p1, Ljava/util/ArrayList;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 454
    :cond_1
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 455
    new-instance p1, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .locals 8

    .line 388
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object v0

    .line 389
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 390
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 391
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻐ:Ljava/util/HashSet;

    .line 392
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 393
    :cond_0
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 394
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 395
    iget v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    .line 396
    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 398
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

    .line 399
    :try_start_0
    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ḷ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 400
    iget-boolean p3, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻛ:Z

    if-eqz p3, :cond_1

    .line 401
    iget-object p3, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻏ:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻐ:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 403
    :cond_2
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 404
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 405
    iget-object v4, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 406
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 407
    iget v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    .line 408
    invoke-static {p3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 409
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 410
    iget-object v5, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 411
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 412
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 413
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 414
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;ILcom/ironsource/adqualitysdk/sdk/i/ᵖ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object v2

    goto/16 :goto_4

    .line 415
    :cond_4
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 416
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 417
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 418
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 p3, p3, 0x1

    .line 419
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;ILcom/ironsource/adqualitysdk/sdk/i/ᵖ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object v2

    goto/16 :goto_4

    .line 420
    :cond_6
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 421
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 422
    iget-boolean v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 423
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 424
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_7
    iget-object v1, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 426
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 427
    iget v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    .line 428
    invoke-static {p3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v3

    .line 429
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 430
    iget v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    .line 431
    invoke-static {p3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v4

    .line 432
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 433
    iget v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    .line 434
    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v1

    .line 435
    invoke-static {v0, v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;ZZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    iget-object v3, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    if-eqz v1, :cond_d

    .line 437
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v0, :cond_a

    .line 438
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_8

    .line 439
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6, v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_3

    .line 440
    :cond_8
    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_9

    .line 441
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-direct {v5, v6, v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Map;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_3

    .line 442
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 443
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    new-instance v6, Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6, v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_3

    :cond_a
    move-object v5, v2

    .line 444
    :goto_3
    iget v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    .line 445
    iget-object v6, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 446
    invoke-virtual {p0, v5, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 447
    iget-boolean v5, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻛ:Z

    if-nez v5, :cond_b

    return-object v4

    .line 448
    :cond_b
    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    iget v6, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    iget v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    goto :goto_2

    :cond_c
    move-object v2, v4

    :cond_d
    :goto_4
    return-object v2
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .locals 11

    .line 42
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_8

    .line 44
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 47
    invoke-static {v1, v2, v2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;ZZZ)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 48
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nsR6lDKwih37/2WdPaGMDbLTZNE+ts80uswm0SOhjByyym+VcQ==\n"

    const-string v0, "27wK8VHE73k=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 51
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v1, :cond_4

    .line 52
    :try_start_0
    instance-of v6, v1, Ljava/util/Collection;

    if-eqz v6, :cond_2

    .line 53
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7, v5, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_0

    .line 54
    :cond_2
    instance-of v6, v1, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 55
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    invoke-direct {v6, v7, v5, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Map;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 57
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    new-instance v7, Ljava/util/ArrayList;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v5, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    goto :goto_0

    :cond_4
    move-object v6, v4

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 60
    const-class v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 61
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 63
    :cond_5
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 64
    :goto_2
    new-instance v10, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-direct {v10, v8, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    move-object v5, v9

    move-object v6, v10

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_1

    add-int/lit8 v5, p3, 0x1

    .line 65
    invoke-virtual {p0, v6, p2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    return-object v4

    :cond_8
    return-object p1
.end method

.method public final ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;ILcom/ironsource/adqualitysdk/sdk/i/ᵖ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 3
    iget v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    const/4 v1, 0x0

    if-eq p3, v0, :cond_6

    if-eqz p1, :cond_6

    .line 4
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-lez p3, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    :try_start_0
    iget-object v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 9
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/t0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 12
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/t0;->ﾒ:Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v2, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 15
    iget-object v4, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 16
    iget-object v5, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 17
    iget v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    .line 18
    invoke-static {p3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 20
    iget v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    goto :goto_0

    :cond_2
    move v4, v3

    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    move v6, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eq v6, v4, :cond_4

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;

    .line 26
    array-length v8, v5

    .line 27
    array-length v9, v7

    add-int v10, v8, v9

    .line 28
    new-array v10, v10, [Ljava/lang/reflect/Field;

    .line 29
    invoke-static {v5, v3, v10, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v7, v3, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v10

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v5

    .line 31
    :goto_2
    iget-object v4, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    .line 32
    array-length v5, v0

    :goto_3
    if-ge v3, v5, :cond_6

    aget-object v6, v0, v3

    .line 33
    invoke-virtual {v6, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    iget-object v7, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    .line 35
    iget v8, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-direct {v7, v6, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    .line 37
    invoke-virtual {p0, v7, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 38
    iget-boolean v8, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻛ:Z

    if-nez v8, :cond_5

    return-object v7

    .line 39
    :cond_5
    iget-object v7, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    iget v8, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 40
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    const-string p1, "JVHIeSB7YSgUV9N4NXtJLwpG2WIUMmMhBA==\n"

    const-string p2, "YCO6FlJbBk0=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 41
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    :cond_6
    :goto_4
    return-object v1
.end method

.method public final ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .locals 12

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    iget-object v3, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 69
    iput-object v0, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    .line 70
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾇ:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 71
    :try_start_0
    iget-object v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 73
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, p1

    move-object v7, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 75
    const-class v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 76
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 79
    :goto_1
    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-direct {v11, v9, v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)V

    move-object v8, v10

    move-object v7, v11

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 80
    invoke-virtual {p0, v7, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 82
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    const-string v0, "qmo/kNDox1CbbCSRxejvV4V9LovkocVZizgrjc2lgEWObCU=\n"

    const-string v7, "7xhN/6LIoDU=\n"

    invoke-static {v0, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v6

    .line 83
    invoke-static/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_2

    .line 84
    iget-object v6, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

    .line 85
    :try_start_1
    invoke-interface {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ḷ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move v6, v4

    :goto_3
    if-eqz v6, :cond_2

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HYmEA6+aVt0Ui9Edqs5YjxKI0Q==\n"

    const-string v4, "e+bxbcu6MK8=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 87
    const-string v1, "u8E=\n"

    const-string v2, "1rIJSeDTjMI=\n"

    invoke-static {v1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 166
    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "07ZcBlBIKpOA5V8=\n"

    const-string v8, "6ZYsZyQgCv4=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾇ:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;

    invoke-direct {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;)V

    .line 173
    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;ILcom/ironsource/adqualitysdk/sdk/i/ᵖ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pM6Rz5o0CGvi\n"

    const-string v6, "wqHkof4UYQU=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aMyFww==\n"

    const-string v4, "Bb+p43D5UmQ=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 177
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string v2, "O/cDHHYnAdo78Q9WYCEB\n"

    const-string v4, "G5hhdhNEdak=\n"

    invoke-static {v2, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p0, p2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾇ:Ljava/util/HashMap;

    .line 268
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    .line 269
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 272
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fya+VTgPJGcdaaMbfg==\n"

    const-string v4, "eUnKdV5gUQk=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "xTSX/Q==\n"

    const-string v2, "qEe73RuPBlU=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 273
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 274
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 275
    const-string v0, "InLnEyuEslIidOtZPYKy\n"

    const-string v1, "Ah2FeU7nxiE=\n"

    invoke-static {v0, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 367
    invoke-virtual {p0, v5, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 481
    const-string v1, "7qs=\n"

    const-string v2, "1Iur6KRLbI8=\n"

    invoke-static {v1, v2, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 859
    const-string p3, "BstZMwHUoGg=\n"

    const-string v1, "KusvUm2hxUg=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 861
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "pUc=\n"

    const-string v1, "n2c4MkhxNuE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
