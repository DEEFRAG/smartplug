.class Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$1;
.super Ljava/lang/Object;
.source "ProtectChargeGuildActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v2, "http://chongdian.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
