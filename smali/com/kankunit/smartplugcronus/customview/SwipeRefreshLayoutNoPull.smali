.class public Lcom/kankunit/smartplugcronus/customview/SwipeRefreshLayoutNoPull;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "SwipeRefreshLayoutNoPull.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public offsetTopAndBottom(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->offsetTopAndBottom(I)V

    .line 18
    return-void
.end method
