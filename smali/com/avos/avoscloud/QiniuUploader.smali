.class Lcom/avos/avoscloud/QiniuUploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;,
        Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400000

.field private static final CHUNK_SIZE:I = 0x40000

.field private static final DEFAULT_RETRY_TIMES:I = 0x6

.field private static final PROGRESS_COMPLETE:I = 0x64

.field private static final PROGRESS_GET_TOKEN:I = 0xa

.field private static final PROGRESS_UPLOAD_FILE:I = 0x5a

.field private static final QINIU_BRICK_UPLOAD_EP:Ljava/lang/String; = "http://upload.qiniu.com/bput/%s/%d"

.field private static final QINIU_CREATE_BLOCK_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkblk/%d"

.field private static final QINIU_HOST:Ljava/lang/String; = "http://upload.qiniu.com"

.field private static final QINIU_MKFILE_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkfile/%d/key/%s"


# instance fields
.field private blockCount:I

.field private bucket:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uploadFileCtx:[Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/QiniuUploader;Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/QiniuUploader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;->handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method private createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 11
    .param p1, "blockOffset"    # I
    .param p2, "blockSize"    # I
    .param p3, "retry"    # I
    .param p4, "data"    # [B

    .prologue
    .line 176
    :try_start_0
    const-string v7, "try to mkblk"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 177
    const-string v7, "http://upload.qiniu.com/mkblk/%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "endPoint":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    array-length v7, p4

    const/high16 v8, 0x400000

    mul-int/2addr v8, p1

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000

    if-le v7, v8, :cond_0

    const/high16 v5, 0x40000

    .line 183
    .local v5, "nextChunkSize":I
    :goto_0
    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$1;

    invoke-direct {v4, p0, v5, p4, p1}, Lcom/avos/avoscloud/QiniuUploader$1;-><init>(Lcom/avos/avoscloud/QiniuUploader;I[BI)V

    .line 212
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 214
    .local v1, "createBlockResp":Lorg/apache/http/HttpResponse;
    const-class v7, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    invoke-direct {p0, v1, v7}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    .line 223
    .end local v0    # "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v1    # "createBlockResp":Lorg/apache/http/HttpResponse;
    .end local v3    # "endPoint":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "nextChunkSize":I
    :goto_1
    return-object v7

    .line 179
    .restart local v0    # "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "endPoint":Ljava/lang/String;
    :cond_0
    array-length v7, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x400000

    mul-int/2addr v8, p1

    sub-int v5, v7, v8

    goto :goto_0

    .line 215
    .end local v0    # "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "endPoint":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    add-int/lit8 v6, p3, -0x1

    .end local p3    # "retry":I
    .local v6, "retry":I
    if-lez p3, :cond_1

    .line 218
    const/high16 v7, 0x40000

    invoke-direct {p0, p1, v7, v6, p4}, Lcom/avos/avoscloud/QiniuUploader;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v7

    move p3, v6

    .end local v6    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_1

    .line 220
    .end local p3    # "retry":I
    .restart local v6    # "retry":I
    :cond_1
    const-string v7, "Exception during file upload"

    invoke-static {v7, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 223
    const/4 v7, 0x0

    move p3, v6

    .end local v6    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_1
.end method

.method private destroyFileObject()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    :try_start_0
    const-string v1, "_File"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 431
    .local v0, "fileObject":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "fileObject":Lcom/avos/avoscloud/AVObject;
    :cond_0
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/QiniuUploader;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private getGetBucketParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 461
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 462
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 4
    .param p1, "responseStr"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 443
    if-eqz p2, :cond_0

    .line 457
    .end local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :goto_0
    return-object p2

    .line 445
    .restart local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "bucket"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->bucket:Ljava/lang/String;

    .line 447
    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    .line 448
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    new-instance p2, Lcom/avos/avoscloud/AVException;

    .end local p2    # "exception":Lcom/avos/avoscloud/AVException;
    const/4 v2, -0x1

    const-string v3, "No token return for qiniu upload"

    invoke-direct {p2, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Lorg/json/JSONException;
    new-instance p2, Lcom/avos/avoscloud/AVException;

    invoke-direct {p2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 452
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_1
    :try_start_1
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    .locals 12
    .param p1, "dataSize"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    const-string v8, "http://upload.qiniu.com/mkfile/%d/key/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "endPoint":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 303
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    invoke-static {v4, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 304
    const-string v8, ","

    invoke-static {v4, v8}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "joinedFileCtx":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 307
    .local v5, "putRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 309
    invoke-direct {p0, v5}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 310
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-class v8, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    invoke-direct {p0, v6, v8}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1    # "endPoint":Ljava/lang/String;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "joinedFileCtx":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v8

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v7, p3, -0x1

    .end local p3    # "retry":I
    .local v7, "retry":I
    if-lez p3, :cond_0

    .line 313
    invoke-direct {p0, p1, p2, v7}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v8

    move p3, v7

    .end local v7    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0

    .line 315
    .end local p3    # "retry":I
    .restart local v7    # "retry":I
    :cond_0
    const-string v8, "Exception during file upload"

    invoke-static {v8, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 318
    const/4 v8, 0x0

    move p3, v7

    .end local v7    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0
.end method

.method private parseFileKey()V
    .locals 4

    .prologue
    .line 84
    const/16 v2, 0x28

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "idx":I
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 90
    :cond_0
    if-lez v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "postFix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 94
    .end local v1    # "postFix":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "resp"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 324
    .local v0, "code":I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "phrase":Ljava/lang/String;
    const-string v6, "X-Log"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 327
    .local v2, "h":Lorg/apache/http/Header;
    if-nez v2, :cond_0

    const-string v5, ""

    .line 329
    .local v5, "xl":Ljava/lang/String;
    :goto_0
    const/16 v6, 0x191

    if-ne v0, v6, :cond_1

    .line 330
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "unauthorized to create Qiniu Block"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    .end local v5    # "xl":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 332
    .restart local v5    # "xl":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "responseData":Ljava/lang/String;
    div-int/lit8 v6, v0, 0x64

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 334
    invoke-static {v4, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "data":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 338
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 339
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 341
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 342
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    :cond_4
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 21
    .param p1, "blockOffset"    # I
    .param p2, "data"    # [B
    .param p3, "lastChunk"    # Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .param p4, "retry"    # I

    .prologue
    .line 228
    move-object/from16 v0, p2

    array-length v6, v0

    const/high16 v8, 0x400000

    mul-int v8, v8, p1

    sub-int v15, v6, v8

    .line 229
    .local v15, "remainingAllDataLength":I
    const/high16 v6, 0x400000

    if-le v15, v6, :cond_1

    const/high16 v11, 0x400000

    .line 233
    .local v11, "currentBlockLength":I
    :goto_0
    mul-int/lit8 v6, p1, 0x50

    move-object/from16 v0, p0

    iget v8, v0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    div-int/2addr v6, v8

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p3

    iget v8, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    mul-int/lit8 v8, v8, 0x50

    move-object/from16 v0, p0

    iget v9, v0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    mul-int/2addr v9, v11

    div-int/2addr v8, v9

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 235
    move-object/from16 v0, p3

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    sub-int v16, v11, v6

    .line 237
    .local v16, "remainingBlockLength":I
    if-lez v16, :cond_4

    move-object/from16 v0, p3

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-lez v6, :cond_4

    .line 239
    :try_start_0
    const-string v6, "http://upload.qiniu.com/bput/%s/%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, "endPoint":Ljava/lang/String;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v14, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 241
    .local v14, "putRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-virtual {v14, v6, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v10, p3

    .line 243
    .local v10, "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    const/high16 v6, 0x40000

    move/from16 v0, v16

    if-le v0, v6, :cond_2

    const/high16 v7, 0x40000

    .line 246
    .local v7, "nextChunkSize":I
    :goto_1
    new-instance v5, Lcom/avos/avoscloud/QiniuUploader$2;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/avos/avoscloud/QiniuUploader$2;-><init>(Lcom/avos/avoscloud/QiniuUploader;I[BILcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;)V

    .line 276
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v14, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 278
    .local v18, "response":Lorg/apache/http/HttpResponse;
    const-class v6, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    .line 280
    .local v17, "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    if-eqz v17, :cond_4

    .line 281
    move-object/from16 v0, v17

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-ge v6, v11, :cond_0

    .line 282
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 296
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "nextChunkSize":I
    .end local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v13    # "endPoint":Ljava/lang/String;
    .end local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_2
    return-object v17

    .line 229
    .end local v11    # "currentBlockLength":I
    .end local v16    # "remainingBlockLength":I
    :cond_1
    move-object/from16 v0, p2

    array-length v6, v0

    const/high16 v8, 0x400000

    mul-int v8, v8, p1

    sub-int v11, v6, v8

    goto/16 :goto_0

    .restart local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .restart local v11    # "currentBlockLength":I
    .restart local v13    # "endPoint":Ljava/lang/String;
    .restart local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v16    # "remainingBlockLength":I
    :cond_2
    move/from16 v7, v16

    .line 243
    goto :goto_1

    .line 287
    .end local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v13    # "endPoint":Ljava/lang/String;
    .end local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v12

    .line 288
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    add-int/lit8 v19, p4, -0x1

    .end local p4    # "retry":I
    .local v19, "retry":I
    if-lez p4, :cond_3

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v17

    move/from16 p4, v19

    .end local v19    # "retry":I
    .restart local p4    # "retry":I
    goto :goto_2

    .line 292
    .end local p4    # "retry":I
    .restart local v19    # "retry":I
    :cond_3
    const-string v6, "Exception during file upload"

    invoke-static {v6, v12}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move/from16 p4, v19

    .line 296
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "retry":I
    .restart local p4    # "retry":I
    :cond_4
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private uploadDirectly()Lcom/avos/avoscloud/AVException;
    .locals 12

    .prologue
    .line 348
    invoke-static {}, Lcom/avos/avoscloud/QiniuUploader;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    .line 349
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v6, 0x0

    .line 350
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 352
    .local v7, "serverResponse":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 355
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->fetchUploadBucket()Lcom/avos/avoscloud/AVException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 356
    .local v2, "getBucketException":Lcom/avos/avoscloud/AVException;
    if-eqz v2, :cond_1

    .line 414
    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 416
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 424
    .end local v0    # "bytes":[B
    .end local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :cond_0
    :goto_0
    return-object v2

    .line 362
    .restart local v0    # "bytes":[B
    .restart local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :cond_1
    :try_start_2
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 363
    .local v4, "httpContext":Lorg/apache/http/protocol/HttpContext;
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "http://upload.qiniu.com"

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 366
    new-instance v5, Lcom/avos/avoscloud/AVMultiPartEntity;

    new-instance v8, Lcom/avos/avoscloud/QiniuUploader$3;

    invoke-direct {v8, p0}, Lcom/avos/avoscloud/QiniuUploader$3;-><init>(Lcom/avos/avoscloud/QiniuUploader;)V

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVMultiPartEntity;-><init>(Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V

    .line 380
    .local v5, "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    const-string v8, "token"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 385
    const-string v8, "file"

    new-instance v9, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v10}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-direct {v9, v0, v10, v11}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 386
    const-string v8, "key"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Lcom/avos/avoscloud/AVMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 388
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVMultiPartEntity;->getContentLength()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/avos/avoscloud/QiniuUploader;->totalSize:J

    .line 391
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 392
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v3, v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 393
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 397
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_2

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc9

    if-le v8, v9, :cond_3

    .line 399
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 400
    const/4 v8, -0x1

    const-string v9, "upload file failure"

    invoke-static {v8, v9}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 414
    .end local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 416
    :try_start_3
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 402
    .restart local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :cond_3
    :try_start_4
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    iget-object v9, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v11, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    :cond_4
    if-nez v7, :cond_5

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 416
    :try_start_5
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 422
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 424
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 406
    .end local v0    # "bytes":[B
    .end local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .end local v4    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .end local v5    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    :catch_1
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 408
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 410
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 412
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 414
    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 416
    :try_start_7
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 417
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-nez v7, :cond_7

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 416
    :try_start_8
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 419
    :cond_7
    :goto_2
    throw v8

    .line 417
    :catch_3
    move-exception v9

    goto :goto_2

    .restart local v0    # "bytes":[B
    .restart local v2    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .restart local v4    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v5    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v4    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    .end local v5    # "multipartContent":Lcom/avos/avoscloud/AVMultiPartEntity;
    :catch_5
    move-exception v8

    goto/16 :goto_0
.end method

.method private uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    .locals 11

    .prologue
    const/high16 v7, 0x400000

    .line 105
    :try_start_0
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v1

    .line 106
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->fetchUploadBucket()Lcom/avos/avoscloud/AVException;

    move-result-object v4

    .line 107
    .local v4, "getBucketException":Lcom/avos/avoscloud/AVException;
    if-eqz v4, :cond_0

    .line 157
    .end local v1    # "bytes":[B
    .end local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :goto_0
    return-object v4

    .line 110
    .restart local v1    # "bytes":[B
    .restart local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :cond_0
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 111
    array-length v8, v1

    const/high16 v9, 0x400000

    div-int v9, v8, v9

    array-length v8, v1

    const/high16 v10, 0x400000

    rem-int/2addr v8, v10

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    add-int/2addr v8, v9

    iput v8, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    .line 112
    iget v8, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    .line 114
    const/4 v6, 0x0

    .line 115
    .local v6, "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    const/4 v0, 0x0

    .local v0, "blockOffset":I
    :goto_2
    iget v8, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    if-ge v0, v8, :cond_5

    .line 117
    array-length v8, v1

    mul-int v9, v0, v7

    sub-int/2addr v8, v9

    if-le v8, v7, :cond_3

    move v2, v7

    .line 121
    .local v2, "currentBlockSize":I
    :goto_3
    const/4 v8, 0x6

    invoke-direct {p0, v0, v2, v8, v1}, Lcom/avos/avoscloud/QiniuUploader;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_1

    .line 125
    const/4 v8, 0x6

    invoke-direct {p0, v0, v1, v6, v8}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    iget-object v9, v6, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v9, v8, v0

    .line 132
    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0x50

    iget v9, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    .end local v0    # "blockOffset":I
    .end local v2    # "currentBlockSize":I
    .end local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 117
    .restart local v0    # "blockOffset":I
    .restart local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_3
    array-length v8, v1

    mul-int v9, v0, v7

    sub-int v2, v8, v9

    goto :goto_3

    .line 130
    .restart local v2    # "currentBlockSize":I
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Upload File failure"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "blockOffset":I
    .end local v1    # "bytes":[B
    .end local v2    # "currentBlockSize":I
    .end local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .end local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 155
    new-instance v4, Lcom/avos/avoscloud/AVException;

    invoke-direct {v4, v3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "blockOffset":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .restart local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_5
    const/4 v5, 0x0

    .line 138
    .local v5, "mkfileResp":Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    if-eqz v6, :cond_6

    .line 139
    :try_start_1
    array-length v7, v1

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-direct {p0, v7, v8, v9}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v5

    .line 142
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_9

    .line 144
    if-eqz v5, :cond_7

    iget-object v7, v5, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;->key:Ljava/lang/String;

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 145
    :cond_7
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 146
    const/4 v7, -0x1

    const-string v8, "upload file failure"

    invoke-static {v7, v8}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v4

    goto/16 :goto_0

    .line 148
    :cond_8
    iget-object v7, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v9, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->parseFileKey()V

    .line 70
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 72
    .local v0, "bytes":[B
    array-length v2, v0

    const/high16 v3, 0x400000

    if-ge v2, v3, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->uploadDirectly()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    .line 79
    .end local v0    # "bytes":[B
    :goto_0
    return-object v1

    .line 76
    .restart local v0    # "bytes":[B
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 78
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lcom/avos/avoscloud/AVException;
    goto :goto_0
.end method

.method protected fetchUploadBucket()Lcom/avos/avoscloud/AVException;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 477
    new-array v0, v6, [Lcom/avos/avoscloud/AVException;

    .line 478
    .local v0, "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->getUploadPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->getGetBucketParameters()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$4;

    invoke-direct {v4, p0, v0}, Lcom/avos/avoscloud/QiniuUploader$4;-><init>(Lcom/avos/avoscloud/QiniuUploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 490
    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 492
    aget-object v1, v0, v5

    .line 494
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getUploadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    const-string v0, "qiniu"

    return-object v0
.end method
