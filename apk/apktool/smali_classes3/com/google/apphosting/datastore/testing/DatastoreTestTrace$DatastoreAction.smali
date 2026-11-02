.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatastoreAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_ID_FIELD_NUMBER:I = 0xc8

.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

.field public static final FIRESTORE_V1_ACTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATION_RULE_FIELD_NUMBER:I = 0xc9


# instance fields
.field private actionCase_:I

.field private actionId_:I

.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10149
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;-><init>()V

    .line 10152
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10153
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 9627
    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    return-void
.end method

.method static synthetic access$18600()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1

    .line 9619
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object v0
.end method

.method static synthetic access$18700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V
    .locals 0

    .line 9619
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->clearAction()V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0

    .line 9619
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->setFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0

    .line 9619
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->mergeFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V
    .locals 0

    .line 9619
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->clearFirestoreV1Action()V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;I)V
    .locals 0

    .line 9619
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->setActionId(I)V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V
    .locals 0

    .line 9619
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->clearActionId()V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 0

    .line 9619
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->setValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 0

    .line 9619
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->mergeValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V
    .locals 0

    .line 9619
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->clearValidationRule()V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 9664
    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v0, 0x0

    .line 9665
    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    return-void
.end method

.method private clearActionId()V
    .locals 1

    const/4 v0, 0x0

    .line 9741
    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionId_:I

    return-void
.end method

.method private clearFirestoreV1Action()V
    .locals 2

    .line 9712
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9713
    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v0, 0x0

    .line 9714
    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValidationRule()V
    .locals 1

    const/4 v0, 0x0

    .line 9816
    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9817
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1

    .line 10158
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object v0
.end method

.method private mergeFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 3

    .line 9698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9699
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    .line 9700
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9701
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    move-result-object v0

    .line 9702
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 9704
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    .line 9706
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    return-void
.end method

.method private mergeValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 2

    .line 9797
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9798
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    if-eqz v0, :cond_0

    .line 9799
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9800
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9801
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    goto :goto_0

    .line 9803
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9805
    :goto_0
    iget p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9897
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9900
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9873
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9880
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9836
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9843
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9885
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9892
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9860
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9867
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9823
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9830
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9848
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9855
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
            ">;"
        }
    .end annotation

    .line 10164
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setActionId(I)V
    .locals 0

    .line 9734
    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionId_:I

    return-void
.end method

.method private setFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0

    .line 9690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9691
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 9692
    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    return-void
.end method

.method private setValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 0

    .line 9782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9783
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9784
    iget p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 10095
    sget-object p2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 10136
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10121
    :pswitch_2
    sget-object p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10123
    const-class p2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    monitor-enter p2

    .line 10124
    :try_start_0
    sget-object p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10126
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10129
    sput-object p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 10131
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 10118
    :pswitch_3
    sget-object p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    return-object p1

    .line 10103
    :pswitch_4
    const-string v0, "action_"

    const-string v1, "actionCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    const-string v4, "actionId_"

    const-string v5, "validationRule_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 10111
    const-string p2, "\u0000\u0003\u0001\u0001\u0003\u00c9\u0003\u0000\u0000\u0000\u0003<\u0000\u00c8\u0004\u00c9\u1009\u0000"

    .line 10114
    sget-object p3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {p3, p2, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10100
    :pswitch_5
    new-instance p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    invoke-direct {p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object p1

    .line 10097
    :pswitch_6
    new-instance p1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-direct {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActionCase()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1

    .line 9659
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->forNumber(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getActionId()I
    .locals 1

    .line 9726
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionId_:I

    return v0
.end method

.method public getFirestoreV1Action()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 2

    .line 9681
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9682
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0

    .line 9684
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    move-result-object v0

    return-object v0
.end method

.method public getValidationRule()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1

    .line 9770
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->validationRule_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFirestoreV1Action()Z
    .locals 2

    .line 9674
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidationRule()Z
    .locals 2

    .line 9757
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
