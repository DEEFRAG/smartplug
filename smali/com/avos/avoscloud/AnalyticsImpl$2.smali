.class Lcom/avos/avoscloud/AnalyticsImpl$2;
.super Ljava/lang/Thread;
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
.field final synthetic this$0:Lcom/avos/avoscloud/AnalyticsImpl;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AnalyticsImpl;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl$2;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$2;->this$0:Lcom/avos/avoscloud/AnalyticsImpl;

    new-instance v1, Lcom/avos/avoscloud/AnalyticsImpl$2$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl$2$1;-><init>(Lcom/avos/avoscloud/AnalyticsImpl$2;)V

    # setter for: Lcom/avos/avoscloud/AnalyticsImpl;->reportHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->access$002(Lcom/avos/avoscloud/AnalyticsImpl;Landroid/os/Handler;)Landroid/os/Handler;

    .line 124
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 125
    return-void
.end method
