.class Lcom/avos/avoscloud/AnalyticsImpl$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AnalyticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AnalyticsImpl;->flushLastSession(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AnalyticsImpl;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AnalyticsImpl;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl$3;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 318
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 319
    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsImpl;->access$200()Ljava/lang/String;

    move-result-object v0

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

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$3;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sendArchivedRequests(Z)V

    .line 322
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 310
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 311
    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsImpl;->access$200()Ljava/lang/String;

    move-result-object v0

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

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$3;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sendArchivedRequests(Z)V

    .line 314
    return-void
.end method
