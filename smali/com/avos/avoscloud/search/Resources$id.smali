.class public Lcom/avos/avoscloud/search/Resources$id;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "id"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static avoscloud_search_actionbar_back(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v0, "avoscloud_search_actionbar_back"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_emtpy_result(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v0, "avoscloud_search_emtpy_result"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_result_description(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "avoscloud_search_result_description"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_result_listview(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "avoscloud_search_result_listview"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_result_open_app(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "avoscloud_search_result_open_app"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static avoscloud_search_result_title(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v0, "avoscloud_search_result_title"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/search/Resources;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
