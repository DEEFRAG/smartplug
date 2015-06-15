.class public Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AccountManagerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# static fields
.field private static final CAMERA_REQUEST_CODE:I = 0x1

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "faceImage.jpg"

.field private static final IMAGE_REQUEST_CODE:I = 0x0

.field private static final RESULT_REQUEST_CODE:I = 0x2


# instance fields
.field private acc_birthday:Landroid/widget/TextView;

.field private acc_birthday_layout:Landroid/widget/RelativeLayout;

.field private acc_head:Landroid/widget/ImageButton;

.field private acc_myid:Landroid/widget/TextView;

.field private acc_myid_layout:Landroid/widget/RelativeLayout;

.field private acc_nickname:Landroid/widget/TextView;

.field private acc_nickname_layout:Landroid/widget/RelativeLayout;

.field private acc_points:Landroid/widget/TextView;

.field private acc_points_layout:Landroid/widget/RelativeLayout;

.field private acc_pwd_layout:Landroid/widget/RelativeLayout;

.field private acc_quit_layout:Landroid/widget/RelativeLayout;

.field private acc_quit_text:Landroid/widget/TextView;

.field private acc_sex_man:Landroid/widget/ImageView;

.field private acc_sex_women:Landroid/widget/ImageView;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field private handler:Landroid/os/Handler;

