.class Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;
.super Ljava/lang/Thread;
.source "HumitureHumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "drawLinThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "count":I
    :goto_0
    const/4 v4, 0x5

    if-lt v1, v4, :cond_1

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 196
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 197
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$3(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void

    .line 182
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 183
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->backmsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$1(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hum"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$2(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mDraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 184
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 188
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
