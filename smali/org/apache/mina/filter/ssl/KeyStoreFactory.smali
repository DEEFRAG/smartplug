.class public Lorg/apache/mina/filter/ssl/KeyStoreFactory;
.super Ljava/lang/Object;
.source "KeyStoreFactory.java"


# instance fields
.field private data:[B

.field private password:[C

.field private provider:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    .line 46
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    return-void
.end method

.method private setData(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "dataStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 141
    .local v0, "data":I
    if-gez v0, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_1
    return-void

    .line 144
    :cond_0
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    .end local v0    # "data":I
    :catchall_0
    move-exception v2

    .line 149
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    :goto_2
    throw v2

    .line 150
    .restart local v0    # "data":I
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v0    # "data":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public newInstance()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "data property is not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 66
    .local v1, "ks":Ljava/security/KeyStore;
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_1
    return-object v1

    .line 63
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .restart local v1    # "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 70
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 71
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :goto_2
    throw v2

    .line 72
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 126
    array-length v1, p1

    new-array v0, v1, [B

    .line 127
    .local v0, "copy":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    .line 129
    return-void
.end method

.method public setDataFile(Ljava/io/File;)V
    .locals 2
    .param p1, "dataFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData(Ljava/io/InputStream;)V

    .line 163
    return-void
.end method

.method public setDataUrl(Ljava/net/URL;)V
    .locals 1
    .param p1, "dataUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData(Ljava/io/InputStream;)V

    .line 172
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    goto :goto_0
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    .line 93
    return-void
.end method
