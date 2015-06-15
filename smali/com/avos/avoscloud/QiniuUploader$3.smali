.class Lcom/avos/avoscloud/QiniuUploader$3;
.super Ljava/lang/Object;
.source "QiniuUploader.java"

# interfaces
.implements Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->uploadDirectly()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/QiniuUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/QiniuUploader;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$3;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .locals 5
    .param p1, "num"    # J

    .prologue
    .line 370
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$3;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$3;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    iget-object v1, v1, Lcom/avos/avoscloud/QiniuUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    .line 372
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 376
    .end local v0    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$3;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    long-to-float v2, p1

    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader$3;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    iget-wide v3, v3, Lcom/avos/avoscloud/QiniuUploader;->totalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 377
    return-void
.end method
