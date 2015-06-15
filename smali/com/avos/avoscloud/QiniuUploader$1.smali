.class Lcom/avos/avoscloud/QiniuUploader$1;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/QiniuUploader;

.field final synthetic val$blockOffset:I

.field final synthetic val$data:[B

.field final synthetic val$nextChunkSize:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/QiniuUploader;I[BI)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$1;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    iput p2, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$nextChunkSize:I

    iput-object p3, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$data:[B

    iput p4, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$blockOffset:I

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
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$nextChunkSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 194
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
    .line 187
    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$nextChunkSize:I

    new-array v0, v1, [B

    .line 188
    .local v0, "ret":[B
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$data:[B

    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$blockOffset:I

    const/high16 v3, 0x400000

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/avos/avoscloud/QiniuUploader$1;->val$nextChunkSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 190
    return-void
.end method
