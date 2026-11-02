.class Lcom/google/re2j/CharGroup;
.super Ljava/lang/Object;
.source "CharGroup.java"


# static fields
.field static final PERL_GROUPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/CharGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final POSIX_GROUPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/CharGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final code1:[I

.field private static final code10:[I

.field private static final code11:[I

.field private static final code12:[I

.field private static final code13:[I

.field private static final code14:[I

.field private static final code15:[I

.field private static final code16:[I

.field private static final code17:[I

.field private static final code2:[I

.field private static final code3:[I

.field private static final code4:[I

.field private static final code5:[I

.field private static final code6:[I

.field private static final code7:[I

.field private static final code8:[I

.field private static final code9:[I


# instance fields
.field final cls:[I

.field final sign:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x30

    const/16 v1, 0x39

    .line 24
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/google/re2j/CharGroup;->code1:[I

    const/4 v3, 0x6

    .line 29
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/re2j/CharGroup;->code2:[I

    const/16 v5, 0x8

    .line 34
    new-array v6, v5, [I

    fill-array-data v6, :array_1

    sput-object v6, Lcom/google/re2j/CharGroup;->code3:[I

    .line 39
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    .line 42
    new-instance v8, Lcom/google/re2j/CharGroup;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v10, "\\d"

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v8, Lcom/google/re2j/CharGroup;

    const/4 v10, -0x1

    invoke-direct {v8, v10, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "\\D"

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v9, v4}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v8, "\\s"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v10, v4}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v4, "\\S"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v9, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v4, "\\w"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v10, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v4, "\\W"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/re2j/CharGroup;->code4:[I

    const/16 v4, 0x41

    const/16 v6, 0x5a

    const/16 v7, 0x61

    const/16 v8, 0x7a

    .line 55
    filled-new-array {v4, v6, v7, v8}, [I

    move-result-object v11

    sput-object v11, Lcom/google/re2j/CharGroup;->code5:[I

    const/4 v12, 0x0

    const/16 v13, 0x7f

    .line 60
    filled-new-array {v12, v13}, [I

    move-result-object v14

    sput-object v14, Lcom/google/re2j/CharGroup;->code6:[I

    const/16 v15, 0x9

    const/16 v10, 0x20

    .line 65
    filled-new-array {v15, v15, v10, v10}, [I

    move-result-object v9

    sput-object v9, Lcom/google/re2j/CharGroup;->code7:[I

    const/16 v3, 0x1f

    .line 70
    filled-new-array {v12, v3, v13, v13}, [I

    move-result-object v3

    sput-object v3, Lcom/google/re2j/CharGroup;->code8:[I

    .line 75
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code9:[I

    const/16 v1, 0x21

    const/16 v12, 0x7e

    .line 80
    filled-new-array {v1, v12}, [I

    move-result-object v1

    sput-object v1, Lcom/google/re2j/CharGroup;->code10:[I

    .line 85
    filled-new-array {v7, v8}, [I

    move-result-object v7

    sput-object v7, Lcom/google/re2j/CharGroup;->code11:[I

    .line 90
    filled-new-array {v10, v12}, [I

    move-result-object v8

    sput-object v8, Lcom/google/re2j/CharGroup;->code12:[I

    .line 95
    new-array v12, v5, [I

    fill-array-data v12, :array_3

    sput-object v12, Lcom/google/re2j/CharGroup;->code13:[I

    const/16 v13, 0xd

    .line 100
    filled-new-array {v15, v13, v10, v10}, [I

    move-result-object v10

    sput-object v10, Lcom/google/re2j/CharGroup;->code14:[I

    .line 105
    filled-new-array {v4, v6}, [I

    move-result-object v4

    sput-object v4, Lcom/google/re2j/CharGroup;->code15:[I

    .line 110
    new-array v5, v5, [I

    fill-array-data v5, :array_4

    sput-object v5, Lcom/google/re2j/CharGroup;->code16:[I

    const/4 v6, 0x6

    .line 115
    new-array v6, v6, [I

    fill-array-data v6, :array_5

    sput-object v6, Lcom/google/re2j/CharGroup;->code17:[I

    .line 120
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    .line 123
    new-instance v15, Lcom/google/re2j/CharGroup;

    move-object/from16 v16, v6

    const/4 v6, 0x1

    invoke-direct {v15, v6, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "[:alnum:]"

    invoke-virtual {v13, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v6, Lcom/google/re2j/CharGroup;

    const/4 v15, -0x1

    invoke-direct {v6, v15, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^alnum:]"

    invoke-virtual {v13, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v2, Lcom/google/re2j/CharGroup;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v11}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "[:alpha:]"

    invoke-virtual {v13, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v15, v11}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "[:^alpha:]"

    invoke-virtual {v13, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/google/re2j/CharGroup;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v14}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v11, "[:ascii:]"

    invoke-virtual {v13, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v15, v14}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v11, "[:^ascii:]"

    invoke-virtual {v13, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v6, v9}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v11, "[:blank:]"

    invoke-virtual {v13, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v15, v9}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v9, "[:^blank:]"

    invoke-virtual {v13, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v6, v3}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v9, "[:cntrl:]"

    invoke-virtual {v13, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v15, v3}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v3, "[:^cntrl:]"

    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v6, v0}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v3, "[:digit:]"

    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Lcom/google/re2j/CharGroup;

    invoke-direct {v2, v15, v0}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v0, "[:^digit:]"

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v1}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:graph:]"

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v1}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^graph:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v7}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:lower:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v7}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^lower:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v8}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:print:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v8}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^print:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v12}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:punct:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v12}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^punct:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v10}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:space:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v10}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^space:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v4}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:upper:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v4}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^upper:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v6, v5}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:word:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v5}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^word:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/google/re2j/CharGroup;

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:xdigit:]"

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/google/re2j/CharGroup;

    invoke-direct {v0, v15, v1}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v1, "[:^xdigit:]"

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x61
        0x7a
    .end array-data

    :array_3
    .array-data 4
        0x21
        0x2f
        0x3a
        0x40
        0x5b
        0x60
        0x7b
        0x7e
    .end array-data

    :array_4
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_5
    .array-data 4
        0x30
        0x39
        0x41
        0x46
        0x61
        0x66
    .end array-data
.end method

.method private constructor <init>(I[I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/re2j/CharGroup;->sign:I

    .line 21
    iput-object p2, p0, Lcom/google/re2j/CharGroup;->cls:[I

    return-void
.end method
