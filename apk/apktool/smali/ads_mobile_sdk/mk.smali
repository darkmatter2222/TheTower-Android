.class public final Lads_mobile_sdk/mk;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/mk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/mk;

    invoke-direct {v0}, Lads_mobile_sdk/mk;-><init>()V

    sput-object v0, Lads_mobile_sdk/mk;->a:Lads_mobile_sdk/mk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 66
    check-cast p1, Lads_mobile_sdk/sj1;

    .line 67
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lads_mobile_sdk/sk;

    invoke-direct {v0, p1}, Lads_mobile_sdk/sk;-><init>(Lads_mobile_sdk/sj1;)V

    return-object v0
.end method
