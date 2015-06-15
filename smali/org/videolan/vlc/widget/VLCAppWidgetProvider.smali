.class public Lorg/videolan/vlc/widget/VLCAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "VLCAppWidgetProvider.java"


# static fields
.field public static final ACTION_REMOTE_BACKWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Backward"

.field public static final ACTION_REMOTE_FORWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Forward"

.field public static final ACTION_REMOTE_PLAYPAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.PlayPause"

.field public static final ACTION_REMOTE_STOP:Ljava/lang/String; = "org.videolan.vlc.remote.Stop"

.field public static final ACTION_WIDGET_INIT:Ljava/lang/String; = "org.videolan.vlc.widget.INIT"

.field public static final ACTION_WIDGET_PREFIX:Ljava/lang/String; = "org.videolan.vlc.widget."

.field public static final ACTION_WIDGET_UPDATE:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE"

.field public static final ACTION_WIDGET_UPDATE_COVER:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_COVER"

.field public static final ACTION_WIDGET_UPDATE_POSITION:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_POSITION"

.field public static final START_FROM_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field public static final TAG:Ljava/lang/String; = "VLC/VLCAppWidgetProvider"

.field public static final VLC_MAIN:Ljava/lang/String; = "org.videolan.vlc.gui.MainActivity"

.field public static final VLC_PACKAGE:Ljava/lang/String; = "org.videolan.vlc"

.field public static final VLC_PLAYER:Ljava/lang/String; = "org.videolan.vlc.gui.audio.AudioPlayerActivity"

.field public static final VLC_SERVICE:Ljava/lang/String; = "org.videolan.vlc.AudioService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "action":Ljava/lang/String;
    const-string v25, "org.videolan.vlc.widget."

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 75
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v23, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const v26, 0x7f0300f5

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v23, "views":Landroid/widget/RemoteViews;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isHoneycombOrLater()Z

    move-result v15

    .line 82
    .local v15, "partial":Z
    const-string v25, "org.videolan.vlc.widget.INIT"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    if-nez v15, :cond_2

    .line 84
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v25, "org.videolan.vlc.remote.Backward"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v8, "iBackward":Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    const-string v25, "org.videolan.vlc.remote.PlayPause"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v10, "iPlay":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    const-string v25, "org.videolan.vlc.remote.Stop"

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v11, "iStop":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-string v25, "org.videolan.vlc.remote.Forward"

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "iForward":Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v12, "iVlc":Landroid/content/Intent;
    const-string v25, "org.videolan.vlc"

    const-string v26, "org.videolan.vlc.gui.MainActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v25, "from_notification"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 93
    .local v16, "piBackward":Landroid/app/PendingIntent;
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 94
    .local v18, "piPlay":Landroid/app/PendingIntent;
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 95
    .local v19, "piStop":Landroid/app/PendingIntent;
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 96
    .local v17, "piForward":Landroid/app/PendingIntent;
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 98
    .local v20, "piVlc":Landroid/app/PendingIntent;
    const v25, 0x7f0702f3

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 99
    const v25, 0x7f070118

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 100
    const v25, 0x7f0702f0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 101
    const v25, 0x7f0702ef

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    const v25, 0x7f070106

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    const/4 v15, 0x0

    .line 106
    .end local v8    # "iBackward":Landroid/content/Intent;
    .end local v9    # "iForward":Landroid/content/Intent;
    .end local v10    # "iPlay":Landroid/content/Intent;
    .end local v11    # "iStop":Landroid/content/Intent;
    .end local v12    # "iVlc":Landroid/content/Intent;
    .end local v16    # "piBackward":Landroid/app/PendingIntent;
    .end local v17    # "piForward":Landroid/app/PendingIntent;
    .end local v18    # "piPlay":Landroid/app/PendingIntent;
    .end local v19    # "piStop":Landroid/app/PendingIntent;
    .end local v20    # "piVlc":Landroid/app/PendingIntent;
    :cond_2
    const-string v25, "org.videolan.vlc.widget.UPDATE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 107
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, "title":Ljava/lang/String;
    const-string v25, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "artist":Ljava/lang/String;
    const-string v25, "isplaying"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 111
    .local v13, "isplaying":Z
    const v25, 0x7f0702ee

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    const v25, 0x7f07010a

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    const v26, 0x7f070118

    if-eqz v13, :cond_4

    const v25, 0x7f020243

    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 114
    const v26, 0x7f0703a8

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    const/16 v25, 0x0

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 129
    .end local v6    # "artist":Ljava/lang/String;
    .end local v13    # "isplaying":Z
    .end local v22    # "title":Ljava/lang/String;
    :cond_3
    :goto_3
    new-instance v24, Landroid/content/ComponentName;

    const-class v25, Lorg/videolan/vlc/widget/VLCAppWidgetProvider;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v24, "widget":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 131
    .local v14, "manager":Landroid/appwidget/AppWidgetManager;
    if-eqz v15, :cond_9

    .line 132
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 113
    .end local v14    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v24    # "widget":Landroid/content/ComponentName;
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v13    # "isplaying":Z
    .restart local v22    # "title":Ljava/lang/String;
    :cond_4
    const v25, 0x7f020251

    goto :goto_1

    .line 114
    :cond_5
    const/16 v25, 0x4

    goto :goto_2

    .line 116
    .end local v6    # "artist":Ljava/lang/String;
    .end local v13    # "isplaying":Z
    .end local v22    # "title":Ljava/lang/String;
    :cond_6
    const-string v25, "org.videolan.vlc.widget.UPDATE_COVER"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 117
    const-string v25, "cover"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 118
    .local v7, "cover":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 119
    const v25, 0x7f070106

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 122
    :goto_4
    const v25, 0x7f070114

    const/16 v26, 0x64

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_3

    .line 121
    :cond_7
    const v25, 0x7f070106

    const v26, 0x7f02027a

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 124
    .end local v7    # "cover":Landroid/graphics/Bitmap;
    :cond_8
    const-string v25, "org.videolan.vlc.widget.UPDATE_POSITION"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 125
    const-string v25, "position"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v21

    .line 126
    .local v21, "pos":F
    const v25, 0x7f070114

    const/16 v26, 0x64

    const/high16 v27, 0x42c80000    # 100.0f

    mul-float v27, v27, v21

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_3

    .line 134
    .end local v21    # "pos":F
    .restart local v14    # "manager":Landroid/appwidget/AppWidgetManager;
    .restart local v24    # "widget":Landroid/content/ComponentName;
    :cond_9
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.videolan.vlc.widget.INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lorg/videolan/vlc/widget/VLCAppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.widget.INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
