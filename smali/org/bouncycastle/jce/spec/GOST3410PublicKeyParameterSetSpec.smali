.class public Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method
