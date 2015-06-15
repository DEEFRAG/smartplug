.class Lcom/kankunit/smartplugcronus/fragment/FAQFragment$4;
.super Ljava/lang/Object;
.source "FAQFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "http://help.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
