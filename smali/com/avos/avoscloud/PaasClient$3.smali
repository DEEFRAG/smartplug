.class Lcom/avos/avoscloud/PaasClient$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$absolutURLString:Ljava/lang/String;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$lastModify:Ljava/lang/String;

.field final synthetic val$maxAgeInMilliseconds:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$3;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/PaasClient$3;->val$absolutURLString:Ljava/lang/String;

    iput-wide p4, p0, Lcom/avos/avoscloud/PaasClient$3;->val$maxAgeInMilliseconds:J

    iput-object p6, p0, Lcom/avos/avoscloud/PaasClient$3;->val$lastModify:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$3;->val$absolutURLString:Ljava/lang/String;

    iget-wide v2, p0, Lcom/avos/avoscloud/PaasClient$3;->val$maxAgeInMilliseconds:J

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$3;->val$lastModify:Ljava/lang/String;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 387
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 381
    return-void
.end method
