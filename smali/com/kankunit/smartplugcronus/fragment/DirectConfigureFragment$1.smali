.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;
.super Ljava/lang/Object;
.source "DirectConfigureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "directConfigure"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Statistics === direct connect configuration"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    .line 119
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->showConfigureAnimation(Landroid/content/Context;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 121
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->startDirectConfig()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V

    .line 122
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
