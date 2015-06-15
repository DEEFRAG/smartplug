.class public Lcom/kankunit/smartplugcronus/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)Landroid/widget/PopupWindow;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleStr"    # Ljava/lang/String;
    .param p2, "messageStr"    # Ljava/lang/String;
    .param p4, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .local p3, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 20
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 21
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030063

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 22
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/PopupWindow;

    .line 23
    const/4 v6, 0x0

    .line 22
    invoke-direct {v0, v5, v8, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 24
    .local v0, "dialogPop":Landroid/widget/PopupWindow;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 26
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 28
    const v6, 0x7f0701b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 29
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f0701b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, "message":Landroid/widget/TextView;
    const v6, 0x7f0701b2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 32
    .local v1, "dialog_list":Landroid/widget/ListView;
    invoke-virtual {v1, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    return-object v0
.end method
