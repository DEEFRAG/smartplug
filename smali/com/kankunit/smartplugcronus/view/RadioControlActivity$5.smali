.class Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;
.super Ljava/lang/Object;
.source "RadioControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->numLayout:Z

    .line 312
    return-void
.end method
