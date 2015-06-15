.class public Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
.super Lorg/bouncycastle/asn1/DERBitString;


# static fields
.field public static final ADD_INFO_NOT_AVAILABLE:I = 0x10000

.field public static final BAD_ALG:I = 0x80

.field public static final BAD_DATA_FORMAT:I = 0x8

.field public static final BAD_REQUEST:I = 0x40

.field public static final SYSTEM_FAILURE:I = 0x40000000

.field public static final TIME_NOT_AVAILABLE:I = 0x200

.field public static final UNACCEPTED_EXTENSION:I = 0x800000

.field public static final UNACCEPTED_POLICY:I = 0x100


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKIFailureInfo: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
