.class Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "x"

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 233
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 235
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 236
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 239
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->closeAirControl()V

    .line 241
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 242
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 243
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const/16 v4, 0x19

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 244
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iput-boolean v5, v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    .line 245
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3, v5}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendOpenClose(Z)V

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    .line 254
    return-void

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->openAirControl()V

    .line 248
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 249
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V

    .line 250
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    iput-boolean v6, v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    .line 251
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->sendOpenClose(Z)V

    goto :goto_0
.end method
