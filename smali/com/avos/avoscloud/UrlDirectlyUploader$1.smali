.class Lcom/avos/avoscloud/UrlDirectlyUploader$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "UrlDirectlyUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/UrlDirectlyUploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

.field final synthetic val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/UrlDirectlyUploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iput-object p2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v6, 0x0

    .line 24
    if-nez p2, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iget-object v2, v2, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    const-string v3, "objectId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "objectId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iget-object v5, v5, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    aput-object v3, v2, v6

    goto :goto_0

    .line 33
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0
.end method
