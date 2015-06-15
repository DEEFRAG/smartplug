.class Lcom/avos/avoscloud/S3Uploader$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "S3Uploader.java"


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

.field final synthetic val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avos/avoscloud/S3Uploader$2;->this$0:Lcom/avos/avoscloud/S3Uploader;

    iput-object p2, p0, Lcom/avos/avoscloud/S3Uploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader$2;->this$0:Lcom/avos/avoscloud/S3Uploader;

    # invokes: Lcom/avos/avoscloud/S3Uploader;->handlePostResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    invoke-static {v2, p1}, Lcom/avos/avoscloud/S3Uploader;->access$100(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    return-void
.end method
