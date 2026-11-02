.class public final Lorg/chromium/net/telemetry/ExperimentalOptions;
.super Ljava/lang/Object;
.source "ExperimentalOptions.java"


# static fields
.field private static final ASYNC_DNS:Ljava/lang/String; = "AsyncDNS"

.field private static final QUIC:Ljava/lang/String; = "QUIC"

.field private static final STALE_DNS:Ljava/lang/String; = "StaleDNS"

.field private static final TAG:Ljava/lang/String; = "ExperimentalOptions"

.field public static final UNSET_INT_VALUE:I = -0x1

.field public static final VALID_CONNECTION_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe4

    .line 270
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CHLO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHLO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SCFG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "REJ"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CETV"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PRST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SCUP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ALPN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "P256"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "C255"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AESG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CC20"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "QBIC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AFCW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IFW5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "IFW6"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "IFW7"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "IFW8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "IFW9"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "IFWA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TBBR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1RTT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "2RTT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "BBS1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "BBS2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "BBS3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BBS4"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "BBS5"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "BBRR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "BBR1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "BBR2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BBR3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "BBR4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "BBR5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "BBR9"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "BBRA"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "BBRB"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "BBRS"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "BBQ1"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "BBQ2"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "BBQ3"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "BBQ5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "BBQ6"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "BBQ7"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "BBQ8"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "BBQ9"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "BBQ0"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "RENO"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "TPCC"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "BYTE"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IW03"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IW10"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "IW20"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "IW50"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "B2ON"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "B2NA"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "B2NE"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "B2RP"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "B2LO"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "B2HR"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "B2SL"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "B2H2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "B2RC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "BSAO"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "B2DL"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "B201"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "B202"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "B203"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "B204"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "B205"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "B206"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "B207"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "NTLP"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "1TLP"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "1RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "NRTO"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "ATIM"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "MIN1"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "MIN4"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "MAD0"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "MAD2"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "MAD3"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "1ACK"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "AKD3"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "AKDU"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "AFFE"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "AFF1"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "AFF2"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "SSLR"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "NPRR"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "2RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "3RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "4RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "5RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "6RTO"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "CBHD"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "NBHD"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "CONH"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "LFAK"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "STMP"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "EACK"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "ILD0"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "ILD1"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "ILD2"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "ILD3"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "ILD4"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "RUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "NSTP"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "NRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "1PTO"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "2PTO"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "6PTO"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "7PTO"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "8PTO"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "PTOS"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "PTOA"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "PEB1"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "PEB2"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "PVS1"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "PAG1"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "PAG2"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "PSDA"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "PLE1"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "PLE2"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "APTO"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "ELDT"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "RVCM"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "TCID"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "MPTH"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "NCMR"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "DFER"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "NPCO"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "BWRE"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "BWMX"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "BWID"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "BWI1"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "BWRS"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "BWS2"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "BWS3"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "BWS4"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "BWS5"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "BWS6"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "BWP0"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "BWP1"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "BWP2"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "BWP3"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "BWP4"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "BWG4"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "BWG7"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "BWG8"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "BWS7"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "BWM3"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "BWM4"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "ICW1"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "DTOS"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "FIDT"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "3AFF"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "10AF"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "MTUH"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "MTUL"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "NSLC"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "NCHP"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "NBPE"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "X509"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "X59R"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "CHID"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "VER "

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "NONC"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "NONP"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "KEXS"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "AEAD"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "COPT"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "CLOP"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "ICSL"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "MIBS"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "MIUS"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "ADE "

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "IRTT"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "TRTT"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "SNI "

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "PUBS"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "SCID"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "ORBT"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "PDMD"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "PROF"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "CCRT"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "EXPY"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "STTL"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "SFCW"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "CFCW"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "UAID"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "XLCT"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "QLVE"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "PDP1"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "PDP2"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "PDP3"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "PDP5"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "QNZ2"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "MAD"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "IGNP"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "SRWP"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "ROWF"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "ROWR"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "GSR0"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "GSR1"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "GSR2"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "GSR3"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "NRES"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "INVC"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "GWCH"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "YTCH"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "ACH0"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "RREJ"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "CADR"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "ASAD"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "SRST"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "CIDK"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "CIDS"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "RNON"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "RSEQ"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "PAD "

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "EPID"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "SNO0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "STK0"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "CRT255"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "CSCT"

    aput-object v2, v0, v1

    .line 271
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompat$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experimentalOptions"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 36
    :goto_0
    sget-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 39
    const-string v1, "Experimental options could not be parsed, using default values. Error: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "option",
            "defaultValue",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    .line 238
    :goto_0
    sget-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Failed to get %s options: %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object p2
.end method

