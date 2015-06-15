.class public Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;
.super Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static ecParameters:Ljava/util/Hashtable;


# instance fields
.field algorithm:Ljava/lang/String;

.field certainty:I

.field ecParams:Ljava/lang/Object;

.field engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xef

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->strength:I

    const/16 v0, 0x32

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->strength:I

    const/16 v0, 0x32

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EC Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    instance-of v2, v2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    new-instance v0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v5, v1, v2}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v3, v4, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    new-instance v0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v5, v1, v2}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v3, v4, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    sget-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size not configurable."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown key size."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_2

    move-object v9, p1

    check-cast v9, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    move-object v0, v2

    :goto_1
    new-instance v2, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    :cond_1
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ECUtil;->convertMidTerms([I)[I

    move-result-object v8

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x2

    aget v4, v8, v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v3, 0x0

    aget v4, v8, v3

    const/4 v3, 0x1

    aget v5, v8, v3

    const/4 v3, 0x2

    aget v6, v8, v3

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v4, 0x0

    aget v5, v8, v4

    const/4 v4, 0x1

    aget v6, v8, v4

    const/4 v4, 0x2

    aget v7, v8, v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v8

    move v4, v1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    const/4 v1, 0x0

    invoke-direct {v10, v0, v2, v3, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    move-object v0, v2

    :goto_3
    new-instance v2, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v6, v0

    new-instance v0, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ECUtil;->convertMidTerms([I)[I

    move-result-object v8

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x2

    aget v4, v8, v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v3, 0x0

    aget v4, v8, v3

    const/4 v3, 0x1

    aget v5, v8, v3

    const/4 v3, 0x2

    aget v6, v8, v3

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v4, 0x0

    aget v5, v8, v4

    const/4 v4, 0x1

    aget v6, v8, v4

    const/4 v4, 0x2

    aget v7, v8, v4

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v8

    move v4, v1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    const/4 v1, 0x0

    invoke-direct {v10, v0, v2, v3, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_3

    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a ECParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
