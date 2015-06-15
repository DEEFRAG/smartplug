.class public Lorg/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "B-571"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "B-409"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "B-283"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "B-233"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "B-163"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "P-521"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "P-256"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v1, "P-224"

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "B-571"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "B-409"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "B-283"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "B-233"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "B-163"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "P-521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "P-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "P-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "sect571r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "sect409r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "sect283r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "sect233r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "sect163r2"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "secp521r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "secp256r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "secp224r1"

    invoke-static {v2}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    return-object v0
.end method

.method public static getName(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
