.class public Lcom/avos/avoscloud/S3Uploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "S3Uploader.java"


# instance fields
.field private final S3BasePath:Ljava/lang/String;

.field private access:Ljava/lang/String;

.field private final bucket:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 44
    const-string v0, "avos-cloud"

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->bucket:Ljava/lang/String;

    .line 45
    const-string v0, "https://s3.amazonaws.com/avos-cloud"

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->S3BasePath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private RFC822FormatStringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 253
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 256
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/S3Uploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/S3Uploader;->handleGetKeyResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/S3Uploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/S3Uploader;->handlePostResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method private authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->access:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/S3Uploader;->signature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getParametersForUrulu()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "url"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getS3Link(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filePathOrName"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://s3.amazonaws.com/avos-cloud/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleGetKeyResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 4
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/avos/avoscloud/signature/AES;

    invoke-direct {v0}, Lcom/avos/avoscloud/signature/AES;-><init>()V

    .line 181
    .local v0, "aes":Lcom/avos/avoscloud/signature/AES;
    const-string v3, "access_key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->access:Ljava/lang/String;

    .line 182
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->secret:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v3, 0x0

    .end local v0    # "aes":Lcom/avos/avoscloud/signature/AES;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handlePostResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v2, 0x0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private md5WithHmac(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 227
    .local v1, "mac":Ljavax/crypto/Mac;
    iget-object v5, p0, Lcom/avos/avoscloud/S3Uploader;->secret:Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 228
    .local v0, "keyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA1"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 229
    .local v4, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 232
    const-string v5, "UTF8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 233
    .local v2, "signBytes":[B
    invoke-static {v2}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "signature":Ljava/lang/String;
    return-object v3
.end method

.method private signature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "/avos-cloud/"

    .line 244
    .local v0, "canonicalizedResource":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "stringToSign":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/S3Uploader;->md5WithHmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 22

    .prologue
    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 56
    .local v16, "idx":I
    if-lez v16, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 58
    .local v19, "postFix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    .line 60
    .end local v19    # "postFix":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/S3Uploader;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v14

    .line 61
    .local v14, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v20, 0x0

    .line 62
    .local v20, "response":Lorg/apache/http/HttpResponse;
    const/16 v21, 0x0

    .line 64
    .local v21, "serverResponse":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v8

    .line 67
    .local v8, "bytes":[B
    const/4 v2, 0x1

    new-array v13, v2, [Lcom/avos/avoscloud/AVException;

    .line 68
    .local v13, "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const-string v3, "s3"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/S3Uploader$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13}, Lcom/avos/avoscloud/S3Uploader$1;-><init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 79
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v13, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-nez v21, :cond_1

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    :try_start_1
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 169
    .end local v8    # "bytes":[B
    .end local v13    # "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    :cond_1
    :goto_0
    return-object v2

    .line 83
    .restart local v8    # "bytes":[B
    .restart local v13    # "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/S3Uploader;->getS3Link(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const-string v3, "files"

    invoke-direct/range {p0 .. p0}, Lcom/avos/avoscloud/S3Uploader;->getParametersForUrulu()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/avos/avoscloud/S3Uploader$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/avos/avoscloud/S3Uploader$2;-><init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 99
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, v13, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    if-nez v21, :cond_1

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    :try_start_3
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    goto :goto_0

    .line 102
    :cond_3
    :try_start_4
    new-instance v15, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v15}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 103
    .local v15, "httpContext":Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://avos-cloud.s3.amazonaws.com/"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    new-instance v17, Lcom/avos/avoscloud/AVMultiPartEntity;

    new-instance v2, Lcom/avos/avoscloud/S3Uploader$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/S3Uploader$3;-><init>(Lcom/avos/avoscloud/S3Uploader;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/AVMultiPartEntity;-><init>(Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V

    .line 124
    .local v17, "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 126
    .local v9, "charset":Ljava/nio/charset/Charset;
    const-string v2, "acl"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v4, "public-read"

    invoke-direct {v3, v4, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 127
    const-string v2, "key"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 130
    const-string v2, "file"

    new-instance v3, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-direct {v3, v8, v4}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 131
    invoke-virtual/range {v17 .. v17}, Lcom/avos/avoscloud/AVMultiPartEntity;->getContentLength()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/avos/avoscloud/S3Uploader;->totalSize:J

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 135
    invoke-virtual/range {v17 .. v17}, Lcom/avos/avoscloud/AVMultiPartEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, "contentType":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/S3Uploader;->RFC822FormatStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Authorization"

    const-string v4, "POST"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/avos/avoscloud/S3Uploader;->authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Date"

    invoke-virtual {v2, v3, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v14, v2, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/S3Uploader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_4

    .line 146
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    .line 147
    invoke-static/range {v21 .. v21}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 148
    const/4 v2, -0x1

    const-string v3, "upload file failure"

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 160
    if-nez v21, :cond_1

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    :try_start_5
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 163
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 150
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    :cond_5
    if-nez v21, :cond_6

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 162
    :try_start_7
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 168
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/S3Uploader;->closeExpiredConnections()V

    .line 169
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 153
    .end local v8    # "bytes":[B
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v13    # "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    .end local v15    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .end local v17    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    .end local v18    # "path":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 154
    .local v12, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    :cond_7
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v12}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 160
    if-nez v21, :cond_1

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    :try_start_9
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 163
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .line 160
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v21, :cond_8

    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 162
    :try_start_a
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 165
    :cond_8
    :goto_2
    throw v2

    .line 163
    :catch_4
    move-exception v3

    goto :goto_2

    .restart local v8    # "bytes":[B
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "dateString":Ljava/lang/String;
    .restart local v13    # "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    .restart local v15    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v17    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    .restart local v18    # "path":Ljava/lang/String;
    :catch_5
    move-exception v2

    goto :goto_1

    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v15    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .end local v17    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    .end local v18    # "path":Ljava/lang/String;
    :catch_6
    move-exception v3

    goto/16 :goto_0
.end method
