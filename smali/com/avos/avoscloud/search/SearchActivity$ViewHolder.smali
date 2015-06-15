.class public Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field openApp:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/avos/avoscloud/search/SearchActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
