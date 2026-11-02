.class public final Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
.super Ljava/lang/Object;
.source "PrimitiveRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrimitiveRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final primitiveConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;",
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final primitiveWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/crypto/tink/internal/PrimitiveWrapper<",
            "**>;>;"
        }
    .end annotation
.end field

.field private reparseLegacyKeys:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->reparseLegacyKeys:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->reparseLegacyKeys:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->access$000(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->access$100(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->reparseLegacyKeys:Z

    return p0
.end method


# virtual methods
.method public allowReparsingLegacyKeys()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->reparseLegacyKeys:Z

    return-object p0
.end method

.method public build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    .locals 2

    .line 118
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    return-object v0
.end method

.method public registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveConstructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "PrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "TKeyT;TPrimitiveT;>;)",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 69
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;

    .line 71
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    .line 72
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 76
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to register non-equal PrimitiveConstructor object for already existing object of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "primitive constructor must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerPrimitiveWrapper(Lcom/google/crypto/tink/internal/PrimitiveWrapper;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputPrimitiveT:",
            "Ljava/lang/Object;",
            "WrapperPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/PrimitiveWrapper<",
            "TInputPrimitiveT;TWrapperPrimitiveT;>;)",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1}, Lcom/google/crypto/tink/internal/PrimitiveWrapper;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    .line 97
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveWrapper;

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 100
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "wrapper must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
