.class public abstract Lorg/bouncycastle/asn1/ASN1TaggedObject;
.super Lorg/bouncycastle/asn1/DERObject;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lorg/bouncycastle/asn1/DEREncodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iput p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, p3, Lorg/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    :goto_0
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public getObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    return v0
.end method

.method public isExplicit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method
