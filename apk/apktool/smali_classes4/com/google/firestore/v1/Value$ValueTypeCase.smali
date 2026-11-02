.class public final enum Lcom/google/firestore/v1/Value$ValueTypeCase;
.super Ljava/lang/Enum;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Value$ValueTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum FIELD_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum FUNCTION_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum PIPELINE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum VARIABLE_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 17

    .line 23
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v4, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v5, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v6, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v7, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v8, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v9, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v10, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v11, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v12, Lcom/google/firestore/v1/Value$ValueTypeCase;->FIELD_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v13, Lcom/google/firestore/v1/Value$ValueTypeCase;->VARIABLE_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v14, Lcom/google/firestore/v1/Value$ValueTypeCase;->FUNCTION_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v15, Lcom/google/firestore/v1/Value$ValueTypeCase;->PIPELINE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    sget-object v16, Lcom/google/firestore/v1/Value$ValueTypeCase;->VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

    filled-new-array/range {v1 .. v16}, [Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 24
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 25
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "BOOLEAN_VALUE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 26
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "INTEGER_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 27
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "DOUBLE_VALUE"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 28
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "TIMESTAMP_VALUE"

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 29
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v1, 0x11

    const-string v4, "STRING_VALUE"

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6, v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 30
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v1, 0x12

    const-string v4, "BYTES_VALUE"

    const/4 v7, 0x6

    invoke-direct {v0, v4, v7, v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 31
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "REFERENCE_VALUE"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v6}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 32
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "GEO_POINT_VALUE"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 33
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "ARRAY_VALUE"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 34
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "MAP_VALUE"

    invoke-direct {v0, v1, v5, v7}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 35
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "FIELD_REFERENCE_VALUE"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v3, v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->FIELD_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 36
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v1, 0xc

    const/16 v3, 0x16

    const-string v4, "VARIABLE_REFERENCE_VALUE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->VARIABLE_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 37
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v1, 0xd

    const/16 v3, 0x14

    const-string v4, "FUNCTION_VALUE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->FUNCTION_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 38
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v1, 0xe

    const/16 v3, 0x15

    const-string v4, "PIPELINE_VALUE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->PIPELINE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 39
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "VALUETYPE_NOT_SET"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 23
    invoke-static {}, Lcom/google/firestore/v1/Value$ValueTypeCase;->$values()[Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->$VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 66
    :pswitch_0
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->VARIABLE_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 68
    :pswitch_1
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->PIPELINE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 67
    :pswitch_2
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->FUNCTION_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 65
    :pswitch_3
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->FIELD_REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 60
    :pswitch_4
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 59
    :pswitch_5
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 54
    :pswitch_6
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 58
    :pswitch_7
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 63
    :pswitch_8
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 62
    :pswitch_9
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 64
    :cond_0
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 61
    :cond_1
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 57
    :cond_2
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 55
    :cond_4
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    .line 69
    :cond_5
    sget-object p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 23
    const-class v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->$VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Value$ValueTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->value:I

    return v0
.end method