.method private getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "experimentalOptionFieldTrialName",
            "option",
            "defaultValue",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 196
    const-string v0, "Failed to get %s options: %s"

    iget-object v1, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    .line 203
    :try_start_0
    iget-object v2, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 205
    sget-object v3, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 220
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 222
    :goto_1
    sget-object p4, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {p4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object p3
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 255
    const-string v2, ","

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 256
    sget-object v5, Lorg/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAllowPortMigration()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 115
    const-class v1, Ljava/lang/Boolean;

    .line 116
    const-string v2, "QUIC"

    const-string v3, "allow_port_migration"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getAsyncDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 133
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "AsyncDNS"

    const-string v3, "enable"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getCloseSessionsOnIpChangeOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 75
    const-class v1, Ljava/lang/Boolean;

    .line 76
    const-string v2, "QUIC"

    const-string v3, "close_sessions_on_ip_change"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionOptionsOption()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 49
    const-class v1, Ljava/lang/String;

    .line 50
    const-string v2, "QUIC"

    const-string v3, "connection_options"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-direct {p0, v0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisableBidirectionalStreamsOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 90
    const-class v1, Ljava/lang/Boolean;

    .line 91
    const-string v2, "QUIC"

    const-string v3, "disable_bidirectional_streams"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 90
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisableIpv6OnWifiOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 3

    const/4 v0, 0x0

    .line 175
    const-class v1, Ljava/lang/Boolean;

    .line 176
    const-string v2, "disable_ipv6_on_wifi"

    invoke-direct {p0, v2, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 175
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSocketRecvOptimizationOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 110
    const-class v1, Ljava/lang/Boolean;

    .line 111
    const-string v2, "QUIC"

    const-string v3, "enable_socket_recv_optimization"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getGoawaySessionsOnIpChangeOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/lang/Boolean;

    .line 71
    const-string v2, "QUIC"

    const-string v3, "goaway_sessions_on_ip_change"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getHostWhitelist()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 125
    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "host_whitelist"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdleConnectionTimeoutSecondsOption()I
    .locals 4

    const/4 v0, -0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 65
    const-string v2, "QUIC"

    const-string v3, "idle_connection_timeout_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTimeBeforeCryptoHandshakeSecondsOption()I
    .locals 4

    const/4 v0, -0x1

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 102
    const-string v2, "QUIC"

    const-string v3, "max_idle_time_before_crypto_handshake_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxServerConfigsStoredInPropertiesOption()I
    .locals 4

    const/4 v0, -0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 59
    const-string v2, "QUIC"

    const-string v3, "max_server_configs_stored_in_properties"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxTimeBeforeCryptoHandshakeSecondsOption()I
    .locals 4

    const/4 v0, -0x1

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 96
    const-string v2, "QUIC"

    const-string v3, "max_time_before_crypto_handshake_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMigrateSessionsEarlyV2()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 85
    const-class v1, Ljava/lang/Boolean;

    .line 86
    const-string v2, "QUIC"

    const-string v3, "migrate_sessions_early_v2"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 85
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getMigrateSessionsOnNetworkChangeV2Option()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 80
    const-class v1, Ljava/lang/Boolean;

    .line 81
    const-string v2, "QUIC"

    const-string v3, "migrate_sessions_on_network_change_v2"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 80
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getRaceStaleDnsOnConnection()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 120
    const-class v1, Ljava/lang/Boolean;

    .line 121
    const-string v2, "QUIC"

    const-string v3, "race_stale_dns_on_connection"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 120
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsAllowOtherNetworkOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 155
    const-class v1, Ljava/lang/Boolean;

    .line 156
    const-string v2, "StaleDNS"

    const-string v3, "allow_other_network"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 155
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsDelayMillisOption()I
    .locals 4

    const/4 v0, -0x1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "delay_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 137
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "StaleDNS"

    const-string v3, "enable"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsMaxExpiredTimeMillisOption()I
    .locals 4

    const/4 v0, -0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_expired_time_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsMaxStaleUsesOption()I
    .locals 4

    const/4 v0, -0x1

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_stale_uses"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsPersistDelayMillisOption()I
    .locals 4

    const/4 v0, -0x1

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "persist_delay_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsPersistToDiskOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 160
    const-class v1, Ljava/lang/Boolean;

    .line 161
    const-string v2, "StaleDNS"

    const-string v3, "persist_to_disk"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 160
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsUseStaleOnNameNotResolvedOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 170
    const-class v1, Ljava/lang/Boolean;

    .line 171
    const-string v2, "StaleDNS"

    const-string v3, "use_stale_on_name_not_resolved"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 170
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStoreServerConfigsInPropertiesOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .locals 4

    const/4 v0, 0x0

    .line 54
    const-class v1, Ljava/lang/Boolean;

    .line 55
    const-string v2, "QUIC"

    const-string v3, "store_server_configs_in_properties"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 54
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 129
    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "user_agent_id"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
