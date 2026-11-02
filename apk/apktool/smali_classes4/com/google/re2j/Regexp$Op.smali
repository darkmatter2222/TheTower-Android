.class final enum Lcom/google/re2j/Regexp$Op;
.super Ljava/lang/Enum;
.source "Regexp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Regexp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/re2j/Regexp$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/re2j/Regexp$Op;

.field public static final enum ALTERNATE:Lcom/google/re2j/Regexp$Op;

.field public static final enum ANY_CHAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

.field public static final enum BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

.field public static final enum BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

.field public static final enum CAPTURE:Lcom/google/re2j/Regexp$Op;

.field public static final enum CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

.field public static final enum CONCAT:Lcom/google/re2j/Regexp$Op;

.field public static final enum EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

.field public static final enum END_LINE:Lcom/google/re2j/Regexp$Op;

.field public static final enum END_TEXT:Lcom/google/re2j/Regexp$Op;

.field public static final enum LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

.field public static final enum LITERAL:Lcom/google/re2j/Regexp$Op;

.field public static final enum NO_MATCH:Lcom/google/re2j/Regexp$Op;

.field public static final enum NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

.field public static final enum PLUS:Lcom/google/re2j/Regexp$Op;

.field public static final enum QUEST:Lcom/google/re2j/Regexp$Op;

.field public static final enum REPEAT:Lcom/google/re2j/Regexp$Op;

.field public static final enum STAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 23
    new-instance v1, Lcom/google/re2j/Regexp$Op;

    const-string v0, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    .line 24
    new-instance v2, Lcom/google/re2j/Regexp$Op;

    const-string v0, "EMPTY_MATCH"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    .line 25
    new-instance v3, Lcom/google/re2j/Regexp$Op;

    const-string v0, "LITERAL"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    .line 26
    new-instance v4, Lcom/google/re2j/Regexp$Op;

    const-string v0, "CHAR_CLASS"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    .line 27
    new-instance v5, Lcom/google/re2j/Regexp$Op;

    const-string v0, "ANY_CHAR_NOT_NL"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    .line 28
    new-instance v6, Lcom/google/re2j/Regexp$Op;

    const-string v0, "ANY_CHAR"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    .line 29
    new-instance v7, Lcom/google/re2j/Regexp$Op;

    const-string v0, "BEGIN_LINE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/re2j/Regexp$Op;->BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

    .line 30
    new-instance v8, Lcom/google/re2j/Regexp$Op;

    const-string v0, "END_LINE"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/re2j/Regexp$Op;->END_LINE:Lcom/google/re2j/Regexp$Op;

    .line 31
    new-instance v9, Lcom/google/re2j/Regexp$Op;

    const-string v0, "BEGIN_TEXT"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    .line 32
    new-instance v10, Lcom/google/re2j/Regexp$Op;

    const-string v0, "END_TEXT"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    .line 33
    new-instance v11, Lcom/google/re2j/Regexp$Op;

    const-string v0, "WORD_BOUNDARY"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/re2j/Regexp$Op;->WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    .line 34
    new-instance v12, Lcom/google/re2j/Regexp$Op;

    const-string v0, "NO_WORD_BOUNDARY"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/re2j/Regexp$Op;->NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    .line 35
    new-instance v13, Lcom/google/re2j/Regexp$Op;

    const-string v0, "CAPTURE"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    .line 36
    new-instance v14, Lcom/google/re2j/Regexp$Op;

    const-string v0, "STAR"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    .line 37
    new-instance v15, Lcom/google/re2j/Regexp$Op;

    const-string v0, "PLUS"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    .line 38
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "QUEST"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    .line 39
    new-instance v1, Lcom/google/re2j/Regexp$Op;

    const-string v2, "REPEAT"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    .line 40
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v2, "CONCAT"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    .line 41
    new-instance v1, Lcom/google/re2j/Regexp$Op;

    const-string v2, "ALTERNATE"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    .line 44
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v2, "LEFT_PAREN"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    .line 45
    new-instance v1, Lcom/google/re2j/Regexp$Op;

    const-string v2, "VERTICAL_BAR"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    .line 22
    filled-new-array/range {v1 .. v21}, [Lcom/google/re2j/Regexp$Op;

    move-result-object v0

    sput-object v0, Lcom/google/re2j/Regexp$Op;->$VALUES:[Lcom/google/re2j/Regexp$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/re2j/Regexp$Op;
    .locals 1

    .line 22
    const-class v0, Lcom/google/re2j/Regexp$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/re2j/Regexp$Op;

    return-object p0
.end method

.method public static values()[Lcom/google/re2j/Regexp$Op;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/re2j/Regexp$Op;->$VALUES:[Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v0}, [Lcom/google/re2j/Regexp$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Regexp$Op;

    return-object v0
.end method


# virtual methods
.method isPseudo()Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
