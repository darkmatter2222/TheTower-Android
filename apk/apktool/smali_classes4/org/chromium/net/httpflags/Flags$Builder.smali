.class public final Lorg/chromium/net/httpflags/Flags$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Flags.java"

# interfaces
.implements Lorg/chromium/net/httpflags/FlagsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/httpflags/Flags;",
        "Lorg/chromium/net/httpflags/Flags$Builder;",
        ">;",
        "Lorg/chromium/net/httpflags/FlagsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 236
    invoke-static {}, Lorg/chromium/net/httpflags/Flags;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/Flags;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/httpflags/Flags-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFlags()Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0}, Lorg/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Lorg/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsFlags(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFlags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags$Builder;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsCount()I
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFlagsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    .line 298
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    .line 297
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsOrDefault(Ljava/lang/String;Lorg/chromium/net/httpflags/FlagValue;)Lorg/chromium/net/httpflags/FlagValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    .line 316
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    .line 317
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/httpflags/FlagValue;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getFlagsOrThrow(Ljava/lang/String;)Lorg/chromium/net/httpflags/FlagValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    .line 332
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    .line 333
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/httpflags/FlagValue;

    return-object p1

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAllFlags(Ljava/util/Map;)Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;)",
            "Lorg/chromium/net/httpflags/Flags$Builder;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 364
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0}, Lorg/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Lorg/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putFlags(Ljava/lang/String;Lorg/chromium/net/httpflags/FlagValue;)Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 351
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0}, Lorg/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Lorg/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeFlags(Ljava/lang/String;)Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 277
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0}, Lorg/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Lorg/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
