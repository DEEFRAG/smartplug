.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$4;
.super Ljava/lang/Object;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "http://www.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
