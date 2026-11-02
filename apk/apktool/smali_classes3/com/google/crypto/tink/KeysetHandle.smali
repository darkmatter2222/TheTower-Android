.class public final Lcom/google/crypto/tink/KeysetHandle;
.super Ljava/lang/Object;
.source "KeysetHandle.java"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeysetHandleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Entry;,
        Lcom/google/crypto/tink/KeysetHandle$Builder;
    }
.end annotation


# instance fields
.field private final annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final unmonitoredHandle:Lcom/google/crypto/tink/KeysetHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    .line 687
    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    .line 688
    sget-object p2, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    invoke-interface {p2}, Lcom/google/crypto/tink/config/TinkFlag;->getValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 689
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle;->validateNoDuplicateIds(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    .line 691
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->unmonitoredHandle:Lcom/google/crypto/tink/KeysetHandle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "annotations",
            "unmonitoredHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            "Lcom/google/crypto/tink/KeysetHandle;",
            ")V"
        }
    .end annotation

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    .line 697
    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    .line 698
    iput-object p3, p0, Lcom/google/crypto/tink/KeysetHandle;->unmonitoredHandle:Lcom/google/crypto/tink/KeysetHandle;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/google/crypto/tink/KeysetHandle;->validateKeyId(Lcom/google/crypto/tink/Key;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->serializeStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->addMonitoringIfNeeded(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->parseStatusWithDisabledFallback(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object p0

    return-object p0
.end method

.method private static addMonitoringIfNeeded(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unmonitoredHandle"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    .line 703
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 707
    :cond_0
    new-instance v8, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v0}, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;-><init>(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-object v3, v2

    .line 718
    new-instance v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-object v4, v3

    .line 720
    invoke-static {v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$2200(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v3

    move-object v5, v4

    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v4

    move-object v6, v5

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$2300(Lcom/google/crypto/tink/KeysetHandle$Entry;)I

    move-result v5

    move-object v7, v6

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$2400(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v6

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 718
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 722
    :cond_1
    new-instance v2, Lcom/google/crypto/tink/KeysetHandle;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle;)V

    return-object v2
.end method

.method private static assertEnoughEncryptedKeyMaterial(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->getEncryptedKeyset()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1235
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyCount()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 1223
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 1205
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->UNKNOWN_KEYMATERIAL:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_0

    .line 1207
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 1211
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1209
    const-string v1, "keyset contains key material of type %s for type url %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static final createFromKey(Lcom/google/crypto/tink/tinkkey/KeyHandle;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyHandle",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 940
    invoke-static {}, Lcom/google/crypto/tink/KeysetManager;->withEmptyKeyset()Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/KeysetManager;->add(Lcom/google/crypto/tink/tinkkey/KeyHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p0

    .line 941
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/KeysetHandle;->getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getKeyId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/KeysetManager;->setPrimary(I)Lcom/google/crypto/tink/KeysetManager;

    .line 942
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static createKeysetKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;I)Lcom/google/crypto/tink/proto/Keyset$Key;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "keyStatus",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1393
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 1394
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 1395
    invoke-static {p0, p2}, Lcom/google/crypto/tink/KeysetHandle;->validateKeyId(Lcom/google/crypto/tink/Key;I)V

    .line 1396
    invoke-static {p2, p1, v0}, Lcom/google/crypto/tink/KeysetHandle;->toKeysetKey(ILcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p0

    return-object p0
.end method

.method private static decrypt(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/Keyset;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encryptedKeyset",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1105
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->getEncryptedKeyset()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p0

    .line 1106
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object p1

    .line 1104
    invoke-static {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    .line 1108
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1112
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encrypt(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/EncryptedKeyset;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyset",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    .line 1091
    invoke-static {}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->newBuilder()Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p2

    .line 1092
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->setEncryptedKeyset(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p1

    .line 1093
    invoke-static {p0}, Lcom/google/crypto/tink/Util;->getKeysetInfo(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->setKeysetInfo(Lcom/google/crypto/tink/proto/KeysetInfo;)Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p0

    .line 1094
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EncryptedKeyset;

    return-object p0
.end method

.method private entryByIndex(I)Lcom/google/crypto/tink/KeysetHandle$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 601
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z

    move-result v1

    const-string v2, "Keyset-Entry at position "

    if-eqz v1, :cond_1

    .line 604
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Entry;

    return-object p1

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " didn\'t parse correctly"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has wrong status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 730
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 731
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;

    move-result-object p0

    .line 733
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle;

    sget-object v1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    return-object v0
.end method

.method static final fromKeysetAndAnnotations(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyset",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 742
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 743
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;

    move-result-object p0

    .line 744
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->addMonitoringIfNeeded(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static generateEntryFromParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 644
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/KeysetHandle$1;)V

    return-object v0
.end method

.method public static generateEntryFromParametersName(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parametersName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 635
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->get(Ljava/lang/String;)Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    .line 636
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/KeysetHandle$1;)V

    return-object v0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->toParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 891
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    .line 892
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateEntryFromParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object p0

    .line 893
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/Keyset;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 564
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 568
    :try_start_0
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v5

    goto :goto_1

    :catch_0
    move-exception v0

    .line 571
    sget-object v6, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    invoke-interface {v6}, Lcom/google/crypto/tink/config/TinkFlag;->getValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 576
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    .line 577
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v6

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    move v9, v4

    .line 581
    :goto_1
    sget-object v6, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    invoke-interface {v6}, Lcom/google/crypto/tink/config/TinkFlag;->getValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 582
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle;->isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 583
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_2
    move v6, v4

    .line 587
    new-instance v4, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 590
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    .line 592
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v8

    if-ne v7, v8, :cond_2

    move v8, v6

    goto :goto_3

    :cond_2
    move v8, v5

    .line 594
    :goto_3
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1200()Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v0

    move-object v6, v3

    invoke-direct/range {v4 .. v11}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 587
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_3
    throw v0

    .line 596
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPrimitiveInternal(Lcom/google/crypto/tink/internal/InternalConfiguration;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "classObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/InternalConfiguration;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1241
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle;->getUnmonitoredHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 1242
    invoke-static {v0}, Lcom/google/crypto/tink/Util;->validateKeyset(Lcom/google/crypto/tink/proto/Keyset;)V

    const/4 v1, 0x0

    .line 1243
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1244
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle;->isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/Keyset;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p1

    .line 1246
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key parsing of key with index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type_url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1250
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed, unable to get primitive"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1254
    :cond_1
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle;->getUnmonitoredHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/internal/InternalConfiguration;->wrap(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static getPublicKeyDataFromRegistry(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKeyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne v0, v1, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/Registry;->getPublicKeyData(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "The keyset contains a non-private key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getUnmonitoredHandle()Lcom/google/crypto/tink/KeysetHandle;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->unmonitoredHandle:Lcom/google/crypto/tink/KeysetHandle;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 618
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 619
    invoke-virtual {p0}, Lcom/google/crypto/tink/Key;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withFixedId(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    :cond_0
    return-object v0
.end method

.method private static isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/google/crypto/tink/KeysetHandle$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static synthetic lambda$addMonitoringIfNeeded$0(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$Entry;)V
    .locals 3

    .line 710
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 711
    const-string v1, "keyset_handle"

    const-string v2, "get_key"

    .line 712
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object p0

    .line 713
    invoke-virtual {p2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logKeyExport(I)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1

    .line 766
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 771
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;-><init>()V

    const/4 v1, 0x0

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 775
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withFixedId(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v3

    .line 788
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->setStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 789
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 792
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 777
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Keyset-Entry in original keyset at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has wrong status or key parsing failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder;->access$2500(Lcom/google/crypto/tink/KeysetHandle$Builder;Ljava/security/GeneralSecurityException;)V

    :cond_1
    return-object v0
.end method

.method private static parseStatusWithDisabledFallback(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/google/crypto/tink/KeysetHandle$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 527
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->DISABLED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0

    .line 524
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->DESTROYED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0

    .line 522
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0
.end method

.method public static final read(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "masterKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 961
    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/KeysetHandle;->readWithAssociatedData(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final readNoSecret(Lcom/google/crypto/tink/KeysetReader;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    :try_start_0
    invoke-interface {p0}, Lcom/google/crypto/tink/KeysetReader;->read()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->readNoSecret([B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0

    .line 1008
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readNoSecret([B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serialized"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    .line 1032
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 1033
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1036
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readWithAssociatedData(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    invoke-interface {p0}, Lcom/google/crypto/tink/KeysetReader;->readEncrypted()Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object p0

    .line 983
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughEncryptedKeyMaterial(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V

    .line 984
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/KeysetHandle;->decrypt(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static serializeStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 546
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->DISABLED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 549
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->DESTROYED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 550
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 552
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown key status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1364
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 1365
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 1366
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKeyWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p0

    return-object p0
.end method

.method private static toKeysetKey(ILcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/proto/Keyset$Key;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "status",
            "protoKeySerialization"
        }
    .end annotation

    .line 1371
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    .line 1373
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1374
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1375
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1376
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1372
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData$Builder;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    .line 1377
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 1378
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p0

    .line 1379
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p0

    .line 1380
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/Keyset$Key;

    return-object p0
.end method

.method private static toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v0

    .line 1354
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1356
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    .line 1358
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v3

    .line 1359
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    .line 1355
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static validateKeyId(Lcom/google/crypto/tink/Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lcom/google/crypto/tink/Key;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1385
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Wrong ID set for key with ID requirement"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateNoDuplicateIds(Ljava/util/List;)V
    .locals 4
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
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 664
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 665
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 672
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 666
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 678
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equalsKeyset(Lcom/google/crypto/tink/KeysetHandle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1320
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v1, v0

    .line 1324
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1325
    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1326
    iget-object v4, p1, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1327
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 1330
    :cond_1
    invoke-static {v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    .line 1333
    :cond_2
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v5

    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle;->isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z

    move-result v5

    if-nez v5, :cond_3

    return v2

    .line 1336
    :cond_3
    invoke-static {v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v5

    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle;->isValidKeyStatusType(Lcom/google/crypto/tink/proto/KeyStatusType;)Z

    move-result v5

    if-nez v5, :cond_4

    return v2

    .line 1339
    :cond_4
    invoke-static {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$2600(Lcom/google/crypto/tink/KeysetHandle$Entry;Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    .line 1342
    :cond_5
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$2400(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    return v2

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 843
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetHandle;->entryByIndex(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object p1

    return-object p1

    .line 841
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for keyset of size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getAt(I)Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/KeysetHandle;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/tinkkey/KeyHandle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 858
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    .line 859
    new-instance v4, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;

    new-instance v5, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    .line 861
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeyTemplate;->fromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 862
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    .line 863
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    invoke-direct {v4, v5, v3, v2}, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/proto/KeyStatusType;I)V

    .line 859
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getKeyset()Lcom/google/crypto/tink/proto/Keyset;
    .locals 6

    .line 750
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 752
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v3

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/crypto/tink/KeysetHandle;->createKeysetKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v3

    .line 753
    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 754
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 760
    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/internal/TinkBugException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 879
    invoke-static {v0}, Lcom/google/crypto/tink/Util;->getKeysetInfo(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Lcom/google/crypto/tink/KeysetHandle$Entry;
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v0

    sget-object v2, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 809
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has primary which isn\'t enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has no valid primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getPrimary()Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getPrimary()Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configuration",
            "targetClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/Configuration;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1263
    instance-of v0, p1, Lcom/google/crypto/tink/internal/InternalConfiguration;

    if-eqz v0, :cond_0

    .line 1267
    check-cast p1, Lcom/google/crypto/tink/internal/InternalConfiguration;

    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitiveInternal(Lcom/google/crypto/tink/internal/InternalConfiguration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1264
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1285
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1123
    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v2

    .line 1124
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1127
    iget-object v0, v1, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1130
    invoke-virtual {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v0

    instance-of v0, v0, Lcom/google/crypto/tink/PrivateKey;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/PrivateKey;

    invoke-interface {v0}, Lcom/google/crypto/tink/PrivateKey;->getPublicKey()Lcom/google/crypto/tink/Key;

    move-result-object v9

    .line 1132
    new-instance v8, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1135
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v10

    .line 1136
    invoke-virtual {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v11

    .line 1137
    invoke-virtual {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v12

    .line 1139
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1200()Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 1140
    invoke-virtual {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/crypto/tink/KeysetHandle;->validateKeyId(Lcom/google/crypto/tink/Key;I)V

    goto :goto_4

    .line 1143
    :cond_0
    invoke-virtual {v2, v6}, Lcom/google/crypto/tink/proto/Keyset;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v0

    .line 1144
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/KeysetHandle;->getPublicKeyDataFromRegistry(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v8

    .line 1145
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/crypto/tink/proto/Keyset$Key;

    const/4 v9, 0x1

    .line 1149
    :try_start_0
    invoke-static {v8}, Lcom/google/crypto/tink/KeysetHandle;->toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v5

    :goto_1
    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1152
    sget-object v10, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    invoke-interface {v10}, Lcom/google/crypto/tink/config/TinkFlag;->getValue()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1155
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    .line 1157
    invoke-static {v8}, Lcom/google/crypto/tink/KeysetHandle;->toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v10

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    move/from16 v17, v9

    goto :goto_1

    .line 1161
    :goto_2
    invoke-virtual {v8}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v15

    .line 1162
    new-instance v12, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1165
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v14

    .line 1167
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v0

    if-ne v15, v0, :cond_1

    move/from16 v16, v9

    goto :goto_3

    :cond_1
    move/from16 v16, v5

    .line 1169
    :goto_3
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1200()Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/KeyStatusType;IZZLcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;Lcom/google/crypto/tink/KeysetHandle$1;)V

    move-object v8, v12

    .line 1172
    :goto_4
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1153
    :cond_2
    throw v0

    .line 1175
    :cond_3
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle;

    iget-object v2, v1, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-direct {v0, v3, v2}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->addMonitoringIfNeeded(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    return-object v0
.end method

.method public primaryKey()Lcom/google/crypto/tink/tinkkey/KeyHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1298
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v1

    .line 1300
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 1301
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1302
    new-instance v0, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;

    new-instance v1, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    .line 1303
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/KeyTemplate;->fromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 1304
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    .line 1305
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/proto/KeyStatusType;I)V

    return-object v0

    .line 1308
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No primary key found in keyset."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1195
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keysetWriter",
            "masterKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1050
    new-array v0, v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/KeysetHandle;->writeWithAssociatedData(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;[B)V

    return-void
.end method

.method public writeNoSecret(Lcom/google/crypto/tink/KeysetWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 1084
    invoke-interface {p1, v0}, Lcom/google/crypto/tink/KeysetWriter;->write(Lcom/google/crypto/tink/proto/Keyset;)V

    return-void
.end method

.method public writeWithAssociatedData(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetWriter",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 1066
    invoke-static {v0, p2, p3}, Lcom/google/crypto/tink/KeysetHandle;->encrypt(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object p2

    .line 1067
    invoke-interface {p1, p2}, Lcom/google/crypto/tink/KeysetWriter;->write(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V

    return-void
.end method
