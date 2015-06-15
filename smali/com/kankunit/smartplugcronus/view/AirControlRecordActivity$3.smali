.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;
.super Ljava/lang/Object;
.source "AirControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "function"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addRecordButton(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    if-nez v3, :cond_2

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "x"

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    .local v0, "b":Z
    if-eqz v0, :cond_3

    .line 258
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 259
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 261
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 262
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-static {v3, v6}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 263
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setColdModel()V

    .line 264
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 268
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-static {v3, v7}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 269
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setHotModel()V

    .line 270
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto :goto_0

    .line 273
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 274
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-static {v3, v8}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 275
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setAreModel()V

    .line 276
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto :goto_0

    .line 279
    :cond_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 280
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-static {v3, v9}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 281
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setVentilateModel()V

    .line 282
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto :goto_0

    .line 285
    :cond_7
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 286
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V

    .line 287
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setAudoModel()V

    .line 288
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->sendInfraredData()V

    goto/16 :goto_0
.end method
