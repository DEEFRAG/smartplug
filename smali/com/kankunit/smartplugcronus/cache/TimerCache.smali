.class public Lcom/kankunit/smartplugcronus/cache/TimerCache;
.super Ljava/lang/Object;
.source "TimerCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private closeText:Landroid/widget/TextView;

.field private close_realtime:Landroid/widget/TextView;

.field private closeen:Landroid/widget/TextView;

.field private id:Landroid/widget/TextView;

.field private offTime:Landroid/widget/TextView;

.field private onTime:Landroid/widget/TextView;

.field private openText:Landroid/widget/TextView;

.field private open_realtime:Landroid/widget/TextView;

.field private openen:Landroid/widget/TextView;

.field private repeat_date:Landroid/widget/TextView;

.field private timer_img:Landroid/widget/ImageView;

.field private timer_main_layout:Landroid/widget/LinearLayout;

.field private timerid:Landroid/widget/TextView;

.field private timeset_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    .line 31
    return-void
.end method


# virtual methods
.method public getCloseText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeText:Landroid/widget/TextView;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getClose_realtime()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->close_realtime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->close_realtime:Landroid/widget/TextView;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->close_realtime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCloseen()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeen:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeen:Landroid/widget/TextView;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->closeen:Landroid/widget/TextView;

    return-object v0
.end method

.method public getId()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->id:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f0701d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->id:Landroid/widget/TextView;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->id:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOffTime()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->offTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->offTime:Landroid/widget/TextView;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->offTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOnTime()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->onTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->onTime:Landroid/widget/TextView;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->onTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOpenText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openText:Landroid/widget/TextView;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOpen_realtime()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->open_realtime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->open_realtime:Landroid/widget/TextView;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->open_realtime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOpenen()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openen:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070385

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openen:Landroid/widget/TextView;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->openen:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRepeat_date()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->repeat_date:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->repeat_date:Landroid/widget/TextView;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->repeat_date:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimer_img()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_img:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_img:Landroid/widget/ImageView;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTimer_main_layout()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_main_layout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_main_layout:Landroid/widget/LinearLayout;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timer_main_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTimerid()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timerid:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f070384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timerid:Landroid/widget/TextView;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timerid:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeset_en()Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timeset_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->baseView:Landroid/view/View;

    const v1, 0x7f07038e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timeset_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/TimerCache;->timeset_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    return-object v0
.end method
