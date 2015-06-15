.class Lcom/special/ResideMenu/ResideMenu$1;
.super Ljava/lang/Object;
.source "ResideMenu.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/special/ResideMenu/ResideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/special/ResideMenu/ResideMenu;


# direct methods
.method constructor <init>(Lcom/special/ResideMenu/ResideMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 360
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->isOpened:Z
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$0(Lcom/special/ResideMenu/ResideMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$1(Lcom/special/ResideMenu/ResideMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$2(Lcom/special/ResideMenu/ResideMenu;)Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$2(Lcom/special/ResideMenu/ResideMenu;)Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/special/ResideMenu/ResideMenu$OnMenuListener;->closeMenu()V

    .line 355
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->isOpened:Z
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$0(Lcom/special/ResideMenu/ResideMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$1(Lcom/special/ResideMenu/ResideMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$2(Lcom/special/ResideMenu/ResideMenu;)Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu$1;->this$0:Lcom/special/ResideMenu/ResideMenu;

    # getter for: Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    invoke-static {v0}, Lcom/special/ResideMenu/ResideMenu;->access$2(Lcom/special/ResideMenu/ResideMenu;)Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/special/ResideMenu/ResideMenu$OnMenuListener;->openMenu()V

    .line 345
    :cond_0
    return-void
.end method
