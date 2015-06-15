.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;
.super Landroid/os/Handler;
.source "SceneControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v7, 0xcc

    const/4 v6, 0x0

    .line 228
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_0

    .line 229
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 231
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v10, :cond_1

    .line 232
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 233
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v4, "Perform complete"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 238
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 239
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v4, "suspension of execution"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 243
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x849

    if-ne v3, v4, :cond_3

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "isDo":Ljava/lang/String;
    if-eqz v0, :cond_26

    const-string v3, "isDo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 247
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 248
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_close:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$29(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$30(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 250
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$31(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 251
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$32(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 252
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$33(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 253
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$34(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 254
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$35(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 269
    .end local v0    # "isDo":Ljava/lang/String;
    :cond_3
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x457

    if-ne v3, v4, :cond_5

    .line 270
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 271
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 274
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 277
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x84a

    if-ne v3, v4, :cond_6

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "needPush":Ljava/lang/String;
    if-eqz v2, :cond_27

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 281
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 287
    .end local v2    # "needPush":Ljava/lang/String;
    :cond_6
    :goto_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_7

    .line 288
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    if-nez v3, :cond_28

    .line 289
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 290
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 305
    :goto_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2b

    .line 306
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$30(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 307
    const v4, 0x7f02038d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 308
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$40(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x99

    .line 309
    const/16 v5, 0xff

    .line 308
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    :goto_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_2c

    .line 317
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$31(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 318
    const v4, 0x7f02038b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 319
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$32(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x99

    .line 320
    const/16 v5, 0xff

    .line 319
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    :goto_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_2d

    .line 328
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$33(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 329
    const v4, 0x7f020396

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 330
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$41(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    .line 331
    const/16 v4, 0x99

    const/16 v5, 0xff

    .line 330
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :goto_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z

    move-result-object v3

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2e

    .line 339
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$34(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 340
    const v4, 0x7f02038f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$42(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    .line 342
    const/16 v4, 0x99

    const/16 v5, 0xff

    .line 341
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    :goto_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_2f

    .line 350
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$35(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 351
    const v4, 0x7f020389

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 352
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$43(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x99

    .line 353
    const/16 v5, 0xff

    .line 352
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    :cond_7
    :goto_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_9

    .line 362
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 363
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 364
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v1

    .line 365
    .local v1, "modelType":I
    if-eq v1, v9, :cond_8

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    .line 366
    const/16 v3, 0xb

    if-eq v1, v3, :cond_8

    const/4 v3, 0x5

    if-eq v1, v3, :cond_8

    .line 367
    const/4 v3, 0x7

    if-eq v1, v3, :cond_8

    const/16 v3, 0x8

    if-eq v1, v3, :cond_8

    .line 368
    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xc

    if-eq v1, v3, :cond_8

    .line 369
    const/16 v3, 0xd

    if-eq v1, v3, :cond_8

    .line 371
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 372
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 375
    .end local v1    # "modelType":I
    :cond_8
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 376
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 377
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    :cond_9
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x70

    if-ne v3, v4, :cond_b

    .line 380
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v1

    .line 382
    .restart local v1    # "modelType":I
    if-eq v1, v9, :cond_a

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    const/16 v3, 0xb

    if-eq v1, v3, :cond_a

    .line 383
    const/4 v3, 0x5

    if-eq v1, v3, :cond_a

    const/4 v3, 0x7

    if-eq v1, v3, :cond_a

    .line 384
    const/16 v3, 0x8

    if-eq v1, v3, :cond_a

    const/16 v3, 0x9

    if-eq v1, v3, :cond_a

    .line 385
    const/16 v3, 0xc

    if-eq v1, v3, :cond_a

    const/16 v3, 0xd

    if-eq v1, v3, :cond_a

    .line 388
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 389
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 390
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 392
    :cond_a
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 393
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 396
    .end local v1    # "modelType":I
    :cond_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1ff

    if-ne v3, v4, :cond_d

    .line 397
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v1

    .line 399
    .restart local v1    # "modelType":I
    if-eq v1, v9, :cond_c

    const/16 v3, 0xa

    if-eq v1, v3, :cond_c

    const/16 v3, 0xb

    if-eq v1, v3, :cond_c

    .line 400
    const/4 v3, 0x5

    if-eq v1, v3, :cond_c

    const/4 v3, 0x7

    if-eq v1, v3, :cond_c

    .line 401
    const/16 v3, 0x8

    if-eq v1, v3, :cond_c

    const/16 v3, 0x9

    if-eq v1, v3, :cond_c

    .line 402
    const/16 v3, 0xc

    if-eq v1, v3, :cond_c

    const/16 v3, 0xd

    if-eq v1, v3, :cond_c

    .line 405
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 406
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->updateUi()V

    .line 409
    :cond_c
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 410
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    .end local v1    # "modelType":I
    :cond_d
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_13

    .line 417
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v10, :cond_f

    .line 418
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, -0x14

    if-eq v3, v4, :cond_e

    .line 419
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 421
    :cond_e
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "°C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_f
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    .line 424
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eqz v3, :cond_10

    .line 425
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 427
    :cond_10
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_11
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v9, :cond_13

    .line 430
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 431
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 433
    :cond_12
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$48(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_13
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_19

    .line 437
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v10, :cond_15

    .line 438
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_14

    .line 439
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 441
    :cond_14
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "°C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_15
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    .line 444
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_16

    .line 445
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 447
    :cond_16
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_17
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v9, :cond_19

    .line 450
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eq v3, v9, :cond_18

    .line 451
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 453
    :cond_18
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$48(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_19
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_1f

    .line 457
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v10, :cond_1b

    .line 458
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, -0x14

    if-eq v3, v4, :cond_1a

    .line 459
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 461
    :cond_1a
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "°C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_1b
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 464
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eqz v3, :cond_1c

    .line 465
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 467
    :cond_1c
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_1d
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v9, :cond_1f

    .line 470
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eqz v3, :cond_1e

    .line 471
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 473
    :cond_1e
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$48(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_1f
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_25

    .line 477
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v10, :cond_21

    .line 478
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_20

    .line 479
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 481
    :cond_20
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "°C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_21
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_23

    .line 484
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_22

    .line 485
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 487
    :cond_22
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_23
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-ne v3, v9, :cond_25

    .line 490
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-eq v3, v9, :cond_24

    .line 491
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 493
    :cond_24
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$48(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_25
    return-void

    .line 258
    .restart local v0    # "isDo":Ljava/lang/String;
    :cond_26
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 259
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_close:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$29(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$30(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 261
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$31(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 262
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$32(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 263
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$33(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 264
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$34(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 265
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$35(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "isDo":Ljava/lang/String;
    .restart local v2    # "needPush":Ljava/lang/String;
    :cond_27
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 292
    .end local v2    # "needPush":Ljava/lang/String;
    :cond_28
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getIsDo()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "isDo":Ljava/lang/String;
    if-eqz v0, :cond_29

    const-string v3, "isDo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 294
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 298
    :goto_8
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v2

    .line 299
    .restart local v2    # "needPush":Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 300
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 296
    .end local v2    # "needPush":Ljava/lang/String;
    :cond_29
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto :goto_8

    .line 302
    .restart local v2    # "needPush":Ljava/lang/String;
    :cond_2a
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 311
    .end local v0    # "isDo":Ljava/lang/String;
    .end local v2    # "needPush":Ljava/lang/String;
    :cond_2b
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$30(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 312
    const v4, 0x7f02038c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$40(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 322
    :cond_2c
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$31(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 323
    const v4, 0x7f02038a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 324
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$32(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 333
    :cond_2d
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$33(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 334
    const v4, 0x7f020395

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 335
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$41(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 344
    :cond_2e
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$34(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 345
    const v4, 0x7f02038e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 346
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$42(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 355
    :cond_2f
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$35(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;

    move-result-object v3

    .line 356
    const v4, 0x7f020388

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 357
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam_text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$43(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7
.end method
