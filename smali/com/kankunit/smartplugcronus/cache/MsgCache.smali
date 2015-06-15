.class public Lcom/kankunit/smartplugcronus/cache/MsgCache;
.super Ljava/lang/Object;
.source "MsgCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private msgalertday:Landroid/widget/TextView;

.field private msgalerthour:Landroid/widget/TextView;

.field private msgalerticon:Landroid/widget/ImageButton;

.field private msgalerttxt:Landroid/widget/TextView;

.field private msggrouplabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public getMsgAlertDay()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalertday:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalertday:Landroid/widget/TextView;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalertday:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsgAlertHour()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerthour:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerthour:Landroid/widget/TextView;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerthour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsgAlertIcon()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerticon:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerticon:Landroid/widget/ImageButton;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerticon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMsgAlertTxt()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerttxt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerttxt:Landroid/widget/TextView;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msgalerttxt:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsggrouplabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msggrouplabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msggrouplabel:Landroid/widget/TextView;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MsgCache;->msggrouplabel:Landroid/widget/TextView;

    return-object v0
.end method
