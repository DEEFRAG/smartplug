.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$5;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel:4008713766"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
