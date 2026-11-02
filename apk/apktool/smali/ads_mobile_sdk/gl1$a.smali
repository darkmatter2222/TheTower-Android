.class Lads_mobile_sdk/gl1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/gl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lads_mobile_sdk/gl1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lads_mobile_sdk/gl1;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lads_mobile_sdk/gl1-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lads_mobile_sdk/gl1$a;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 350
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gl1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 363
    instance-of v0, p1, Lads_mobile_sdk/tw1;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gl1;

    iget-object v0, v0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    .line 370
    iget-object v1, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    new-instance v2, Lads_mobile_sdk/gl1;

    check-cast p1, Lads_mobile_sdk/tw1;

    invoke-direct {v2, p1}, Lads_mobile_sdk/gl1;-><init>(Lads_mobile_sdk/tw1;)V

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Lazy field only supports MessageLite values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
