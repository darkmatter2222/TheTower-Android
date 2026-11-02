.class public final Lcom/google/crypto/tink/KeysetHandle$Builder;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeysetHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;,
        Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;
    }
.end annotation


# instance fields
.field private annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private buildCalled:Z

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private errorToThrow:Ljava/security/GeneralSecurityException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    .line 217
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/KeysetHandle$Builder;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/crypto/tink/KeysetHandle$Builder;Ljava/security/GeneralSecurityException;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->setErrorToThrow(Ljava/security/GeneralSecurityException;)V

    return-void
.end method

.method private static checkIdAssignments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 298
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 299
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearPrimary()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v2, 0x0

    .line 222
    invoke-static {v1, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$302(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builderEntry",
            "idsSoFar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 327
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->randomIdNotInSet(Ljava/util/Set;)I

    move-result p0

    return p0

    .line 329
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$700(Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;)I

    move-result p0

    return p0

    .line 324
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static randomIdNotInSet(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    .line 314
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0

    goto :goto_0
.end method

.method private setErrorToThrow(Ljava/security/GeneralSecurityException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorToThrow"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$400(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    .line 235
    :cond_0
    invoke-static {p1, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$402(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Lcom/google/crypto/tink/KeysetHandle$Builder;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    .line 236
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/crypto/tink/KeysetHandle;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    if-nez v0, :cond_a

    .line 357
    iget-boolean v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->checkIdAssignments(Ljava/util/List;)V

    .line 365
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 366
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 367
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 370
    invoke-static {v5, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I

    move-result v10

    .line 371
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 374
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 379
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/google/crypto/tink/KeysetHandle;->access$1000(Lcom/google/crypto/tink/Key;I)V

    .line 380
    new-instance v7, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 382
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v8

    .line 383
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle;->access$1100(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v9

    .line 385
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v11

    .line 387
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1200()Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    goto :goto_2

    .line 389
    :cond_0
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$1400(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v3

    .line 391
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v7

    .line 392
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$1400(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Parameters;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object v8

    .line 393
    new-instance v7, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 396
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle;->access$1100(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v9

    .line 398
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v11

    .line 400
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1200()Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 402
    :goto_2
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    .line 406
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 407
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v5

    sget-object v6, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-ne v5, v6, :cond_2

    goto :goto_3

    .line 408
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primary key is not enabled"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Two primaries were set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_4
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 372
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is used twice in the keyset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key Status not set."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v4, :cond_8

    .line 416
    new-instance v1, Lcom/google/crypto/tink/KeysetHandle;

    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 417
    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->access$1600(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    return-object v0

    .line 414
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No primary was set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build keyset due to error in original"

    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public getAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object p1
.end method

.method public removeAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object p1
.end method

.method public setMonitoringAnnotations(Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
