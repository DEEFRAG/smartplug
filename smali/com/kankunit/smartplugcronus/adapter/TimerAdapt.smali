.class public Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;
.super Landroid/widget/ArrayAdapter;
.source "TimerAdapt.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static isOpen:[Z

.field public static isSwitchClick:Z


# instance fields
.field private asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

.field private backMsg:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private commonMap:Ljava/util/Map;

.field private context:Lcom/kankunit/smartplugcronus/view/TimerActivity;

.field private datelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private index:I

.field private isDirect:Z

.field private listView:Landroid/widget/ListView;

.field private mac:Ljava/lang/String;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pwd:Ljava/lang/String;

.field tempImage:Landroid/graphics/drawable/Drawable;

.field private userip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Z

    sput-object v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;Ljava/util/ArrayList;Landroid/widget/ListView;[ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/kankunit/smartplugcronus/view/TimerActivity;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "isOpen"    # [Z
    .param p5, "mac"    # Ljava/lang/String;
    .param p6, "pwd"    # Ljava/lang/String;
    .param p7, "isDirect"    # Z
    .param p8, "userip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kankunit/smartplugcronus/view/TimerActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/widget/ListView;",
            "[Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "ml1Ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 71
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->listView:Landroid/widget/ListView;

    .line 72
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->datelist:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    .line 74
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    .line 75
    sput-object p4, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->handler:Landroid/os/Handler;

    .line 77
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->pwd:Ljava/lang/String;

    .line 79
    iput-boolean p7, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isDirect:Z

    .line 80
    iput-object p8, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->userip:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->index:I

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isDirect:Z

    return v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->userip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()[Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-direct/range {p0 .. p8}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method private getCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closeTime"    # Ljava/lang/String;
    .param p3, "timerid"    # Ljava/lang/String;
    .param p4, "repart"    # Ljava/lang/String;
    .param p5, "isOpen"    # Z
    .param p6, "openen"    # Ljava/lang/String;
    .param p7, "closeen"    # Ljava/lang/String;
    .param p8, "userMac"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alarm#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_0

    const-string v1, "y"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "cmd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wan_phone%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->pwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set%timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 286
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v1, "n"

    goto :goto_0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 0
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    .line 101
    .local v9, "activity":Landroid/app/Activity;
    move-object/from16 v18, p2

    .line 103
    .local v18, "rowView":Landroid/view/View;
    if-nez v18, :cond_1

    .line 104
    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 105
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300e5

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 107
    new-instance v19, Lcom/kankunit/smartplugcronus/cache/TimerCache;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/cache/TimerCache;-><init>(Landroid/view/View;)V

    .line 108
    .local v19, "timerCache":Lcom/kankunit/smartplugcronus/cache/TimerCache;
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 113
    .local v6, "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->commonMap:Ljava/util/Map;

    .line 115
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getOnTime()Landroid/widget/TextView;

    move-result-object v14

    .line 116
    .local v14, "onTime":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getClose_realtime()Landroid/widget/TextView;

    move-result-object v11

    .line 117
    .local v11, "close_realtime":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getOpen_realtime()Landroid/widget/TextView;

    move-result-object v16

    .line 118
    .local v16, "open_realtime":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getOffTime()Landroid/widget/TextView;

    move-result-object v13

    .line 119
    .local v13, "offTime":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getOpenText()Landroid/widget/TextView;

    move-result-object v15

    .line 120
    .local v15, "openText":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getCloseText()Landroid/widget/TextView;

    move-result-object v10

    .line 121
    .local v10, "closeText":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getRepeat_date()Landroid/widget/TextView;

    move-result-object v17

    .line 122
    .local v17, "repart_data":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getTimerid()Landroid/widget/TextView;

    move-result-object v21

    .line 123
    .local v21, "timerid":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getOpenen()Landroid/widget/TextView;

    move-result-object v7

    .line 124
    .local v7, "openen":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getCloseen()Landroid/widget/TextView;

    move-result-object v8

    .line 125
    .local v8, "closeen":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getTimer_img()Landroid/widget/ImageView;

    move-result-object v20

    .line 127
    .local v20, "timer_img":Landroid/widget/ImageView;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/cache/TimerCache;->getTimeset_en()Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v5

    .line 129
    .local v5, "state":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 144
    .local v4, "idint":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 145
    const v2, 0x7f0203d0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close_realtime"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open_realtime"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnTime"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offTime"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timerid"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemInfo_opentime_en"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemInfo_closetime_en"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repart_data"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getRepart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;-><init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/Integer;Lcom/kankunit/smartplugcronus/customview/SwitchButton;Ljava/util/Map;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 269
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    .line 270
    sget-object v2, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    .line 271
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 276
    :cond_0
    :goto_2
    return-object v18

    .line 110
    .end local v4    # "idint":Ljava/lang/Integer;
    .end local v5    # "state":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .end local v6    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "openen":Landroid/widget/TextView;
    .end local v8    # "closeen":Landroid/widget/TextView;
    .end local v10    # "closeText":Landroid/widget/TextView;
    .end local v11    # "close_realtime":Landroid/widget/TextView;
    .end local v13    # "offTime":Landroid/widget/TextView;
    .end local v14    # "onTime":Landroid/widget/TextView;
    .end local v15    # "openText":Landroid/widget/TextView;
    .end local v16    # "open_realtime":Landroid/widget/TextView;
    .end local v17    # "repart_data":Landroid/widget/TextView;
    .end local v19    # "timerCache":Lcom/kankunit/smartplugcronus/cache/TimerCache;
    .end local v20    # "timer_img":Landroid/widget/ImageView;
    .end local v21    # "timerid":Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kankunit/smartplugcronus/cache/TimerCache;

    .restart local v19    # "timerCache":Lcom/kankunit/smartplugcronus/cache/TimerCache;
    goto/16 :goto_0

    .line 146
    .restart local v4    # "idint":Ljava/lang/Integer;
    .restart local v5    # "state":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .restart local v6    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "openen":Landroid/widget/TextView;
    .restart local v8    # "closeen":Landroid/widget/TextView;
    .restart local v10    # "closeText":Landroid/widget/TextView;
    .restart local v11    # "close_realtime":Landroid/widget/TextView;
    .restart local v13    # "offTime":Landroid/widget/TextView;
    .restart local v14    # "onTime":Landroid/widget/TextView;
    .restart local v15    # "openText":Landroid/widget/TextView;
    .restart local v16    # "open_realtime":Landroid/widget/TextView;
    .restart local v17    # "repart_data":Landroid/widget/TextView;
    .restart local v20    # "timer_img":Landroid/widget/ImageView;
    .restart local v21    # "timerid":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 147
    const v2, 0x7f0203d1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 149
    :cond_3
    const v2, 0x7f0203cf

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 273
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 297
    :cond_0
    sget-object v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    iget v1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->index:I

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImgWithUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    .line 86
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)V

    .line 85
    invoke-virtual {v1, p2, v2}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "cachedImage":Landroid/graphics/drawable/Drawable;
    return-void
.end method
