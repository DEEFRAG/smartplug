.class Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;
.super Ljava/lang/Object;
.source "NightLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/NightLightActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isGetInfoOk:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$17(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->addLightTimer()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$18(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    goto :goto_0
.end method
