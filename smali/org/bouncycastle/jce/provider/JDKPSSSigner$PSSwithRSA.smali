.class public Lorg/bouncycastle/jce/provider/JDKPSSSigner$PSSwithRSA;
.super Lorg/bouncycastle/jce/provider/JDKPSSSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPSSSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSSwithRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "SHA1withRSAandMGF1"

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKPSSSigner;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V

    return-void
.end method
