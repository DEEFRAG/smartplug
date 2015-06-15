.class public Lcom/kankunit/smartplugcronus/util/HMTitleUtil;
.super Ljava/lang/Object;
.source "HMTitleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "scene_control_menu"    # Landroid/widget/ImageButton;
    .param p3, "context"    # Landroid/app/Activity;

    .prologue
    .line 15
    const v3, 0x7f070077

    invoke-virtual {p3, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 16
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v3, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$1;

    invoke-direct {v3, p3}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v3, 0x7f070076

    invoke-virtual {p3, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 24
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$2;

    invoke-direct {v3, p3}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    const v3, 0x7f070078

    invoke-virtual {p3, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 32
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 33
    new-instance v3, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$3;

    invoke-direct {v3, p1, p3, p2}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$3;-><init>(Landroid/widget/PopupWindow;Landroid/app/Activity;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const/4 v3, 0x1

    return v3
.end method
