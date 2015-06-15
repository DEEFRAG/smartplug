.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;
.super Ljava/lang/Object;
.source "WirelessConfigureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iget-boolean v2, v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    if-nez v2, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "http://bangzhu.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 146
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
