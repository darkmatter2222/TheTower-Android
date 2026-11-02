.class public Lcom/google/crypto/tink/internal/PrimitiveRegistry;
.super Ljava/lang/Object;
.source "PrimitiveRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;,
        Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;
    }
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

.field private final reparseLegacyKeys:Z


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->access$600(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveConstructorMap:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->access$700(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveWrapperMap:Ljava/util/Map;

    .line 133
    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->access$800(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->reparseLegacyKeys:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveConstructorMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveWrapperMap:Ljava/util/Map;

    return-object p0
.end method

.method public static builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 2

    .line 123
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    return-object v0
.end method

.method public static builder(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    return-object v0
.end method

.method private getPrimitiveWithoutReparsing(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "PrimitiveT:",
            "Ljava/lang/Object;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    .line 159
    iget-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveConstructorMap:Ljava/util/Map;

    .line 167
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 168
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No PrimitiveConstructor for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " available, see https://developers.google.com/tink/faq/registration_errors"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private wrapWithPrimitiveWrapper(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/internal/PrimitiveWrapper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetHandle",
            "annotations",
            "wrapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InnerPrimitiveT:",
            "Ljava/lang/Object;",
            "WrappedPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeysetHandleInterface;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            "Lcom/google/crypto/tink/internal/PrimitiveWrapper<",
            "TInnerPrimitiveT;TWrappedPrimitiveT;>;)TWrappedPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;Lcom/google/crypto/tink/internal/PrimitiveWrapper;)V

    invoke-interface {p3, p1, p2, v0}, Lcom/google/crypto/tink/internal/PrimitiveWrapper;->wrap(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/internal/PrimitiveWrapper$PrimitiveFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "PrimitiveT:",
            "Ljava/lang/Object;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->reparseLegacyKeys:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    check-cast p1, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    .line 149
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p1

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 148
    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getPrimitiveWithoutReparsing(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getPrimitiveWithoutReparsing(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$wrapWithPrimitiveWrapper$0$com-google-crypto-tink-internal-PrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveWrapper;Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 179
    invoke-interface {p2}, Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/PrimitiveWrapper;->getInputPrimitiveClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetHandle",
            "annotations",
            "wrapperClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<WrappedPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeysetHandleInterface;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            "Ljava/lang/Class<",
            "TWrappedPrimitiveT;>;)TWrappedPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->primitiveWrapperMap:Ljava/util/Map;

    .line 193
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/crypto/tink/internal/PrimitiveWrapper;

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->wrapWithPrimitiveWrapper(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/internal/PrimitiveWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 188
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No wrapper found for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
