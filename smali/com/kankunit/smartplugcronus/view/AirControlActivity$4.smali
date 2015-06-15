.class Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;
.super Ljava/lang/Object;
.source "AirControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    .line 257
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

    .line 262
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    if-nez v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "x"

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    .local v0, "b":Z
    if-eqz v0, :cond_2

    .line 268
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 269
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 271
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 272
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v6}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 273
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setColdModel()V

    .line 274
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 275
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 279
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v7}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 280
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setHotModel()V

    .line 281
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 282
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto :goto_0

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 286
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v8}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 287
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setAreModel()V

    .line 288
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 289
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto :goto_0

    .line 292
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 293
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v9}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 294
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setVentilateModel()V

    .line 295
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 296
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto/16 :goto_0

    .line 299
    :cond_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 300
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 301
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setAudoModel()V

    .line 302
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 303
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto/16 :goto_0
.end method
