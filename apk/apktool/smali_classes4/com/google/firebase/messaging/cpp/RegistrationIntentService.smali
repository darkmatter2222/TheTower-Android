.class public Lcom/google/firebase/messaging/cpp/RegistrationIntentService;
.super Landroidx/core/app/JobIntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseRegService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method private static generateRegistrationByteBuffer(Ljava/lang/String;)[B
    .locals 2

    .line 121
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 125
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedRegistrationReceived;->startSerializedRegistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 126
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedRegistrationReceived;->addInstallationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 128
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedRegistrationReceived;->endSerializedRegistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 130
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->startSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x3

    .line 131
    invoke-static {v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 132
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 133
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 135
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static generateTokenByteBuffer(Ljava/lang/String;)[B
    .locals 2

    .line 104
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 108
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->startSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 109
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 110
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 112
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->startSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x2

    .line 113
    invoke-static {v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 114
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 115
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 117
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static generateUnregistrationByteBuffer(Ljava/lang/String;)[B
    .locals 2

    .line 139
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 143
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->startSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 144
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->addInstallationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 146
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->endSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 148
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->startSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x4

    .line 149
    invoke-static {v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 150
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 151
    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 153
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static writeBufferToInternalStorage(Landroid/content/Context;[B)V
    .locals 5

    const/4 v0, 0x4

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    :try_start_0
    const-string v1, "FIREBASE_CLOUD_MESSAGING_LOCKFILE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 92
    :try_start_2
    const-string v3, "FIREBASE_CLOUD_MESSAGING_LOCAL_STORAGE"

    const v4, 0x8000

    .line 93
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 97
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_0

    .line 98
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_1
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 88
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static writeRegistrationToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->generateRegistrationByteBuffer(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->writeBufferToInternalStorage(Landroid/content/Context;[B)V

    return-void
.end method

.method public static writeTokenToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->generateTokenByteBuffer(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->writeBufferToInternalStorage(Landroid/content/Context;[B)V

    return-void
.end method

.method public static writeUnregistrationToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->generateUnregistrationByteBuffer(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->writeBufferToInternalStorage(Landroid/content/Context;[B)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;

    invoke-direct {v0, p0, p0}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;-><init>(Lcom/google/firebase/messaging/cpp/RegistrationIntentService;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
