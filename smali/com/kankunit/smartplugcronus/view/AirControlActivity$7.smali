.class Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 360
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    if-nez v3, :cond_0

    .line 375
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "x"

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 364
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 366
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 367
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 369
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    const/4 v3, 0x4

    if-le v4, v3, :cond_2

    .line 370
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 373
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendInfraredData()V

    .line 374
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    goto :goto_0
.end method
