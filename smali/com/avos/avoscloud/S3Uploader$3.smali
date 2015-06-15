.class Lcom/avos/avoscloud/S3Uploader$3;
.super Ljava/lang/Object;
.source "S3Uploader.java"

# interfaces
.implements Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/S3Uploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/S3Uploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/S3Uploader;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/avos/avoscloud/S3Uploader$3;->this$0:Lcom/avos/avoscloud/S3Uploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .locals 5
    .param p1, "num"    # J

    .prologue
    .line 109
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader$3;->this$0:Lcom/avos/avoscloud/S3Uploader;

    invoke-virtual {v1}, Lcom/avos/avoscloud/S3Uploader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader$3;->this$0:Lcom/avos/avoscloud/S3Uploader;

    iget-object v1, v1, Lcom/avos/avoscloud/S3Uploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    .line 111
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 116
    .end local v0    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader$3;->this$0:Lcom/avos/avoscloud/S3Uploader;

    long-to-float v2, p1

    iget-object v3, p0, Lcom/avos/avoscloud/S3Uploader$3;->this$0:Lcom/avos/avoscloud/S3Uploader;

    iget-wide v3, v3, Lcom/avos/avoscloud/S3Uploader;->totalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/S3Uploader;->publishProgress(I)V

    .line 117
    return-void
.end method
