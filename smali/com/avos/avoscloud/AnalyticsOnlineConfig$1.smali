.class Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AnalyticsOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AnalyticsOnlineConfig;->update(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$updatePolicy:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AnalyticsOnlineConfig;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->val$updatePolicy:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/JSONHelper;->mapFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 49
    .local v3, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "parameters"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 50
    .local v7, "parameters":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 51
    .local v5, "notifyListener":Z
    if-eqz v7, :cond_0

    instance-of v9, v7, Ljava/util/Map;

    if-eqz v9, :cond_0

    .line 52
    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 53
    .local v4, "newConfig":Ljava/util/Map;
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    iget-object v9, v9, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v5, 0x1

    .line 54
    :goto_0
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    iget-object v9, v9, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 55
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    iget-object v9, v9, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 56
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    # getter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->parent:Lcom/avos/avoscloud/AnalyticsImpl;
    invoke-static {v9}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$000(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/AnalyticsImpl;

    move-result-object v9

    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    iget-object v11, v11, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AnalyticsImpl;->notifyOnlineConfigListener(Lorg/json/JSONObject;)V

    .line 58
    .end local v4    # "newConfig":Ljava/util/Map;
    :cond_0
    iget-boolean v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->val$updatePolicy:Z

    if-eqz v9, :cond_3

    .line 59
    const-string v9, "enable"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 60
    .local v1, "enable":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 62
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    # setter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->enableStats:Z
    invoke-static {v9, v10}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$102(Lcom/avos/avoscloud/AnalyticsOnlineConfig;Z)Z

    .line 64
    :cond_1
    const-string v9, "policy"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 65
    .local v8, "policy":Ljava/lang/Number;
    if-eqz v8, :cond_3

    .line 66
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    # getter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;
    invoke-static {v9}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$200(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v6

    .line 67
    .local v6, "oldPolicy":Lcom/avos/avoscloud/ReportPolicy;
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/avos/avoscloud/ReportPolicy;->valueOf(I)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v10

    # setter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;
    invoke-static {v9, v10}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$202(Lcom/avos/avoscloud/AnalyticsOnlineConfig;Lcom/avos/avoscloud/ReportPolicy;)Lcom/avos/avoscloud/ReportPolicy;

    .line 68
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    # getter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;
    invoke-static {v9}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$200(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v9

    if-ne v6, v9, :cond_2

    if-eqz v5, :cond_3

    .line 69
    :cond_2
    iget-object v9, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    # getter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->parent:Lcom/avos/avoscloud/AnalyticsImpl;
    invoke-static {v9}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$000(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/AnalyticsImpl;

    move-result-object v9

    iget-object v10, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;->this$0:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    # getter for: Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;
    invoke-static {v11}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->access$200(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/avos/avoscloud/AnalyticsImpl;->setReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "enable":Ljava/lang/Boolean;
    .end local v3    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "notifyListener":Z
    .end local v6    # "oldPolicy":Lcom/avos/avoscloud/ReportPolicy;
    .end local v7    # "parameters":Ljava/lang/Object;
    .end local v8    # "policy":Ljava/lang/Number;
    :cond_3
    :goto_1
    return-void

    .line 53
    .restart local v3    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "newConfig":Ljava/util/Map;
    .restart local v5    # "notifyListener":Z
    .restart local v7    # "parameters":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 73
    .end local v3    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "newConfig":Ljava/util/Map;
    .end local v5    # "notifyListener":Z
    .end local v7    # "parameters":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
