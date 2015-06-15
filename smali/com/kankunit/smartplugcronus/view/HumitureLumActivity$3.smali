.class Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;
.super Ljava/lang/Object;
.source "HumitureLumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->access$1(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->lum_chat_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->access$2(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->finish()V

    .line 241
    return-void
.end method
