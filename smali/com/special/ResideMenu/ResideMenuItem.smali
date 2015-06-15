.class public Lcom/special/ResideMenu/ResideMenuItem;
.super Landroid/widget/LinearLayout;
.source "ResideMenuItem.java"


# instance fields
.field private iv_icon:Landroid/widget/ImageView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenuItem;->initViews(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "title"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenuItem;->initViews(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenuItem;->initViews(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/special/ResideMenu/R$layout;->residemenu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v1, Lcom/special/ResideMenu/R$id;->iv_icon:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenuItem;->iv_icon:Landroid/widget/ImageView;

    .line 46
    sget v1, Lcom/special/ResideMenu/R$id;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenuItem;->tv_title:Landroid/widget/TextView;

    .line 47
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenuItem;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
