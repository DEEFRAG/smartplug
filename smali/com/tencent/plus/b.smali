.class Lcom/tencent/plus/b;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    .line 284
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 285
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;)V
    .locals 5

    .prologue
    .line 288
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "com.tencent.plus.blue_normal.png"

    invoke-static {v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "com.tencent.plus.blue_down.png"

    invoke-static {v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v4, "com.tencent.plus.blue_disable.png"

    invoke-static {v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 294
    sget-object v4, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 295
    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 296
    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 297
    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method public b(Landroid/widget/Button;)V
    .locals 5

    .prologue
    .line 303
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "com.tencent.plus.gray_normal.png"

    invoke-static {v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "com.tencent.plus.gray_down.png"

    invoke-static {v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 307
    iget-object v3, p0, Lcom/tencent/plus/b;->a:Lcom/tencent/plus/ImageActivity;

    const-string v4, "com.tencent.plus.gray_disable.png"

    invoke-static {v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 309
    sget-object v4, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 310
    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 311
    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 312
    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 313
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method
