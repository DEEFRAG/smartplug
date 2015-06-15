.class final Lcom/avos/avoscloud/AVAnalytics$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVAnalytics;->reportError(Landroid/content/Context;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/avos/avoscloud/AVAnalytics$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 338
    # getter for: Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;
    invoke-static {}, Lcom/avos/avoscloud/AVAnalytics;->access$000()Lcom/avos/avoscloud/AnalyticsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->isEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVAnalytics$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/avos/avoscloud/AVAnalytics$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 344
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 328
    # getter for: Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;
    invoke-static {}, Lcom/avos/avoscloud/AVAnalytics;->access$000()Lcom/avos/avoscloud/AnalyticsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->isEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVAnalytics$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/avos/avoscloud/AVAnalytics$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 334
    :cond_1
    return-void
.end method
