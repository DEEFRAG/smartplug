.class Lcom/avos/avoscloud/AnalyticsImpl$5;
.super Ljava/util/TimerTask;
.source "AnalyticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AnalyticsImpl;->setAVOnlineConfigureListener(Lcom/avos/avoscloud/AVOnlineConfigureListener;)V
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
    .line 595
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl$5;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$5;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;
    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->access$300(Lcom/avos/avoscloud/AnalyticsImpl;)Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->update(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update online config failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
