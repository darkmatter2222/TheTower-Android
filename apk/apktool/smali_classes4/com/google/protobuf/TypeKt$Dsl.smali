.class public final Lcom/google/protobuf/TypeKt$Dsl;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TypeKt$Dsl$Companion;,
        Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0018\u0008\u0007\u0018\u0000 Q2\u00020\u0001:\u0004QRSTB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010.\u001a\u00020/H\u0001J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201J\u0006\u00103\u001a\u000201J\u0006\u00104\u001a\u000201J\u0006\u00105\u001a\u000206J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0007\u00a2\u0006\u0002\u00088J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u00089J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008:J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=H\u0007\u00a2\u0006\u0002\u0008>J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00190=H\u0007\u00a2\u0006\u0002\u0008?J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060=H\u0007\u00a2\u0006\u0002\u0008@J\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007\u00a2\u0006\u0002\u0008BJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\rH\u0007\u00a2\u0006\u0002\u0008CJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\rH\u0007\u00a2\u0006\u0002\u0008DJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\n\u00a2\u0006\u0002\u0008FJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=H\u0087\n\u00a2\u0006\u0002\u0008GJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\n\u00a2\u0006\u0002\u0008HJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00190=H\u0087\n\u00a2\u0006\u0002\u0008IJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u0008JJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060=H\u0087\n\u00a2\u0006\u0002\u0008KJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\u0002\u00a2\u0006\u0002\u0008NJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\u0002\u00a2\u0006\u0002\u0008OJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008PR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0011R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0011R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u001c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\"8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020(8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006U"
    }
    d2 = {
        "Lcom/google/protobuf/TypeKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Type$Builder;",
        "(Lcom/google/protobuf/Type$Builder;)V",
        "value",
        "",
        "edition",
        "getEdition",
        "()Ljava/lang/String;",
        "setEdition",
        "(Ljava/lang/String;)V",
        "fields",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Field;",
        "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
        "getFields",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "name",
        "getName",
        "setName",
        "oneofs",
        "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
        "getOneofs",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
        "getOptions",
        "Lcom/google/protobuf/SourceContext;",
        "sourceContext",
        "getSourceContext",
        "()Lcom/google/protobuf/SourceContext;",
        "setSourceContext",
        "(Lcom/google/protobuf/SourceContext;)V",
        "Lcom/google/protobuf/Syntax;",
        "syntax",
        "getSyntax",
        "()Lcom/google/protobuf/Syntax;",
        "setSyntax",
        "(Lcom/google/protobuf/Syntax;)V",
        "",
        "syntaxValue",
        "getSyntaxValue",
        "()I",
        "setSyntaxValue",
        "(I)V",
        "_build",
        "Lcom/google/protobuf/Type;",
        "clearEdition",
        "",
        "clearName",
        "clearSourceContext",
        "clearSyntax",
        "hasSourceContext",
        "",
        "add",
        "addFields",
        "addOptions",
        "addOneofs",
        "addAll",
        "values",
        "",
        "addAllFields",
        "addAllOptions",
        "addAllOneofs",
        "clear",
        "clearFields",
        "clearOptions",
        "clearOneofs",
        "plusAssign",
        "plusAssignFields",
        "plusAssignAllFields",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "plusAssignOneofs",
        "plusAssignAllOneofs",
        "set",
        "index",
        "setFields",
        "setOptions",
        "setOneofs",
        "Companion",
        "FieldsProxy",
        "OneofsProxy",
        "OptionsProxy",
        "java_kotlin-lite-well_known_protos_kotlin_lite"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Type$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/TypeKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TypeKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/TypeKt$Dsl;->Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Type$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Type$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/TypeKt$Dsl;-><init>(Lcom/google/protobuf/Type$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Type;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public final synthetic addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllFields(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOneofs(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addFields(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOneofs(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearEdition()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearEdition()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearFields()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearName()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearOneofs(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOneofs()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOptions()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearSourceContext()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSourceContext()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearSyntax()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSyntax()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final getEdition()Ljava/lang/String;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getEdition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getEdition()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getFields()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 58
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getFieldsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getFieldsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOneofs()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 131
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOneofsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOneofsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 199
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 200
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Field;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Lcom/google/protobuf/Field;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V

    return-void
.end method

.method public final synthetic plusAssignOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final setEdition(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setEdition(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Field;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setOneofs(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOneofs(ILjava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSyntaxValue(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Type$Builder;

    return-void
.end method
