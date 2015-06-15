.class Lcom/kankunit/smartplugcronus/view/ScoreActivity$2;
.super Ljava/lang/Object;
.source "ScoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ScoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ScoreActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ScoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ScoreActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ScoreActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "http://jifen.ikonke.com/about"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ScoreActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ScoreActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
