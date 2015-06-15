.class Lcom/avos/avoscloud/QiniuUploader$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->fetchUploadBucket()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/QiniuUploader;

.field final synthetic val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/QiniuUploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$4;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    iput-object p2, p0, Lcom/avos/avoscloud/QiniuUploader$4;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$4;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 488
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$4;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$4;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    # invokes: Lcom/avos/avoscloud/QiniuUploader;->handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    invoke-static {v2, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;->access$000(Lcom/avos/avoscloud/QiniuUploader;Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 483
    return-void
.end method
