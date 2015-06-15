.class public Lorg/videolan/vlc/gui/expandable/TimeSleep;
.super Lorg/videolan/vlc/widget/ExpandableLayout;
.source "TimeSleep.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/TimeSleep"

.field private static mTime:Ljava/util/Calendar;


# instance fields
.field private final mHourWheel:Lkankan/wheel/widget/WheelView;

.field private final mMinWheel:Lkankan/wheel/widget/WheelView;

.field private mOnCancelListener:Landroid/view/View$OnClickListener;

.field private mOnOkListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v3, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;-><init>(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mOnOkListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v3, Lorg/videolan/vlc/gui/expandable/TimeSleep$2;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/expandable/TimeSleep$2;-><init>(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mOnCancelListener:Landroid/view/View$OnClickListener;

    .line 52
    const v3, 0x7f0c0061

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setTitle(I)V

    .line 53
    const v3, 0x7f010086

    invoke-static {p1, v3}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setIcon(I)V

    .line 54
    const v3, 0x7f03006f

    invoke-virtual {p0, p1, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setContent(Landroid/content/Context;I)V

    .line 56
    const v3, 0x7f0701de

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lkankan/wheel/widget/WheelView;

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;

    .line 57
    const v3, 0x7f0701e0

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lkankan/wheel/widget/WheelView;

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;

    .line 58
    const v3, 0x7f07013e

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, "okButton":Landroid/widget/Button;
    const v3, 0x7f0701e6

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;

    new-instance v4, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    const/16 v5, 0x17

    const-string v6, "%02d"

    invoke-direct {v4, p1, v7, v5, v6}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 62
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v8}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 63
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;

    new-instance v4, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    const/16 v5, 0x3b

    const-string v6, "%02d"

    invoke-direct {v4, p1, v7, v5, v6}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 64
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v8}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 65
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mOnOkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mOnCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object v3, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    sget-object v3, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v3, 0x0

    sput-object v3, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    .line 70
    :cond_0
    sget-object v3, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    if-eqz v3, :cond_1

    sget-object v0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    .line 71
    .local v0, "c":Ljava/util/Calendar;
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 72
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 73
    invoke-direct {p0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setText()V

    .line 74
    return-void

    .line 70
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/expandable/TimeSleep;)Lkankan/wheel/widget/WheelView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/expandable/TimeSleep;)Lkankan/wheel/widget/WheelView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setText()V

    return-void
.end method

.method public static cancelSleep(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setSleep(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 122
    return-void
.end method

.method public static setSleep(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x0

    .line 105
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 106
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.videolan.vlc.SleepIntent"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 109
    .local v2, "sleepPendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 111
    const-string v3, "VLC/TimeSleep"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VLC will sleep at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    sput-object p1, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    .line 118
    return-void

    .line 114
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 115
    const-string v3, "VLC/TimeSleep"

    const-string v4, "Sleep cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setText()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sget-object v1, Lorg/videolan/vlc/gui/expandable/TimeSleep;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setText(Ljava/lang/String;)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
