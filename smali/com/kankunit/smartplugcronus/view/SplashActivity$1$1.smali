.class Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity$1;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 91
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    new-instance v21, Ljava/util/Timer;

    invoke-direct/range {v21 .. v21}, Ljava/util/Timer;-><init>()V

    invoke-static/range {v20 .. v21}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity;Ljava/util/Timer;)V

    .line 92
    new-instance v18, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)V

    .line 103
    .local v18, "timerTast":Ljava/util/TimerTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->timeroutTimer:Ljava/util/Timer;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Ljava/util/Timer;

    move-result-object v20

    const-wide/16 v21, 0xc1c

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    .line 106
    const-string v21, "http://app.ikonke.com/active.json"

    invoke-static/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 105
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->verjson:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SplashActivity;Z)V

    .line 109
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 110
    .local v10, "g":Lcom/google/gson/Gson;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->verjson:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 111
    const-class v21, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    .line 110
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    .line 112
    .local v17, "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    if-eqz v17, :cond_4

    .line 113
    const/4 v11, 0x0

    .line 114
    .local v11, "isShow":Z
    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getIsShow()Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "isShowTime":Ljava/lang/String;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v16, "sdf":Ljava/text/SimpleDateFormat;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v6, v20, v21

    .line 117
    .local v6, "beginTime":Ljava/lang/String;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v9, v20, v21

    .line 118
    .local v9, "endTime":Ljava/lang/String;
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, "nowTime":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/kankunit/smartplugcronus/util/DateUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    .line 120
    .local v5, "beginCompareResult":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/kankunit/smartplugcronus/util/DateUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 121
    .local v8, "endCompareResult":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_1

    .line 122
    const/4 v11, 0x1

    .line 126
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getDownUrl()Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 160
    .end local v5    # "beginCompareResult":I
    .end local v6    # "beginTime":Ljava/lang/String;
    .end local v8    # "endCompareResult":I
    .end local v9    # "endTime":Ljava/lang/String;
    .end local v10    # "g":Lcom/google/gson/Gson;
    .end local v11    # "isShow":Z
    .end local v12    # "isShowTime":Ljava/lang/String;
    .end local v15    # "nowTime":Ljava/lang/String;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .end local v18    # "timerTast":Ljava/util/TimerTask;
    .end local v19    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 124
    .restart local v5    # "beginCompareResult":I
    .restart local v6    # "beginTime":Ljava/lang/String;
    .restart local v8    # "endCompareResult":I
    .restart local v9    # "endTime":Ljava/lang/String;
    .restart local v10    # "g":Lcom/google/gson/Gson;
    .restart local v11    # "isShow":Z
    .restart local v12    # "isShowTime":Ljava/lang/String;
    .restart local v15    # "nowTime":Ljava/lang/String;
    .restart local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v17    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .restart local v18    # "timerTast":Ljava/util/TimerTask;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 130
    .restart local v19    # "url":Ljava/lang/String;
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v4, "bd":Landroid/os/Bundle;
    const-string v20, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v20, "isShow"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    .line 134
    const-class v21, Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    .line 133
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v13, "it":Landroid/content/Intent;
    invoke-virtual {v13, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    .end local v4    # "bd":Landroid/os/Bundle;
    .end local v5    # "beginCompareResult":I
    .end local v6    # "beginTime":Ljava/lang/String;
    .end local v8    # "endCompareResult":I
    .end local v9    # "endTime":Ljava/lang/String;
    .end local v10    # "g":Lcom/google/gson/Gson;
    .end local v11    # "isShow":Z
    .end local v12    # "isShowTime":Ljava/lang/String;
    .end local v13    # "it":Landroid/content/Intent;
    .end local v15    # "nowTime":Ljava/lang/String;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .end local v18    # "timerTast":Ljava/util/TimerTask;
    .end local v19    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 148
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->timeroutTimer:Ljava/util/Timer;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Ljava/util/Timer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Timer;->cancel()V

    .line 150
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    .line 151
    const-class v21, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 150
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v14, "mainIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->finish()V

    .line 154
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v14    # "mainIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z

    move-result v20

    if-eqz v20, :cond_0

    goto/16 :goto_1

    .line 139
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "g":Lcom/google/gson/Gson;
    .restart local v17    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .restart local v18    # "timerTast":Ljava/util/TimerTask;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 142
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    .line 143
    const-class v21, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .restart local v14    # "mainIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-object/from16 v20, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
