.class public final enum Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
.super Ljava/lang/Enum;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeveloperConsentType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType$DeveloperConsentTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum DEVELOPER_CONSENT_TYPE_CUSTOM:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_CUSTOM_VALUE:I = 0x1

.field public static final enum DEVELOPER_CONSENT_TYPE_GDPR_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_GDPR_CONSENT_VALUE:I = 0x5

.field public static final enum DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL_VALUE:I = 0x2

.field public static final enum DEVELOPER_CONSENT_TYPE_PIPL_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_PIPL_CONSENT_VALUE:I = 0x3

.field public static final enum DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT_VALUE:I = 0x4

.field public static final enum DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL_VALUE:I = 0x9

.field public static final enum DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT_VALUE:I = 0x7

.field public static final enum DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT_VALUE:I = 0x8

.field public static final enum DEVELOPER_CONSENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 11

    .line 15
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_CUSTOM:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v2, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v3, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PIPL_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v4, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v5, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_GDPR_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v6, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v7, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v8, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v9, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    sget-object v10, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    filled-new-array/range {v0 .. v10}, [Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 24
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_CUSTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_CUSTOM:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 32
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 40
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_PIPL_CONSENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PIPL_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 48
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 56
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_GDPR_CONSENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_GDPR_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 64
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 72
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 80
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 88
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 89
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 15
    invoke-static {}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->$values()[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->$VALUES:[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 206
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput p3, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 196
    :pswitch_0
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 195
    :pswitch_1
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 194
    :pswitch_2
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 193
    :pswitch_3
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 192
    :pswitch_4
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_GDPR_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 191
    :pswitch_5
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 190
    :pswitch_6
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_PIPL_CONSENT:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 189
    :pswitch_7
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 188
    :pswitch_8
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_CUSTOM:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    .line 187
    :pswitch_9
    sget-object p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->DEVELOPER_CONSENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation

    .line 203
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 216
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType$DeveloperConsentTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 1

    .line 15
    const-class v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 1

    .line 15
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->$VALUES:[Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 168
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    if-eq p0, v0, :cond_0

    .line 172
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->value:I

    return v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
