.class public Lcom/kankunit/smartplugcronus/cache/MessageCache;
.super Ljava/lang/Object;
.source "MessageCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private msgcontent:Landroid/widget/TextView;

.field private msgicon:Landroid/widget/ImageView;

.field private msgtime:Landroid/widget/TextView;

.field private msgtitle:Landroid/widget/TextView;

.field private weburl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method public getMsgContent()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgcontent:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgcontent:Landroid/widget/TextView;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgcontent:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsgicon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgicon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgicon:Landroid/widget/ImageView;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgicon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMsgtime()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtime:Landroid/widget/TextView;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsgtitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtitle:Landroid/widget/TextView;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->msgtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWeburl()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->weburl:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->baseView:Landroid/view/View;

    const v1, 0x7f0702db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->weburl:Landroid/widget/TextView;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/MessageCache;->weburl:Landroid/widget/TextView;

    return-object v0
.end method
