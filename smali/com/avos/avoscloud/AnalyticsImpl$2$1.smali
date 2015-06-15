.class Lcom/avos/avoscloud/AnalyticsImpl$2$1;
.super Landroid/os/Handler;
.source "AnalyticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AnalyticsImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/AnalyticsImpl$2;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AnalyticsImpl$2;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl$2$1;->this$1:Lcom/avos/avoscloud/AnalyticsImpl$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1241192

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$2$1;->this$1:Lcom/avos/avoscloud/AnalyticsImpl$2;

    iget-object v0, v0, Lcom/avos/avoscloud/AnalyticsImpl$2;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->report(Landroid/content/Context;Z)V

    .line 120
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$2$1;->this$1:Lcom/avos/avoscloud/AnalyticsImpl$2;

    iget-object v0, v0, Lcom/avos/avoscloud/AnalyticsImpl$2;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->reportRequestDispatcher:Landroid/os/Handler;
    invoke-static {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->access$100(Lcom/avos/avoscloud/AnalyticsImpl;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x13353d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    :cond_0
    return-void
.end method
