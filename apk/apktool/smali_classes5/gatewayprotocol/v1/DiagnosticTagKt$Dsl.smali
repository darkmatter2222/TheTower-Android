.class public final Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;
.super Ljava/lang/Object;
.source "DiagnosticTagKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DiagnosticTagKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$Companion;,
        Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$TagTypeProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 D2\u00020\u0001:\u0002DEB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J%\u0010\u0010\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u0012\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0008\u0013J&\u0010\u0014\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u0012\u001a\u00020\nH\u0087\n\u00a2\u0006\u0002\u0008\u0015J+\u0010\u0016\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018H\u0007\u00a2\u0006\u0002\u0008\u0019J,\u0010\u0014\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018H\u0087\n\u00a2\u0006\u0002\u0008\u001aJ.\u0010\u001b\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\nH\u0087\u0002\u00a2\u0006\u0002\u0008\u001eJ\u001d\u0010\u001f\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0007\u00a2\u0006\u0002\u0008 J\u0006\u0010\'\u001a\u00020\u0011J\u0006\u0010(\u001a\u00020)J\u0006\u0010-\u001a\u00020\u0011J\u0006\u0010.\u001a\u00020)J\u0006\u00104\u001a\u00020\u0011J\u0006\u00105\u001a\u00020)J\u0006\u0010>\u001a\u00020\u0011J\u0006\u0010C\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\"\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020!8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010*\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020!8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010$\"\u0004\u0008,\u0010&R$\u0010/\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u001d8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R$\u00106\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R$\u0010;\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u001d8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008<\u00101\"\u0004\u0008=\u00103R\u0011\u0010?\u001a\u00020@8G\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010B\u00a8\u0006F"
    }
    d2 = {
        "Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
        "tagType",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
        "Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$TagTypeProxy;",
        "getTagType$annotations",
        "()V",
        "getTagType",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "add",
        "",
        "value",
        "addTagType",
        "plusAssign",
        "plusAssignTagType",
        "addAll",
        "values",
        "",
        "addAllTagType",
        "plusAssignAllTagType",
        "set",
        "index",
        "",
        "setTagType",
        "clear",
        "clearTagType",
        "",
        "customTagType",
        "getCustomTagType",
        "()Ljava/lang/String;",
        "setCustomTagType",
        "(Ljava/lang/String;)V",
        "clearCustomTagType",
        "hasCustomTagType",
        "",
        "stringValue",
        "getStringValue",
        "setStringValue",
        "clearStringValue",
        "hasStringValue",
        "intValue",
        "getIntValue",
        "()I",
        "setIntValue",
        "(I)V",
        "clearIntValue",
        "hasIntValue",
        "type",
        "getType",
        "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
        "setType",
        "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V",
        "typeValue",
        "getTypeValue",
        "setTypeValue",
        "clearType",
        "valueCase",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;",
        "getValueCase",
        "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;",
        "clearValue",
        "Companion",
        "TagTypeProxy",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->Companion:Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;-><init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;)V

    return-void
.end method

.method public static synthetic getTagType$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Field tagType is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;

    return-object v0
.end method

.method public final synthetic addAllTagType(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->addAllTagType(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final synthetic addTagType(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->addTagType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final clearCustomTagType()V
    .locals 1

    .line 151
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearCustomTagType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final clearIntValue()V
    .locals 1

    .line 204
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearIntValue()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final clearStringValue()V
    .locals 1

    .line 180
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearStringValue()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final synthetic clearTagType(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearTagType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final clearType()V
    .locals 1

    .line 243
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final clearValue()V
    .locals 1

    .line 250
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->clearValue()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final getCustomTagType()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getCustomTagType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCustomTagType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIntValue()I
    .locals 1

    .line 195
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getIntValue()I

    move-result v0

    return v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getTagType()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 49
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 50
    iget-object v1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getTagTypeList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getTagTypeList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
    .locals 2

    .line 223
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 230
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public final getValueCase()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
    .locals 2

    .line 247
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->getValueCase()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    move-result-object v0

    const-string v1, "getValueCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasCustomTagType()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->hasCustomTagType()Z

    move-result v0

    return v0
.end method

.method public final hasIntValue()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->hasIntValue()Z

    move-result v0

    return v0
.end method

.method public final hasStringValue()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllTagType(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            "Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$TagTypeProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->addAllTagType(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignTagType(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            "Lgatewayprotocol/v1/DiagnosticTagKt$Dsl$TagTypeProxy;",
            ">;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->addTagType(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V

    return-void
.end method

.method public final setCustomTagType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setCustomTagType(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final setIntValue(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setIntValue(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final setStringValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setStringValue(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final synthetic setTagType(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setTagType(ILgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final setType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method

.method public final setTypeValue(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticTagKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;->setTypeValue(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;

    return-void
.end method
