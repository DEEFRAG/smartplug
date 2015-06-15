.class Lcom/kankunit/smartplugcronus/fragment/FAQFragment$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 63
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 65
    return-void
.end method
