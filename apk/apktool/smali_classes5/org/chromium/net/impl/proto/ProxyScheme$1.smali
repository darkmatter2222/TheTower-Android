.class Lorg/chromium/net/impl/proto/ProxyScheme$1;
.super Ljava/lang/Object;
.source "ProxyScheme.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/proto/ProxyScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lorg/chromium/net/impl/proto/ProxyScheme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/proto/ProxyScheme$1;->findValueByNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lorg/chromium/net/impl/proto/ProxyScheme;->forNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object p1

    return-object p1
.end method
