.class public Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "AccountManagerFragMent.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# static fields
.field public static final CAMERA_REQUEST_CODE:I = 0x3e6

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "faceImage.jpg"

.field public static final IMAGE_REQUEST_CODE:I = 0x3e5

.field public static final RESULT_REQUEST_CODE:I = 0x3e7


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

.field private parent:Landroid/view/View;

.field private userModel:Lcom/kankunit/smartplugcronus/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Select Local Photos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Photos"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->items:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method private initData()V
    .locals 13

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "userface"

    const-string v10, "faceimage"

    invoke-static {v8, v9, v10}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "photoPathString":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 192
    .local v4, "photo":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 193
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 194
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->setAccHead(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "userinfo"

    const-string v10, "userid"

    invoke-static {v8, v9, v10}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "userid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/kankunit/smartplugcronus/dao/UserDao;->getUserByUserId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/UserModel;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    .line 202
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

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

    .line 203
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/UserModel;->getSex()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
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

    .line 206
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v9, 0x7f020062

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v9, 0x7f020063

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 212
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "birthday":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "birthdays":[Ljava/lang/String;
    array-length v8, v1

    if-lez v8, :cond_2

    .line 217
    :try_start_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->dateFormat:Ljava/text/SimpleDateFormat;

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

    .line 224
    :goto_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void

    .line 196
    .end local v0    # "birthday":Ljava/lang/String;
    .end local v1    # "birthdays":[Ljava/lang/String;
    .end local v6    # "sex":Ljava/lang/String;
    .end local v7    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 197
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v6    # "sex":Ljava/lang/String;
    .restart local v7    # "userid":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v9, 0x7f020061

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v9, 0x7f020064

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 218
    .restart local v0    # "birthday":Ljava/lang/String;
    .restart local v1    # "birthdays":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 219
    .restart local v3    # "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 222
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f070062

    .line 156
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_head:Landroid/widget/ImageButton;

    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_head:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_quit_text:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_quit_text:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points_layout:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname_layout:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday_layout:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_pwd_layout:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_pwd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid_layout:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_quit_layout:Landroid/widget/RelativeLayout;

    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_quit_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 235
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg======"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    const-string v1, "getUserInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v1, "updateUserSex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 245
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 246
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 250
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const-string v1, "updateBirthday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 252
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 253
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 269
    :try_start_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    const/4 v11, 0x0

    :goto_1
    return v11

    .line 271
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "downMsg ======="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
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

    .line 275
    .local v10, "string":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 276
    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    .line 278
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
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

    .line 280
    .local v6, "method":Ljava/lang/String;
    const-string v11, "getUserInfo"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 281
    new-instance v4, Lorg/json/JSONArray;

    const-string v11, "datalist"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_3

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 359
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

    .line 285
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

    .line 286
    .local v8, "nObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_points:Landroid/widget/TextView;

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

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_nickname:Landroid/widget/TextView;

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

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "sex"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
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

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020062

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020063

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
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

    .line 297
    .local v1, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_myid:Landroid/widget/TextView;

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

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 293
    .end local v1    # "birthday":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020061

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020064

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 307
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

    .line 308
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
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

    .line 310
    .restart local v10    # "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 313
    :cond_5
    if-eqz v10, :cond_6

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 314
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 316
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "fail"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "Modification failed"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 319
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 321
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "Modified successfully"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

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

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/UserDao;->updateUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 324
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

    .line 325
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020062

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020063

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 328
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_man:Landroid/widget/ImageView;

    const v12, 0x7f020061

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_sex_women:Landroid/widget/ImageView;

    const v12, 0x7f020064

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 335
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

    .line 336
    .restart local v7    # "msg":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
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

    .line 339
    .restart local v10    # "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v11, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 342
    :cond_a
    if-eqz v10, :cond_b

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 343
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 345
    :cond_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "fail"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "Modification failed"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 348
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 350
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "Modified successfully"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

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

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/UserDao;->updateUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_birthday:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->dateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->dateFormat:Ljava/text/SimpleDateFormat;

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

    .line 354
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "userinfo"

    const-string v6, "userid"

    invoke-static {v3, v4, v6}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 371
    .local v16, "userid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 516
    .end local v16    # "userid":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-void

    .line 374
    .restart local v16    # "userid":Ljava/lang/String;
    :pswitch_1
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    invoke-direct {v11, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v11, "it":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v11, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->startActivity(Landroid/content/Intent;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "KSmartLoginInfo"

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "userinfo"

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v11    # "it":Landroid/content/Intent;
    .end local v16    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 514
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "userid":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/view/ScoreActivity;

    invoke-direct {v11, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .restart local v11    # "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    .end local v11    # "it":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0249

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "loading"

    const/16 v17, 0x2ee0

    new-instance v18, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$4;

    invoke-direct/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v4, v6, v0, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 391
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v14, "paramObject":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sex"

    const-string v4, "1"

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v3, "userid"

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v3, "params"

    invoke-virtual {v12, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v3, "method"

    const-string v4, "updateUserSex"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "JsonObject================="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    goto/16 :goto_0

    .line 401
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "paramObject":Lorg/json/JSONObject;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0249

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "loading"

    const/16 v17, 0x2ee0

    new-instance v18, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$5;

    invoke-direct/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v4, v6, v0, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 407
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .restart local v14    # "paramObject":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sex"

    const-string v4, "0"

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v3, "userid"

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v3, "params"

    invoke-virtual {v12, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v3, "method"

    const-string v4, "updateUserSex"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
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

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    goto/16 :goto_0

    .line 420
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "paramObject":Lorg/json/JSONObject;
    :pswitch_5
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateNicknameActivity;

    invoke-direct {v11, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .restart local v11    # "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 427
    .end local v11    # "it":Landroid/content/Intent;
    :pswitch_6
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    invoke-direct {v11, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .restart local v11    # "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 434
    .end local v11    # "it":Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "birthday":Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 436
    .local v9, "date":Ljava/util/Date;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v15, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 437
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v8, :cond_0

    const-string v3, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    :cond_0
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 440
    :cond_1
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 441
    .local v5, "year":I
    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 442
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

    .line 443
    .local v7, "day":I
    new-instance v2, Landroid/app/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Ljava/lang/String;)V

    .line 467
    add-int/lit8 v6, v13, -0x1

    .line 443
    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 468
    .local v2, "datePicker":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 472
    .end local v2    # "datePicker":Landroid/app/DatePickerDialog;
    .end local v5    # "year":I
    .end local v7    # "day":I
    .end local v8    # "birthday":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v13    # "month":I
    .end local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :pswitch_8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Set Avatar"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->items:[Ljava/lang/String;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 502
    const-string v4, "Cancel"

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$8;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x7f07005d
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 105
    const v5, 0x7f03001b

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    .line 106
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->handler:Landroid/os/Handler;

    .line 107
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 109
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->initView()V

    .line 110
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 111
    .local v4, "shadowlayer":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$1;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 119
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 120
    .local v2, "menuButton":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    .local v3, "set_back":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    const v6, 0x7f07004f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "deviceList_title":Landroid/widget/TextView;
    iget v5, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->accountFlag:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 123
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 125
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_0
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;

    invoke-direct {v5, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;

    invoke-direct {v5, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->parent:Landroid/view/View;

    return-object v5

    .line 127
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->initData()V

    .line 262
    sget-object v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->nickname:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 264
    return-void
.end method

.method public setAccHead(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->acc_head:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 522
    return-void
.end method
