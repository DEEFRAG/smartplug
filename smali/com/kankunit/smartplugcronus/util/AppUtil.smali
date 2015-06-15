.class public Lcom/kankunit/smartplugcronus/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenDispaly(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 23
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 24
    .local v2, "width":I
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 25
    .local v0, "height":I
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v4, 0x1

    aput v0, v1, v4

    .line 26
    .local v1, "result":[I
    return-object v1
.end method
