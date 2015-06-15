.class Lorg/videolan/vlc/widget/ExpandableLayout$1;
.super Ljava/lang/Object;
.source "ExpandableLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/widget/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/ExpandableLayout;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/ExpandableLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/widget/ExpandableLayout$1;->this$0:Lorg/videolan/vlc/widget/ExpandableLayout;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v1, p0, Lorg/videolan/vlc/widget/ExpandableLayout$1;->this$0:Lorg/videolan/vlc/widget/ExpandableLayout;

    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout$1;->this$0:Lorg/videolan/vlc/widget/ExpandableLayout;

    # getter for: Lorg/videolan/vlc/widget/ExpandableLayout;->mExpanded:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->access$0(Lorg/videolan/vlc/widget/ExpandableLayout;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # invokes: Lorg/videolan/vlc/widget/ExpandableLayout;->setState(Ljava/lang/Boolean;)V
    invoke-static {v1, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->access$1(Lorg/videolan/vlc/widget/ExpandableLayout;Ljava/lang/Boolean;)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
