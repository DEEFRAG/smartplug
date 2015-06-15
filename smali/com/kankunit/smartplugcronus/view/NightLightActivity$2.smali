.class Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;
.super Ljava/lang/Object;
.source "NightLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/NightLightActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$3(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->sp:Landroid/media/SoundPool;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$6(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music:I
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$7(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 161
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$8(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "loading"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$9(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 163
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$10(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v12, "close"

    .line 164
    .local v12, "state":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$11(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$12(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%light"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$13(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$11(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$14(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$15(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 168
    .local v0, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 176
    .end local v0    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v2    # "userJID":Ljava/lang/String;
    :goto_1
    return-void

    .line 163
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v12    # "state":Ljava/lang/String;
    :cond_1
    const-string v12, "open"

    goto/16 :goto_0

    .line 170
    .restart local v12    # "state":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$13(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$12(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%light"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "cmd":Ljava/lang/String;
    const-string v5, ""

    .line 172
    .local v5, "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, ""

    .line 173
    .local v6, "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;

    move-result-object v7

    const v8, 0xb156

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$16(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$14(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v3, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto :goto_1
.end method
