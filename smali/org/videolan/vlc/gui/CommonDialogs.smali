.class public Lorg/videolan/vlc/gui/CommonDialogs;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/CommonDialogs$MenuType;
    }
.end annotation


# static fields
.field public static final INTENT_GENERIC:I = 0x14

.field public static final INTENT_SPECIFIC:I = 0xa

.field public static final TAG:Ljava/lang/String; = "VLC/CommonDialogs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advancedOptions(Landroid/content/Context;Landroid/view/View;Lorg/videolan/vlc/gui/CommonDialogs$MenuType;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "t"    # Lorg/videolan/vlc/gui/CommonDialogs$MenuType;

    .prologue
    .line 98
    const v13, 0x7f0100a2

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v12

    .line 100
    .local v12, "style":I
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v6, "dialog":Landroid/app/Dialog;
    const v13, 0x7f030031

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 102
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    const v13, 0x7f0700d1

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 106
    .local v3, "advanced_layout":Landroid/widget/LinearLayout;
    new-instance v11, Lorg/videolan/vlc/gui/CommonDialogs$2;

    invoke-direct {v11, v6}, Lorg/videolan/vlc/gui/CommonDialogs$2;-><init>(Landroid/app/Dialog;)V

    .line 112
    .local v11, "mExpandableListener":Lorg/videolan/vlc/interfaces/OnExpandableListener;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-lt v8, v13, :cond_1

    .line 120
    const v13, 0x7f0700d2

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, "add_subtitle":Landroid/widget/TextView;
    const v13, 0x7f0700d3

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 122
    .local v7, "equalizer":Landroid/widget/LinearLayout;
    sget-object v13, Lorg/videolan/vlc/gui/CommonDialogs$MenuType;->Video:Lorg/videolan/vlc/gui/CommonDialogs$MenuType;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 123
    new-instance v13, Lorg/videolan/vlc/gui/CommonDialogs$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lorg/videolan/vlc/gui/CommonDialogs$3;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :goto_1
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v5, v13, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v5, "density":F
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 177
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 178
    const/16 v13, 0x33

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 179
    const/4 v13, 0x2

    new-array v9, v13, [I

    .line 180
    .local v9, "location":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 181
    const/4 v13, 0x0

    aget v13, v9, v13

    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v13, v14

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 182
    const/4 v13, 0x1

    aget v13, v9, v13

    const/high16 v14, 0x42480000    # 50.0f

    mul-float/2addr v14, v5

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    sub-int/2addr v13, v14

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 185
    .end local v9    # "location":[I
    :cond_0
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    return-void

    .line 114
    .end local v2    # "add_subtitle":Landroid/widget/TextView;
    .end local v5    # "density":F
    .end local v7    # "equalizer":Landroid/widget/LinearLayout;
    .end local v10    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/videolan/vlc/widget/ExpandableLayout;

    if-eqz v13, :cond_2

    .line 116
    check-cast v4, Lorg/videolan/vlc/widget/ExpandableLayout;

    .end local v4    # "child":Landroid/view/View;
    invoke-virtual {v4, v11}, Lorg/videolan/vlc/widget/ExpandableLayout;->setOnExpandableListener(Lorg/videolan/vlc/interfaces/OnExpandableListener;)V

    .line 112
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .restart local v2    # "add_subtitle":Landroid/widget/TextView;
    .restart local v7    # "equalizer":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v1, p0

    .line 160
    check-cast v1, Lorg/videolan/vlc/gui/MainActivity;

    .line 161
    .local v1, "activity":Lorg/videolan/vlc/gui/MainActivity;
    new-instance v13, Lorg/videolan/vlc/gui/CommonDialogs$4;

    invoke-direct {v13, v1, v6}, Lorg/videolan/vlc/gui/CommonDialogs$4;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static confirmDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirmationString"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    const v2, 0x1040013

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 93
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public static deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addressMedia"    # Ljava/lang/String;
    .param p2, "runnable"    # Lorg/videolan/vlc/util/VLCRunnable;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "adressMediaUri":Ljava/net/URI;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "adressMediaUri":Ljava/net/URI;
    .local v1, "adressMediaUri":Ljava/net/URI;
    move-object v0, v1

    .line 68
    .end local v1    # "adressMediaUri":Ljava/net/URI;
    .restart local v0    # "adressMediaUri":Ljava/net/URI;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 72
    .local v3, "fileMedia":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 72
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Lorg/videolan/vlc/gui/CommonDialogs$1;

    invoke-direct {v5, v3, p2}, Lorg/videolan/vlc/gui/CommonDialogs$1;-><init>(Ljava/io/File;Lorg/videolan/vlc/util/VLCRunnable;)V

    .line 70
    invoke-static {p0, v4, v5}, Lorg/videolan/vlc/gui/CommonDialogs;->confirmDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 65
    .end local v3    # "fileMedia":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
