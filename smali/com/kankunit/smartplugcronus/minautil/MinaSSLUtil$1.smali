.class Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;
.super Ljava/lang/Thread;
.source "MinaSSLUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private final synthetic val$mrl:Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->val$mrl:Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 36
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    :try_start_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 39
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    const-string v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 40
    .local v1, "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    const-string v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 41
    .local v5, "trustManager":Ljavax/net/ssl/TrustManagerFactory;
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 42
    .local v2, "kks":Ljava/security/KeyStore;
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 43
    .local v4, "tks":Ljava/security/KeyStore;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$0(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Landroid/content/Context;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 45
    const/high16 v7, 0x7f060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "kkit2014"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 43
    invoke-virtual {v2, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 46
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$0(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Landroid/content/Context;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 48
    const v7, 0x7f060001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "kkit2014"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 46
    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 49
    const-string v6, "kkit2014"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 50
    invoke-virtual {v5, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 51
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 52
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    const-string v8, "konkek2.com"

    const v9, 0xc353

    invoke-virtual {v6, v8, v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    invoke-static {v7, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$1(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .end local v2    # "kks":Ljava/security/KeyStore;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "tks":Ljava/security/KeyStore;
    .end local v5    # "trustManager":Ljavax/net/ssl/TrustManagerFactory;
    :goto_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$2(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Ljavax/net/ssl/SSLSocket;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 58
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$2(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Ljavax/net/ssl/SSLSocket;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->getOut(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->access$2(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Ljavax/net/ssl/SSLSocket;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->val$mrl:Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->getIn(Ljavax/net/ssl/SSLSocket;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 61
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
