.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;
.super Ljava/lang/Object;
.source "DirectConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "configure~~~"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "directConfigure"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Statistics === direct connect configuration"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    iput-boolean v6, v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    .line 150
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 153
    .local v0, "amAnimation":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 155
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 156
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;

    invoke-direct {v3, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 171
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 172
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->startNow()V

    .line 173
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->startDirectConfig()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V

    .line 174
    return-void

    .line 146
    .end local v0    # "amAnimation":Landroid/view/animation/Animation;
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
