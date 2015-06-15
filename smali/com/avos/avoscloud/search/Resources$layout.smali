.class public Lcom/avos/avoscloud/search/Resources$layout;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static avoscloud_search_actionbar(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "avoscloud_search_actionbar"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_activity(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const-string v0, "avoscloud_search_activity"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_loading(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "avoscloud_search_loading"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_result_item(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "avoscloud_search_result_item"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
