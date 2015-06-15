.class public Lorg/bouncycastle/crypto/agreement/DHAgreement;
.super Ljava/lang/Object;


# instance fields
.field private dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

.field private key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private privateValue:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public calculateMessage()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    check-cast p1, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v0, p1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->key:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    return-void
.end method
