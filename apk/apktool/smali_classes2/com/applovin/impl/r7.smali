.class public abstract Lcom/applovin/impl/r7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "^[a-f0-9]{64}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/r7;->a:Ljava/util/regex/Pattern;

    .line 2
    const-string v0, "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/r7;->b:Ljava/util/regex/Pattern;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "7"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "20"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "27"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "30"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "31"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "32"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "33"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "34"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "36"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "39"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "40"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "41"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "43"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "44"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "45"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "46"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "47"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "48"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "49"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "51"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "52"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "53"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "54"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "55"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "56"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "57"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "58"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "60"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "61"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "62"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "63"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "64"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "65"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "66"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "77"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "81"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "82"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "84"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "86"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "90"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "91"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "92"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "93"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "94"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "95"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "98"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "211"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "212"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "213"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "216"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "218"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "220"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "221"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "222"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "223"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "224"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "225"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "226"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "227"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "228"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "229"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "230"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "231"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "232"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "233"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "234"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "235"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "236"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "237"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "238"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "239"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "240"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "241"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "242"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "243"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "244"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "245"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "246"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "248"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "249"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "250"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "251"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "252"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "253"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "254"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "255"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "256"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "257"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "258"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "260"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "261"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "262"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "263"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "264"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "265"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "266"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "267"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "268"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "269"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "290"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "291"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "297"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "298"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "299"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "345"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "350"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "351"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "352"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "353"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "354"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "355"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "356"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "357"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "358"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "359"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "370"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "371"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "372"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "373"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "374"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "375"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "376"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "377"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "378"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "379"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "380"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "381"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "382"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "385"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "386"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "387"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, "389"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "420"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "421"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string v3, "423"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "500"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, "501"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, "502"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "503"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string v3, "504"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, "505"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "506"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string v3, "507"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "508"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "509"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string v3, "590"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, "591"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string v3, "592"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string v3, "593"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string v3, "594"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string v3, "595"

    aput-object v3, v1, v2

    const/16 v2, 0x98

    const-string v3, "596"

    aput-object v3, v1, v2

    const/16 v2, 0x99

    const-string v3, "597"

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    const-string v3, "598"

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    const-string v3, "599"

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    const-string v3, "670"

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    const-string v3, "672"

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    const-string v3, "673"

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    const-string v3, "674"

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    const-string v3, "675"

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    const-string v3, "676"

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    const-string v3, "677"

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    const-string v3, "678"

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    const-string v3, "679"

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    const-string v3, "680"

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    const-string v3, "681"

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    const-string v3, "682"

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    const-string v3, "683"

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    const-string v3, "685"

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    const-string v3, "686"

    aput-object v3, v1, v2

    const/16 v2, 0xab

    const-string v3, "687"

    aput-object v3, v1, v2

    const/16 v2, 0xac

    const-string v3, "688"

    aput-object v3, v1, v2

    const/16 v2, 0xad

    const-string v3, "689"

    aput-object v3, v1, v2

    const/16 v2, 0xae

    const-string v3, "690"

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    const-string v3, "691"

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    const-string v3, "692"

    aput-object v3, v1, v2

    const/16 v2, 0xb1

    const-string v3, "850"

    aput-object v3, v1, v2

    const/16 v2, 0xb2

    const-string v3, "852"

    aput-object v3, v1, v2

    const/16 v2, 0xb3

    const-string v3, "853"

    aput-object v3, v1, v2

    const/16 v2, 0xb4

    const-string v3, "855"

    aput-object v3, v1, v2

    const/16 v2, 0xb5

    const-string v3, "856"

    aput-object v3, v1, v2

    const/16 v2, 0xb6

    const-string v3, "872"

    aput-object v3, v1, v2

    const/16 v2, 0xb7

    const-string v3, "880"

    aput-object v3, v1, v2

    const/16 v2, 0xb8

    const-string v3, "886"

    aput-object v3, v1, v2

    const/16 v2, 0xb9

    const-string v3, "960"

    aput-object v3, v1, v2

    const/16 v2, 0xba

    const-string v3, "961"

    aput-object v3, v1, v2

    const/16 v2, 0xbb

    const-string v3, "962"

    aput-object v3, v1, v2

    const/16 v2, 0xbc

    const-string v3, "963"

    aput-object v3, v1, v2

    const/16 v2, 0xbd

    const-string v3, "964"

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    const-string v3, "965"

    aput-object v3, v1, v2

    const/16 v2, 0xbf

    const-string v3, "966"

    aput-object v3, v1, v2

    const/16 v2, 0xc0

    const-string v3, "967"

    aput-object v3, v1, v2

    const/16 v2, 0xc1

    const-string v3, "968"

    aput-object v3, v1, v2

    const/16 v2, 0xc2

    const-string v3, "970"

    aput-object v3, v1, v2

    const/16 v2, 0xc3

    const-string v3, "971"

    aput-object v3, v1, v2

    const/16 v2, 0xc4

    const-string v3, "972"

    aput-object v3, v1, v2

    const/16 v2, 0xc5

    const-string v3, "973"

    aput-object v3, v1, v2

    const/16 v2, 0xc6

    const-string v3, "974"

    aput-object v3, v1, v2

    const/16 v2, 0xc7

    const-string v3, "975"

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    const-string v3, "976"

    aput-object v3, v1, v2

    const/16 v2, 0xc9

    const-string v3, "977"

    aput-object v3, v1, v2

    const/16 v2, 0xca

    const-string v3, "992"

    aput-object v3, v1, v2

    const/16 v2, 0xcb

    const-string v3, "993"

    aput-object v3, v1, v2

    const/16 v2, 0xcc

    const-string v3, "994"

    aput-object v3, v1, v2

    const/16 v2, 0xcd

    const-string v3, "995"

    aput-object v3, v1, v2

    const/16 v2, 0xce

    const-string v3, "996"

    aput-object v3, v1, v2

    const/16 v2, 0xcf

    const-string v3, "998"

    aput-object v3, v1, v2

    const/16 v2, 0xd0

    const-string v3, "800"

    aput-object v3, v1, v2

    const/16 v2, 0xd1

    const-string v3, "881"

    aput-object v3, v1, v2

    const/16 v2, 0xd2

    const-string v3, "882"

    aput-object v3, v1, v2

    const/16 v2, 0xd3

    const-string v3, "883"

    aput-object v3, v1, v2

    const/16 v2, 0xd4

    const-string v3, "979"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/r7;->c:Ljava/util/Set;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/applovin/impl/r7;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/applovin/impl/r7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 38
    :cond_2
    invoke-static {p0}, Lcom/applovin/impl/r7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/applovin/sdk/AppLovinUserData;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinUserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/r7;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinUserData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applovin/impl/r7;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinUserData;->getPhone()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/applovin/impl/r7;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    if-nez p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/applovin/impl/r7;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "is_email_pre_hashed"

    const-string v2, "email_v2"

    const-string v3, "email"

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 15
    :cond_1
    sget-object v0, Lcom/applovin/impl/r7;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/applovin/impl/r7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "email_domain"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Lcom/applovin/impl/r7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v3, p0, 0x1

    if-nez p0, :cond_5

    .line 29
    invoke-static {v1}, Lcom/applovin/impl/r7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    :goto_0
    return-void

    .line 32
    :cond_6
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "is_gmail_normalized"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/applovin/impl/r7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    invoke-static {p0}, Lcom/applovin/impl/r7;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    const-string v0, "phone_country_code"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/applovin/impl/r7;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    .line 1
    const-string v1, "@"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 4
    aget-object v2, v0, v2

    .line 5
    const-string v3, "gmail.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "googlemail.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 7
    aget-object v0, v0, p0

    const/16 v3, 0x2b

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 9
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_2
    const-string p0, "."

    const-string v3, ""

    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^0+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/applovin/impl/r7;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/applovin/impl/r7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_3

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/applovin/impl/r7;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 6
    const-string v4, "%02x"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method
