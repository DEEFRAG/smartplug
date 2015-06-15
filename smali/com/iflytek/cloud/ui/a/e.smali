.class public Lcom/iflytek/cloud/ui/a/e;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/iflytek/cloud/ui/a/c$a;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/e;->a:Lcom/iflytek/cloud/ui/a/c$a;

    iput-boolean v1, p0, Lcom/iflytek/cloud/ui/a/e;->b:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/ui/a/e;->c:Z

    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/ui/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/ui/a/e;->a:Lcom/iflytek/cloud/ui/a/c$a;

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/iflytek/cloud/ui/a/e;->a(Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/e;->a:Lcom/iflytek/cloud/ui/a/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/e;->a:Lcom/iflytek/cloud/ui/a/c$a;

    invoke-interface {v0}, Lcom/iflytek/cloud/ui/a/c$a;->a()V

    :cond_0
    return-void
.end method
