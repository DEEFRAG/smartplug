.class public Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;
.super Ljavax/net/ssl/TrustManagerFactory;
.source "BogusTrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;
    }
.end annotation


# static fields
.field private static final X509:Ljavax/net/ssl/X509TrustManager;

.field private static final X509_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$2;

    invoke-direct {v0}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$2;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509:Ljavax/net/ssl/X509TrustManager;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509:Ljavax/net/ssl/X509TrustManager;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 44
    new-instance v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;-><init>(Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;)V

    new-instance v1, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;

    const-string v2, "MinaBogus"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v2, "MinaBogus"

    invoke-direct {p0, v0, v1, v2}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static synthetic access$100()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method