.field private items:[Ljava/lang/String;

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private userModel:Lcom/kankunit/smartplugcronus/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Select Local Photos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Photos"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->items:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method private initData()V
    .locals 13

    .prologue
    .line 152
    const-string v8, "userface"

    const-string v9, "faceimage"

    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "photoPathString":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 156
    .local v4, "photo":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 157
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 158
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->setAccHead(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    const-string v8, "userinfo"

    const-string v9, "userid"

    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "userid":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/UserDao;->getUserByUserId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/UserModel;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    .line 166
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->getPoints()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Branch"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/UserModel;->getSex()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "sex":Ljava/lang/String;
    const-string v8, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v9, 0x7f020062

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v9, 0x7f020063

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "birthday":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "birthdays":[Ljava/lang/String;
    array-length v8, v1

    if-lez v8, :cond_2

    .line 181
    :try_start_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void

    .line 160
    .end local v0    # "birthday":Ljava/lang/String;
    .end local v1    # "birthdays":[Ljava/lang/String;
    .end local v6    # "sex":Ljava/lang/String;
    .end local v7    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 173
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v6    # "sex":Ljava/lang/String;
    .restart local v7    # "userid":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v9, 0x7f020061

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 174
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v9, 0x7f020064

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 182
    .restart local v0    # "birthday":Ljava/lang/String;
    .restart local v1    # "birthdays":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 183
    .restart local v3    # "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 186
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initView()V
    .locals 2

    .prologue
    const v1, 0x7f070062

    .line 120
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_head:Landroid/widget/ImageButton;

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_head:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_quit_text:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_quit_text:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points_layout:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname_layout:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday_layout:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_pwd_layout:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_pwd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid_layout:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_quit_layout:Landroid/widget/RelativeLayout;

    .line 149
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_quit_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg======"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    const-string v1, "getUserInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v1, "updateUserSex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 214
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 219
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const-string v1, "updateBirthday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 221
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 231
    :try_start_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    const/4 v11, 0x0

    :goto_1
    return v11

    .line 233
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "downMsg ======="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "res"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "string":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 238
    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    .line 240
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v3, "jObject":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "method"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "method":Ljava/lang/String;
    const-string v11, "getUserInfo"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 243
    new-instance v4, Lorg/json/JSONArray;

    const-string v11, "datalist"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_3

    .line 262
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 321
    .end local v2    # "i":I
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v10    # "string":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 247
    .restart local v2    # "i":I
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "msg":Ljava/lang/String;
    .restart local v10    # "string":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 248
    .local v8, "nObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_points:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "points"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "Branch"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_nickname:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "nickname"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "sex"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "sex":Ljava/lang/String;
    const-string v11, "1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020062

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020063

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "birthday"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_myid:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "userid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 255
    .end local v1    # "birthday":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020061

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020064

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 269
    .end local v2    # "i":I
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "nObject":Lorg/json/JSONObject;
    .end local v9    # "sex":Ljava/lang/String;
    .end local v10    # "string":Ljava/lang/String;
    :pswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 270
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "res"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 272
    .restart local v10    # "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 275
    :cond_5
    if-eqz v10, :cond_6

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 276
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 278
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "fail"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 280
    const-string v11, "Modification failed"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 281
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 283
    :cond_8
    const-string v11, "Modified successfully"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "code"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/model/UserModel;->setSex(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/kankunit/smartplugcronus/dao/UserDao;->updateUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 286
    const-string v11, "1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "code"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020062

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020063

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 293
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020061

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020064

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 297
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v10    # "string":Ljava/lang/String;
    :pswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7    # "msg":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "res"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 301
    .restart local v10    # "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_a

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 304
    :cond_a
    if-eqz v10, :cond_b

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 305
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 307
    :cond_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "fail"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 309
    const-string v11, "Modification failed"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 310
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 312
    :cond_d
    const-string v11, "Modified successfully"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "code"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/kankunit/smartplugcronus/dao/UserDao;->updateUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_birthday:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "code"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    :try_start_0
    const-string v3, "userinfo"

    const-string v4, "userid"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "userid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 474
    .end local v16    # "userid":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-void

    .line 336
    .restart local v16    # "userid":Ljava/lang/String;
    :pswitch_1
    new-instance v11, Landroid/content/Intent;

    const-class v3, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v11, "it":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v11, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 339
    const-string v3, "KSmartLoginInfo"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    const-string v3, "userinfo"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v11    # "it":Landroid/content/Intent;
    .end local v16    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 472
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "userid":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loading"

    const/16 v6, 0x2ee0

    new-instance v17, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$1;

    invoke-direct/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v6, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 349
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v14, "paramObject":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 351
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sex"

    const-string v4, "1"

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v3, "userid"

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v3, "params"

    invoke-virtual {v12, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v3, "method"

    const-string v4, "updateUserSex"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JsonObject================="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    goto/16 :goto_0

    .line 359
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "paramObject":Lorg/json/JSONObject;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loading"

    const/16 v6, 0x2ee0

    new-instance v17, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$2;

    invoke-direct/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v6, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 365
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .restart local v14    # "paramObject":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 367
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sex"

    const-string v4, "0"

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v3, "userid"

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v3, "params"

    invoke-virtual {v12, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v3, "method"

    const-string v4, "updateUserSex"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "JsonObject================="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    goto/16 :goto_0

    .line 378
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "paramObject":Lorg/json/JSONObject;
    :pswitch_4
    new-instance v11, Landroid/content/Intent;

    const-class v3, Lcom/kankunit/smartplugcronus/view/UpdateNicknameActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .restart local v11    # "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 385
    .end local v11    # "it":Landroid/content/Intent;
    :pswitch_5
    new-instance v11, Landroid/content/Intent;

    const-class v3, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .restart local v11    # "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    .end local v11    # "it":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "birthday":Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 394
    .local v9, "date":Ljava/util/Date;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v15, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 395
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v8, :cond_0

    const-string v3, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    :cond_0
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 398
    :cond_1
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 399
    .local v5, "year":I
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 400
    .local v13, "month":I
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 401
    .local v7, "day":I
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;Ljava/lang/String;)V

    .line 425
    add-int/lit8 v6, v13, -0x1

    move-object/from16 v3, p0

    .line 401
    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 426
    .local v2, "datePicker":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 430
    .end local v2    # "datePicker":Landroid/app/DatePickerDialog;
    .end local v5    # "year":I
    .end local v7    # "day":I
    .end local v8    # "birthday":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v13    # "month":I
    .end local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :pswitch_7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Set Avatar"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->items:[Ljava/lang/String;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 460
    const-string v4, "Cancel"

    new-instance v6, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x7f07005d
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 92
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 94
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->setContentView(I)V

    .line 96
    const v2, 0x7f07004f

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, "deviceList_title":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const v2, 0x7f07004e

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 99
    .local v0, "about_back":Landroid/widget/ImageButton;
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->handler:Landroid/os/Handler;

    .line 104
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 105
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->initView()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->finish()V

    .line 87
    :cond_0
    return v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 117
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->initData()V

    .line 111
    sget-object v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->nickname:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 113
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public setAccHead(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->acc_head:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    return-void
.end method
