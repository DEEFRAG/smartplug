.class Lcom/avos/avoscloud/AnalyticsImpl$1;
.super Landroid/os/Handler;
.source "AnalyticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AnalyticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasRequestForSend:Z

.field hasRequestSending:Z

.field final synthetic this$0:Lcom/avos/avoscloud/AnalyticsImpl;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AnalyticsImpl;Landroid/os/Looper;)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    iput-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestForSend:Z

    .line 52
    iput-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestSending:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const v3, 0x1241192

    const/4 v2, 0x1

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 58
    :sswitch_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestSending:Z

    if-eqz v1, :cond_1

    .line 60
    iput-boolean v2, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestForSend:Z

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->reportHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->access$000(Lcom/avos/avoscloud/AnalyticsImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    iput-boolean v2, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestSending:Z

    goto :goto_0

    .line 68
    :sswitch_1
    iget-boolean v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestForSend:Z

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    # getter for: Lcom/avos/avoscloud/AnalyticsImpl;->reportHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->access$000(Lcom/avos/avoscloud/AnalyticsImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    iput-boolean v4, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestForSend:Z

    .line 72
    iput-boolean v2, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestSending:Z

    goto :goto_0

    .line 74
    :cond_2
    iput-boolean v4, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->hasRequestSending:Z

    goto :goto_0

    .line 78
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AnalyticsImpl$1;->sendEmptyMessage(I)Z

    .line 79
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->getReportPolicy(Landroid/content/Context;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/ReportPolicy;->SEND_ON_EXIT:Lcom/avos/avoscloud/ReportPolicy;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->getReportPolicy(Landroid/content/Context;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    if-eq v1, v2, :cond_0

    .line 81
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 82
    .local v0, "intervalMessage":Landroid/os/Message;
    const v1, 0x12968c2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$1;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->getSendInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AnalyticsImpl$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x1241192 -> :sswitch_0
        0x12968c2 -> :sswitch_2
        0x13353d2 -> :sswitch_1
    .end sparse-switch
.end method
