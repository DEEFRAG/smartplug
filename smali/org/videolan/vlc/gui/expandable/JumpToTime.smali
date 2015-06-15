.class public Lorg/videolan/vlc/gui/expandable/JumpToTime;
.super Lorg/videolan/vlc/widget/ExpandableLayout;
.source "JumpToTime.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/JumpToTime"


# instance fields
.field private final mHourWheel:Lkankan/wheel/widget/WheelView;

.field private final mMinWheel:Lkankan/wheel/widget/WheelView;

.field private mOnOkListener:Landroid/view/View$OnClickListener;

.field private final mSecWheel:Lkankan/wheel/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p2}, Lorg/videolan/vlc/widget/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v12, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;-><init>(Lorg/videolan/vlc/gui/expandable/JumpToTime;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mOnOkListener:Landroid/view/View$OnClickListener;

    .line 49
    const v12, 0x7f0c0063

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->setTitle(I)V

    .line 50
    const v12, 0x7f010087

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->setIcon(I)V

    .line 51
    const v12, 0x7f03006c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->setContent(Landroid/content/Context;I)V

    .line 53
    const v12, 0x7f0701de

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    .line 54
    const v12, 0x7f0701e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;

    .line 55
    const v12, 0x7f0701e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;

    .line 56
    const v12, 0x7f0701df

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 57
    .local v3, "colon":Landroid/view/View;
    const v12, 0x7f07013e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 58
    .local v10, "okButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mOnOkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->isInEditMode()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/videolan/vlc/audio/AudioServiceController;->getTime()I

    move-result v12

    :goto_0
    int-to-long v4, v12

    .line 61
    .local v4, "currentTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->isInEditMode()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/videolan/vlc/audio/AudioServiceController;->getLength()I

    move-result v8

    .line 62
    .local v8, "length":I
    :goto_1
    const-string v12, "GMT"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 65
    .local v2, "c":Ljava/util/Calendar;
    int-to-long v12, v8

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 67
    .local v6, "hours":I
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 68
    .local v9, "minutes":I
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 69
    .local v11, "seconds":I
    const/4 v7, 0x0

    .line 70
    .local v7, "isCyclic":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v12, v7}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    new-instance v14, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    const/4 v15, 0x0

    if-eqz v7, :cond_4

    const/16 v12, 0x17

    :goto_2
    const-string v16, "%02d"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v12, v1}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v13, v14}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;

    if-nez v7, :cond_5

    if-gtz v6, :cond_5

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v12, v7}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;

    new-instance v14, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    const/4 v15, 0x0

    if-eqz v7, :cond_6

    const/16 v12, 0x3b

    :goto_4
    const-string v16, "%02d"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v12, v1}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v13, v14}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;

    if-nez v7, :cond_7

    if-gtz v9, :cond_7

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v12, v7}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;

    new-instance v13, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    const/16 v11, 0x3b

    .end local v11    # "seconds":I
    :cond_0
    const-string v15, "%02d"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14, v11, v15}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v12, v13}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 76
    if-nez v6, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 78
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_1
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;

    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;

    const/16 v13, 0xd

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 86
    return-void

    .line 60
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v4    # "currentTime":J
    .end local v6    # "hours":I
    .end local v7    # "isCyclic":Z
    .end local v8    # "length":I
    .end local v9    # "minutes":I
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 61
    .restart local v4    # "currentTime":J
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .restart local v2    # "c":Ljava/util/Calendar;
    .restart local v6    # "hours":I
    .restart local v7    # "isCyclic":Z
    .restart local v8    # "length":I
    .restart local v9    # "minutes":I
    .restart local v11    # "seconds":I
    :cond_4
    move v12, v6

    .line 71
    goto/16 :goto_2

    .line 72
    :cond_5
    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move v12, v9

    .line 73
    goto :goto_4

    .line 74
    :cond_7
    const/4 v7, 0x1

    goto :goto_5
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method
