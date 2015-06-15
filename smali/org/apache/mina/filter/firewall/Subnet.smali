.class public Lorg/apache/mina/filter/firewall/Subnet;
.super Ljava/lang/Object;
.source "Subnet.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final IP_MASK:I = -0x80000000


# instance fields
.field private subnet:Ljava/net/InetAddress;

.field private subnetInt:I

.field private subnetMask:I

.field private suffix:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "subnet"    # Ljava/net/InetAddress;
    .param p2, "mask"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet address can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IPv4 supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-le p2, v0, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mask has to be an integer between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    .line 63
    iput p2, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    .line 66
    const/high16 v0, -0x80000000

    add-int/lit8 v1, p2, -0x1

    shr-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:I

    .line 67
    return-void
.end method

.method private toInt(Ljava/net/InetAddress;)I
    .locals 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 74
    .local v0, "address":[B
    const/4 v2, 0x0

    .line 75
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 76
    shl-int/lit8 v2, v2, 0x8

    .line 77
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return v2
.end method

.method private toSubnet(Ljava/net/InetAddress;)I
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iget v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:I

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 111
    instance-of v2, p1, Lorg/apache/mina/filter/firewall/Subnet;

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 115
    check-cast v0, Lorg/apache/mina/filter/firewall/Subnet;

    .line 117
    .local v0, "other":Lorg/apache/mina/filter/firewall/Subnet;
    iget v2, v0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    iget v3, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    iget v3, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public inSubnet(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toSubnet(Ljava/net/InetAddress;)I

    move-result v0

    iget v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
