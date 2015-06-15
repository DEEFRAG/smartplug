.class public Lorg/apache/mina/proxy/utils/MD4Provider;
.super Ljava/security/Provider;
.source "MD4Provider.java"


# static fields
.field public static final INFO:Ljava/lang/String; = "MINA MD4 Provider v1.0"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "MINA"

.field public static final VERSION:D = 1.0

.field private static final serialVersionUID:J = -0x1670165fcc8dec90L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "MINA"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "MINA MD4 Provider v1.0"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 58
    const-string v0, "MessageDigest.MD4"

    const-class v1, Lorg/apache/mina/proxy/utils/MD4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/proxy/utils/MD4Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
