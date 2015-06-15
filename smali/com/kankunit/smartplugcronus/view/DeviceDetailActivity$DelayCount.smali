.class Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;
.super Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
.source "DeviceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayCount"
.end annotation


# instance fields
.field private delayState:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;JJLjava/lang/String;)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .param p6, "delayState"    # Ljava/lang/String;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    .line 1238
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;-><init>(JJ)V

    .line 1239
    iput-object p6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->delayState:Ljava/lang/String;

    .line 1240
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1245
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V

    .line 1246
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V

    .line 1248
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1249
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1250
    .local v0, "delay_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1251
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1252
    const-string v2, "y"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->delayState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1253
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1254
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const-string v3, "open"

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1255
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1256
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V

    .line 1263
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1264
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$5(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V

    .line 1266
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1267
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    const-string v3, "==========1138"

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1272
    :goto_1
    return-void

    .line 1258
    :cond_1
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020161

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1259
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1260
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1261
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V

    goto :goto_0

    .line 1270
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 20
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-wide/from16 v0, p1

    invoke-static {v14, v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$7(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;J)V

    .line 1277
    const/16 v13, 0x3e8

    .line 1278
    .local v13, "ss":I
    mul-int/lit8 v8, v13, 0x3c

    .line 1279
    .local v8, "mi":I
    mul-int/lit8 v5, v8, 0x3c

    .line 1280
    .local v5, "hh":I
    mul-int/lit8 v4, v5, 0x18

    .line 1281
    .local v4, "dd":I
    int-to-long v14, v4

    div-long v2, p1, v14

    .line 1282
    .local v2, "day":J
    int-to-long v14, v4

    mul-long/2addr v14, v2

    sub-long v14, p1, v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    div-long v6, v14, v16

    .line 1283
    .local v6, "hour":J
    int-to-long v14, v4

    mul-long/2addr v14, v2

    sub-long v14, p1, v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v16, v16, v6

    sub-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    div-long v9, v14, v16

    .line 1284
    .local v9, "minute":J
    int-to-long v14, v4

    mul-long/2addr v14, v2

    sub-long v14, p1, v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v16, v16, v6

    sub-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    mul-long v16, v16, v9

    sub-long v14, v14, v16

    int-to-long v0, v13

    move-wide/from16 v16, v0

    div-long v11, v14, v16

    .line 1285
    .local v11, "second":J
    const-wide/32 v14, 0xea60

    div-long v14, p1, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 1287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c01fb

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    div-long v16, p1, v16

    const-wide/16 v18, 0x3c

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " minutes after"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "n"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->delayState:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "Shut down"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V

    .line 1292
    :goto_1
    return-void

    .line 1287
    :cond_0
    const-string v14, "Turn on"

    goto :goto_0

    .line 1290
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c01fb

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Seconds"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "n"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->delayState:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "Shut down"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v14, "Turn on"

    goto :goto_2
.end method
