.class Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "BogusTrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BogusTrustManagerFactorySpi"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 73
    # getter for: Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;
    invoke-static {}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->access$100()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .param p1, "managerFactoryParameters"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method
