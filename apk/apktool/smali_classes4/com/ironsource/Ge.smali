.class public final Lcom/ironsource/Ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Kc;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkInitServiceWithLegacy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkInitServiceWithLegacy.kt\ncom/unity3d/sdk/internal/init/SdkInitServiceWithLegacy\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,114:1\n37#2:115\n36#2,3:116\n37#2:119\n36#2,3:120\n*S KotlinDebug\n*F\n+ 1 SdkInitServiceWithLegacy.kt\ncom/unity3d/sdk/internal/init/SdkInitServiceWithLegacy\n*L\n55#1:115\n55#1:116,3\n28#1:119\n28#1:120,3\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Ge;

.field private static final b:Lcom/ironsource/Ke;


# direct methods
.method public static synthetic $r8$lambda$17kzF8Hef5nzWDzDWoSlZIH9u5A(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/Ge;->d(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J6WatKftPBSA3q90TDc9ZqsfAnk(Lcom/ironsource/xe;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ge;->a(Lcom/ironsource/xe;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VM6mlGFVYU605zzYV_gqY9WZdXU(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/Ge;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfwJUPPMYi4sqJWuMbovxlZmsZY(Lcom/ironsource/xe;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/Ge;->a(Lcom/ironsource/xe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbWbR_6RRn0H20GdzNQ6A_y4UDg(Lcom/ironsource/Ue;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/Ge;->b(Lcom/ironsource/Ue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZ-b5erxjZskbQlVE52d-v8-h2A(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/Ge;->b(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sDxQqV2DZXXXGYgpcLWgpoZzt6g(Lcom/ironsource/xe;Lcom/ironsource/qe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ge;->a(Lcom/ironsource/xe;Lcom/ironsource/qe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhn3mOzg7zcMXsaMOlytRbJR6wU(Lcom/ironsource/Ue;Lcom/ironsource/xe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ge;->a(Lcom/ironsource/Ue;Lcom/ironsource/xe;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ironsource/Ge;

    invoke-direct {v0}, Lcom/ironsource/Ge;-><init>()V

    sput-object v0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    .line 1
    new-instance v0, Lcom/ironsource/Je;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/ironsource/Je;-><init>(Lcom/ironsource/Ic;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/ironsource/Ke;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    return-object v0
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;Z)V
    .locals 6

    .line 4
    invoke-virtual {p2}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/p;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/ironsource/ze;

    .line 9
    invoke-virtual {p2}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/ironsource/ze;->e()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-direct {v0, v1, v2, p2}, Lcom/ironsource/ze;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object p2, v0

    .line 18
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ironsource/ze;->e()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    .line 83
    new-array v3, v3, [Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 84
    check-cast v1, [Lcom/ironsource/mediationsdk/IronSource$a;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/ironsource/mediationsdk/IronSource$a;

    move-object v4, p0

    move-object v1, p1

    move v3, p4

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/Kc;[Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p4

    const/16 v0, 0x7e4

    if-ne p4, v0, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    const/16 p4, 0x7f8

    if-ne p2, p4, :cond_2

    .line 104
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/p;->d()Lcom/ironsource/Ue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 106
    sget-object p1, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance p4, Lcom/ironsource/Ge$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p3}, Lcom/ironsource/Ge$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Ue;Lcom/ironsource/xe;)V

    invoke-interface {p1, p4}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    const/16 p4, 0x7ee

    if-ne p2, p4, :cond_3

    .line 110
    sget-object p1, Lcom/ironsource/Fe;->m:Lcom/ironsource/Fe$a;

    invoke-virtual {p1}, Lcom/ironsource/Fe$a;->a()Lcom/ironsource/Fe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/Fe;->g()V

    return-void

    .line 113
    :cond_3
    sget-object p2, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance p4, Lcom/ironsource/Ge$$ExternalSyntheticLambda1;

    invoke-direct {p4, p3, p1}, Lcom/ironsource/Ge$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/xe;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {p2, p4}, Lcom/ironsource/Ke;->b(Ljava/lang/Runnable;)V

    return-void

    .line 114
    :cond_4
    :goto_1
    sget-object p1, Lcom/ironsource/Fe;->m:Lcom/ironsource/Fe$a;

    invoke-virtual {p1}, Lcom/ironsource/Fe$a;->a()Lcom/ironsource/Fe;

    move-result-object p1

    xor-int/lit8 p4, v3, 0x1

    .line 119
    new-instance v0, Lcom/ironsource/Ge$a;

    invoke-direct {v0, p3}, Lcom/ironsource/Ge$a;-><init>(Lcom/ironsource/xe;)V

    .line 120
    invoke-virtual {p1, v1, p2, v0, p4}, Lcom/ironsource/Fe;->a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/Ge;Lcom/ironsource/qe;Lcom/ironsource/xe;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Ge;->a(Lcom/ironsource/qe;Lcom/ironsource/xe;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Ue;Lcom/ironsource/xe;)V
    .locals 3

    .line 121
    sget-object v0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    new-instance v1, Lcom/ironsource/qe;

    new-instance v2, Lcom/ironsource/Ae;

    invoke-direct {v2, p0}, Lcom/ironsource/Ae;-><init>(Lcom/ironsource/Ue;)V

    invoke-direct {v1, v2}, Lcom/ironsource/qe;-><init>(Lcom/ironsource/Ae;)V

    invoke-direct {v0, v1, p1}, Lcom/ironsource/Ge;->a(Lcom/ironsource/qe;Lcom/ironsource/xe;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 142
    sget-object v0, Lcom/ironsource/Fe;->m:Lcom/ironsource/Fe$a;

    invoke-virtual {v0}, Lcom/ironsource/Fe$a;->a()Lcom/ironsource/Fe;

    move-result-object v0

    new-instance v1, Lcom/ironsource/se;

    invoke-direct {v1, p0}, Lcom/ironsource/se;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Fe;->b(Lcom/ironsource/se;)V

    return-void
.end method

.method private final a(Lcom/ironsource/qe;Lcom/ironsource/xe;)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/ironsource/Fe;->m:Lcom/ironsource/Fe$a;

    invoke-virtual {v1}, Lcom/ironsource/Fe$a;->a()Lcom/ironsource/Fe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Fe;->e()Lcom/ironsource/Td;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Td;Lcom/ironsource/Ue;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object p1, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v0, Lcom/ironsource/Ge$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/ironsource/Ge$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/xe;)V

    invoke-interface {p1, v0}, Lcom/ironsource/Ke;->b(Ljava/lang/Runnable;)V

    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/Ge$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/ironsource/Ge$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/xe;Lcom/ironsource/qe;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/xe;)V
    .locals 3

    .line 138
    new-instance v0, Lcom/ironsource/se;

    const/16 v1, 0x802

    const-string v2, "An unknown error has occurred"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-interface {p0, v0}, Lcom/ironsource/xe;->a(Lcom/ironsource/se;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/xe;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/ironsource/se;

    invoke-direct {v0, p1}, Lcom/ironsource/se;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {p0, v0}, Lcom/ironsource/xe;->a(Lcom/ironsource/se;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/xe;Lcom/ironsource/qe;)V
    .locals 0

    .line 140
    invoke-interface {p0, p1}, Lcom/ironsource/xe;->a(Lcom/ironsource/qe;)V

    return-void
.end method

.method private static final b(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/ba;

    invoke-direct {v0}, Lcom/ironsource/ba;-><init>()V

    .line 2
    sget-object v1, Lcom/ironsource/ye;->b:Lcom/ironsource/ye;

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->a(Lcom/ironsource/ye;)V

    .line 3
    sget-object v0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ironsource/Ge;->a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;Z)V

    return-void
.end method

.method private static final b(Lcom/ironsource/Ue;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/ironsource/Ae;

    invoke-direct {v0, p0}, Lcom/ironsource/Ae;-><init>(Lcom/ironsource/Ue;)V

    .line 5
    sget-object p0, Lcom/ironsource/Fe;->m:Lcom/ironsource/Fe$a;

    invoke-virtual {p0}, Lcom/ironsource/Fe$a;->a()Lcom/ironsource/Fe;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ironsource/Fe;->a(Lcom/ironsource/Ae;)V

    return-void
.end method

.method private static final d(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/ze;->e()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 97
    new-array v4, v3, [Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 98
    check-cast v2, [Lcom/ironsource/mediationsdk/IronSource$a;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/ironsource/mediationsdk/IronSource$a;

    .line 99
    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/ze;->a(Ljava/util/List;)V

    .line 102
    new-instance v0, Lcom/ironsource/ba;

    invoke-direct {v0}, Lcom/ironsource/ba;-><init>()V

    .line 103
    sget-object v1, Lcom/ironsource/ye;->c:Lcom/ironsource/ye;

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->a(Lcom/ironsource/ye;)V

    .line 104
    sget-object v0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ironsource/Ge;->a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/Ge$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Lcom/ironsource/Ge$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/Ue;)V
    .locals 2

    const-string v0, "serverResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/Ge$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/ironsource/Ge$$ExternalSyntheticLambda7;-><init>(Lcom/ironsource/Ue;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/Ge$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p3}, Lcom/ironsource/Ge$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/Ge;->b:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/Ge$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/ironsource/Ge$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method
