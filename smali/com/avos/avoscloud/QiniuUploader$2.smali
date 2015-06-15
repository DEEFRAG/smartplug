.class Lcom/avos/avoscloud/QiniuUploader$2;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/QiniuUploader;

.field final synthetic val$blockOffset:I

.field final synthetic val$chunkData:Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

.field final synthetic val$data:[B

.field final synthetic val$nextChunkSize:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/QiniuUploader;I[BILcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$2;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    iput p2, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$nextChunkSize:I

    iput-object p3, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$data:[B

    iput p4, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$blockOffset:I

    iput-object p5, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$chunkData:Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$nextChunkSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$nextChunkSize:I

    new-array v0, v1, [B

    .line 251
    .local v0, "ret":[B
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$data:[B

    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$blockOffset:I

    const/high16 v3, 0x400000

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$chunkData:Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    iget v3, v3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/avos/avoscloud/QiniuUploader$2;->val$nextChunkSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 254
    return-void
.end method
